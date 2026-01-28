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
      
    // 送至执行阶段的译码信息
    output reg  [`ALUTYPE_BUS  ]    id_alutype_o,
    output reg  [`ALUOP_BUS    ]    id_aluop_o,
    output reg  [`REG_ADDR_BUS ]    id_wa_o,
    output reg                      id_wreg_o,

    // 送至执行阶段的源操作数1、源操作数2
    output wire [`REG_BUS      ]    id_src1_o,
    output reg  [`REG_BUS      ]    id_src2_o,
      
    // 送至读通用寄存器堆端口地址
    output wire [`REG_ADDR_BUS ]    ra1,
    output wire [`REG_ADDR_BUS ]    ra2,
    
    output wire [`INST_ADDR_BUS]    debug_wb_pc,
    
    // [新增] 输出给 IF 阶段的跳转信号
    output reg                      branch_flag_o,   // 是否跳转
    output reg  [`INST_ADDR_BUS]    branch_target_o  // 跳转去哪
);
    
    // 1. 指令拆解
    // [修复] 必须进行字节交换 (Little Endian -> Big Endian)
    wire [`INST_BUS] id_inst = {id_inst_i[7:0], id_inst_i[15:8], id_inst_i[23:16], id_inst_i[31:24]};
    
    wire [5 :0] op   = id_inst[31:26];
    wire [5 :0] func = id_inst[5 : 0];
    wire [4 :0] rd   = id_inst[15:11];
    wire [4 :0] rs   = id_inst[25:21];
    wire [4 :0] rt   = id_inst[20:16];
    wire [4 :0] sa   = id_inst[10: 6];
    wire [15:0] imm  = id_inst[15: 0]; 

    // 2. 指令识别 (Instruction Recognition)
    // ---------------------------------------------
    // R-Type 指令 (Opcode = 000000)
    wire inst_add  = (op == 6'b000000) && (func == 6'b100000);
    wire inst_sub  = (op == 6'b000000) && (func == 6'b100010);
    wire inst_and  = (op == 6'b000000) && (func == 6'b100100);
    wire inst_or   = (op == 6'b000000) && (func == 6'b100101);
    wire inst_xor  = (op == 6'b000000) && (func == 6'b100110);
    wire inst_nor  = (op == 6'b000000) && (func == 6'b100111);
    wire inst_slt  = (op == 6'b000000) && (func == 6'b101010);
    wire inst_sll  = (op == 6'b000000) && (func == 6'b000000);
    wire inst_srl  = (op == 6'b000000) && (func == 6'b000010);
    
    // [随机指令] SRA (算术右移)
    wire inst_sra  = (op == 6'b000000) && (func == 6'b000011);
    
    // [随机指令] JALR (跳转并链接寄存器)
    wire inst_jalr = (op == 6'b000000) && (func == 6'b001001);

    // ---------------------------------------------
    // I-Type 指令
    // [随机指令] ADDI (立即数加法)
    wire inst_addi = (op == 6'b001000);
    
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
            imm_ext = {{16{imm[15]}}, imm}; // 算术运算(addi, lw, sw, beq)：符号扩展
    end

    // 4. 跳转地址计算
    wire [`INST_ADDR_BUS] pc_plus_4 = id_pc_i + 4;
    
    // 分支指令目标: PC+4 + (offset << 2)
    wire [`INST_ADDR_BUS] branch_target_addr = pc_plus_4 + {{14{imm[15]}}, imm, 2'b00}; 
    
    // 寄存器跳转目标 (JALR): rs 的值
    wire [`INST_ADDR_BUS] jump_target_addr   = rd1; 

    // 5. 控制信号生成 (Control Logic)
    always @(*) begin
        // --- 默认信号设置 ---
        id_alutype_o = `NOP;
        id_aluop_o   = `MINIMIPS32_SLL;
        id_wreg_o    = `WRITE_DISABLE;
        id_wa_o      = rd;      
        id_src2_o    = rd2;     
        
        // 默认不跳转
        branch_flag_o   = `FALSE_V;
        branch_target_o = `ZERO_WORD;

        if (id_inst != `ZERO_WORD) begin
            /* =========================================
               [1] 算术运算指令
               ========================================= */
            if (inst_add) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_ADD; id_wa_o = rd;
            end else if (inst_sub) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_SUBU; id_wa_o = rd;
            end else if (inst_slt) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_SLT; id_wa_o = rd;
            end 
            // ADDI: rt = rs + sext(imm)
            else if (inst_addi) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_ADDI; id_wa_o = rt; id_src2_o = imm_ext;
            end

            /* =========================================
               [2] 逻辑运算指令
               ========================================= */
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

            /* =========================================
               [3] 移位指令
               ========================================= */
            else if (inst_sll) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `SHIFT; id_aluop_o = `MINIMIPS32_SLL; id_wa_o = rd; 
            end else if (inst_srl) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `SHIFT; id_aluop_o = `MINIMIPS32_SRL; id_wa_o = rd;
            end
            // SRA: rd = rt >> sa (算术)
            else if (inst_sra) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `SHIFT; id_aluop_o = `MINIMIPS32_SRA; id_wa_o = rd;
            end

            /* =========================================
               [4] 访存与跳转指令
               ========================================= */
            // JALR: rd = PC + 8; PC = rs;
            else if (inst_jalr) begin
                id_wreg_o = `WRITE_ENABLE; 
                id_alutype_o = `JUMP; 
                id_aluop_o = `MINIMIPS32_JALR; 
                id_wa_o = rd; 
                // JALR 将 PC+8 写入寄存器，此处 src2 置0，src1在下面赋值为 PC+8
                id_src2_o = `ZERO_WORD; 
                
                // 触发跳转
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
                if (rd1 == rd2) begin
                    branch_flag_o = `TRUE_V;
                    branch_target_o = branch_target_addr;
                end
            end else if (inst_bne) begin
                id_wreg_o = `WRITE_DISABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_SUBU; 
                if (rd1 != rd2) begin
                    branch_flag_o = `TRUE_V;
                    branch_target_o = branch_target_addr;
                end
            end
        end
    end

    // 6. 读端口赋值
    assign ra1 = rs;
    assign ra2 = rt;
    
    // 7. 源操作数1 选择逻辑 (Mux)
    // SLL/SRL/SRA: 使用移位量 sa
    // JALR: 使用 PC+8 (作为写入寄存器的数据)
    // 其他: 使用 rd1 (通用寄存器值)
    assign id_src1_o = (inst_sll | inst_srl | inst_sra) ? {27'b0, sa} : 
                       (inst_jalr)                      ? id_pc_i + 8 : 
                       rd1;
    
    assign debug_wb_pc = id_debug_wb_pc;    

endmodule