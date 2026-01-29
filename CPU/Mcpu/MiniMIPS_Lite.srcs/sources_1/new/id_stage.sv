`include "defines.v"

module id_stage(
    // 从取指阶段获得的PC值
    input  wire [`INST_ADDR_BUS]    id_pc_i,
    input  wire [`INST_ADDR_BUS]    id_debug_wb_pc,

    // 从指令存储器读出的指令字
    input  wire [`INST_BUS     ]    id_inst_i,

    // 从通用寄存器堆读出的数据 
    input  wire [`REG_BUS      ]    rd1,
    input  wire [`REG_BUS      ]    rd2,

    // [Forwarding] 来自执行阶段(EXE)的旁路信息
    input  wire                     ex_wreg_i,
    input  wire [`REG_BUS      ]    ex_wd_i,
    input  wire [`REG_ADDR_BUS ]    ex_wa_i,

    // [Forwarding] 来自访存阶段(MEM)的旁路信息
    input  wire                     mem_wreg_i, 
    input  wire [`REG_BUS      ]    mem_wd_i,
    input  wire [`REG_ADDR_BUS ]    mem_wa_i,

    // [新增 Fix 1] 来自写回阶段(WB)的旁路信息 (解决 WB Hazard)
    input  wire                     wb_wreg_i,
    input  wire [`REG_BUS      ]    wb_wd_i,
    input  wire [`REG_ADDR_BUS ]    wb_wa_i,
      
    // 送至执行阶段的译码信息
    output reg  [`ALUTYPE_BUS  ]    id_alutype_o,
    output reg  [`ALUOP_BUS    ]    id_aluop_o,
    output reg  [`REG_ADDR_BUS ]    id_wa_o,
    output reg                      id_wreg_o,

    // 送至执行阶段的源操作数1、源操作数2
    output wire [`REG_BUS      ]    id_src1_o,
    output reg  [`REG_BUS      ]    id_src2_o,
    
    // [新增 Fix 2] 专门用于 Store 指令的数据通道
    output wire [`REG_BUS      ]    id_store_data_o,

    // 送至读通用寄存器堆端口地址
    output wire [`REG_ADDR_BUS ]    ra1,
    output wire [`REG_ADDR_BUS ]    ra2,
    
    output wire [`INST_ADDR_BUS]    debug_wb_pc,
    
    // 输出给 IF 阶段的跳转信号
    output reg                      branch_flag_o,   
    output reg  [`INST_ADDR_BUS]    branch_target_o  
);
    
    // 1. 指令拆解
    wire [`INST_BUS] id_inst = {id_inst_i[7:0], id_inst_i[15:8], id_inst_i[23:16], id_inst_i[31:24]};
    
    wire [5 :0] op   = id_inst[31:26];
    wire [5 :0] func = id_inst[5 : 0];
    wire [4 :0] rd   = id_inst[15:11];
    wire [4 :0] rs   = id_inst[25:21];
    wire [4 :0] rt   = id_inst[20:16];
    wire [4 :0] sa   = id_inst[10: 6];
    wire [15:0] imm  = id_inst[15: 0]; 

    // 2. 指令识别
    // R-Type
    wire inst_add  = (op == 6'b000000) && (func == 6'b100000);
    wire inst_addu = (op == 6'b000000) && (func == 6'b100001); // ADDU
    wire inst_sub  = (op == 6'b000000) && (func == 6'b100010);
    wire inst_and  = (op == 6'b000000) && (func == 6'b100100);
    wire inst_or   = (op == 6'b000000) && (func == 6'b100101);
    wire inst_xor  = (op == 6'b000000) && (func == 6'b100110);
    wire inst_nor  = (op == 6'b000000) && (func == 6'b100111);
    wire inst_slt  = (op == 6'b000000) && (func == 6'b101010);
    wire inst_sll  = (op == 6'b000000) && (func == 6'b000000);
    wire inst_srl  = (op == 6'b000000) && (func == 6'b000010);
    wire inst_sra  = (op == 6'b000000) && (func == 6'b000011);
    wire inst_jalr = (op == 6'b000000) && (func == 6'b001001);

    // I-Type
    wire inst_addi = (op == 6'b001000);
    wire inst_addiu= (op == 6'b001001); // ADDIU
    wire inst_andi = (op == 6'b001100);
    wire inst_ori  = (op == 6'b001101);
    wire inst_xori = (op == 6'b001110);
    wire inst_lui  = (op == 6'b001111);
    wire inst_lw   = (op == 6'b100011);
    wire inst_sw   = (op == 6'b101011);
    wire inst_beq  = (op == 6'b000100);
    wire inst_bne  = (op == 6'b000101);

    // 3. 立即数扩展逻辑
    reg [`REG_BUS] imm_ext;
    always @(*) begin
        if (inst_andi || inst_ori || inst_xori)
            imm_ext = {16'b0, imm};         // 逻辑运算：零扩展
        else if (inst_lui)
            imm_ext = {imm, 16'b0};         // LUI：加载到高位
        else
            imm_ext = {{16{imm[15]}}, imm}; // 算术运算：符号扩展
    end

    // =========================================================
    // [关键新增] 数据前推逻辑 (Data Forwarding Logic) 包含 WB 阶段
    // =========================================================
    reg [`REG_BUS] reg1; 
    reg [`REG_BUS] reg2; 

    // 源操作数 1 (rs) 的前推选择
    // 优先级：EXE阶段 > MEM阶段 > WB阶段 > 寄存器堆
    always @(*) begin
        if ((ex_wreg_i == 1'b1) && (ex_wa_i == rs) && (ex_wa_i != `REG_NOP)) begin
            reg1 = ex_wd_i; // EXE 前推
        end else if ((mem_wreg_i == 1'b1) && (mem_wa_i == rs) && (mem_wa_i != `REG_NOP)) begin
            reg1 = mem_wd_i; // MEM 前推
        end else if ((wb_wreg_i == 1'b1) && (wb_wa_i == rs) && (wb_wa_i != `REG_NOP)) begin
            reg1 = wb_wd_i; // [Fix 1] WB 前推
        end else begin
            reg1 = rd1;     
        end
    end

    // 源操作数 2 (rt) 的前推选择
    always @(*) begin
        if ((ex_wreg_i == 1'b1) && (ex_wa_i == rt) && (ex_wa_i != `REG_NOP)) begin
            reg2 = ex_wd_i;
        end else if ((mem_wreg_i == 1'b1) && (mem_wa_i == rt) && (mem_wa_i != `REG_NOP)) begin
            reg2 = mem_wd_i;
        end else if ((wb_wreg_i == 1'b1) && (wb_wa_i == rt) && (wb_wa_i != `REG_NOP)) begin
            reg2 = wb_wd_i; // [Fix 1] WB 前推
        end else begin
            reg2 = rd2;
        end
    end
    
    // [Fix 2] SW 指令的数据直接使用前推后的 reg2 (rt的值)
    assign id_store_data_o = reg2;
    // =========================================================

    // 4. 跳转地址计算
    wire [`INST_ADDR_BUS] pc_plus_4 = id_pc_i + 4;
    wire [`INST_ADDR_BUS] branch_target_addr = pc_plus_4 + {{14{imm[15]}}, imm, 2'b00}; 
    
    // JALR 跳转目标必须使用前推后的 reg1
    wire [`INST_ADDR_BUS] jump_target_addr   = reg1; 

    // 5. 控制信号生成
    always @(*) begin
        // --- 默认信号设置 ---
        id_alutype_o = `NOP;
        id_aluop_o   = `MINIMIPS32_SLL;
        id_wreg_o    = `WRITE_DISABLE;
        id_wa_o      = rd;      
        id_src2_o    = reg2; // 默认使用 reg2
        
        // 默认不跳转
        branch_flag_o   = `FALSE_V;
        branch_target_o = `ZERO_WORD;

        if (id_inst != `ZERO_WORD) begin
            if (inst_add) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_ADD; id_wa_o = rd;
            end else if (inst_addu) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_ADD; id_wa_o = rd;
            end else if (inst_sub) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_SUBU; id_wa_o = rd;
            end else if (inst_slt) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_SLT; id_wa_o = rd;
            end 
            else if (inst_addi) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_ADDI; id_wa_o = rt; id_src2_o = imm_ext;
            end else if (inst_addiu) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_ADDIU; id_wa_o = rt; id_src2_o = imm_ext;
            end

            else if (inst_and) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `LOGIC; id_aluop_o = `MINIMIPS32_AND; id_wa_o = rd;
            end else if (inst_or) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `LOGIC; id_aluop_o = `MINIMIPS32_ORI; id_wa_o = rd;
            end else if (inst_xor) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `LOGIC; id_aluop_o = `MINIMIPS32_XOR; id_wa_o = rd; 
            end else if (inst_nor) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `LOGIC; id_aluop_o = `MINIMIPS32_NOR; id_wa_o = rd; 
            end
            else if (inst_andi) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `LOGIC; id_aluop_o = `MINIMIPS32_AND; id_wa_o = rt; id_src2_o = imm_ext;
            end else if (inst_ori) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `LOGIC; id_aluop_o = `MINIMIPS32_ORI; id_wa_o = rt; id_src2_o = imm_ext;
            end else if (inst_xori) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `LOGIC; id_aluop_o = `MINIMIPS32_XOR; id_wa_o = rt; id_src2_o = imm_ext;
            end else if (inst_lui) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `LOGIC; id_aluop_o = `MINIMIPS32_LUI; id_wa_o = rt; id_src2_o = imm_ext;
            end 

            else if (inst_sll) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `SHIFT; id_aluop_o = `MINIMIPS32_SLL; id_wa_o = rd; 
            end else if (inst_srl) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `SHIFT; id_aluop_o = `MINIMIPS32_SRL; id_wa_o = rd;
            end
            else if (inst_sra) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `SHIFT; id_aluop_o = `MINIMIPS32_SRA; id_wa_o = rd;
            end

            else if (inst_jalr) begin
                id_wreg_o = `WRITE_ENABLE; 
                id_alutype_o = `JUMP; 
                id_aluop_o = `MINIMIPS32_JALR; 
                id_wa_o = rd; 
                id_src2_o = `ZERO_WORD; 
                branch_flag_o = `TRUE_V;
                branch_target_o = jump_target_addr;
            end
            else if (inst_lw) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_LW; id_wa_o = rt; id_src2_o = imm_ext;
            end else if (inst_sw) begin
                id_wreg_o = `WRITE_DISABLE;id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_SW; id_src2_o = imm_ext;
            end 
            else if (inst_beq) begin
                id_wreg_o = `WRITE_DISABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_SUBU;
                if (reg1 == reg2) begin
                    branch_flag_o = `TRUE_V;
                    branch_target_o = branch_target_addr;
                end
            end else if (inst_bne) begin
                id_wreg_o = `WRITE_DISABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_SUBU; 
                if (reg1 != reg2) begin
                    branch_flag_o = `TRUE_V;
                    branch_target_o = branch_target_addr;
                end
            end
        end
    end

    // 6. 读端口赋值
    assign ra1 = rs;
    assign ra2 = rt;
    
    // 7. 源操作数1 选择逻辑
    assign id_src1_o = (inst_sll | inst_srl | inst_sra) ? {27'b0, sa} : 
                       (inst_jalr)                      ? id_pc_i + 8 : 
                       reg1;
    
    assign debug_wb_pc = id_debug_wb_pc;    

endmodule