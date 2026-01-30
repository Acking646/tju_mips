`include "defines.v"

module id_stage(
    input  wire [`INST_ADDR_BUS]    id_pc_i,
    input  wire [`INST_ADDR_BUS]    id_debug_wb_pc,
    input  wire [`INST_BUS     ]    id_inst_i,
    input  wire [`REG_BUS      ]    rd1,
    input  wire [`REG_BUS      ]    rd2,

    // Forwarding Inputs
    input  wire                     ex_wreg_i,
    input  wire [`REG_BUS      ]    ex_wd_i,
    input  wire [`REG_ADDR_BUS ]    ex_wa_i,
    input  wire                     mem_wreg_i, 
    input  wire [`REG_BUS      ]    mem_wd_i,
    input  wire [`REG_ADDR_BUS ]    mem_wa_i,
    input  wire                     wb_wreg_i,
    input  wire [`REG_BUS      ]    wb_wd_i,
    input  wire [`REG_ADDR_BUS ]    wb_wa_i,
    
    // [新增] 暂停接口
    input  wire [`ALUOP_BUS    ]    ex_aluop_i, // 上一条指令的操作码 (来自 EXE)
    output reg                      stallreq,   // 输出暂停信号
      
    output reg  [`ALUTYPE_BUS  ]    id_alutype_o,
    output reg  [`ALUOP_BUS    ]    id_aluop_o,
    output reg  [`REG_ADDR_BUS ]    id_wa_o,
    output reg                      id_wreg_o,
    output wire [`REG_BUS      ]    id_src1_o,
    output reg  [`REG_BUS      ]    id_src2_o,
    output wire [`REG_BUS      ]    id_store_data_o,
    output wire [`REG_ADDR_BUS ]    ra1,
    output wire [`REG_ADDR_BUS ]    ra2,
    output wire [`INST_ADDR_BUS]    debug_wb_pc,
    output reg                      branch_flag_o,   
    output reg  [`INST_ADDR_BUS]    branch_target_o  
);
    
    // [完善] 字节序转换 - 确保指令正确解析
    wire [`INST_BUS] id_inst = {id_inst_i[7:0], id_inst_i[15:8], id_inst_i[23:16], id_inst_i[31:24]};
    wire [5 :0] op   = id_inst[31:26];
    wire [5 :0] func = id_inst[5 : 0];
    wire [4 :0] rd   = id_inst[15:11];
    wire [4 :0] rs   = id_inst[25:21];
    wire [4 :0] rt   = id_inst[20:16];
    wire [4 :0] sa   = id_inst[10: 6];
    wire [15:0] imm  = id_inst[15: 0]; 
    wire [25:0] instr_index = id_inst[25:0]; // [新增] 用于 J 和 JAL 指令

    // 指令识别 (完整版本)
    wire inst_add  = (op == 6'b000000) && (func == 6'b100000);
    wire inst_addu = (op == 6'b000000) && (func == 6'b100001);
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
    wire inst_jr   = (op == 6'b000000) && (func == 6'b001000);  // [新增] JR 指令
    wire inst_addi = (op == 6'b001000);
    wire inst_addiu= (op == 6'b001001);
    wire inst_andi = (op == 6'b001100);
    wire inst_ori  = (op == 6'b001101);
    wire inst_xori = (op == 6'b001110);
    wire inst_lui  = (op == 6'b001111);
    wire inst_lw   = (op == 6'b100011);
    wire inst_sw   = (op == 6'b101011);
    wire inst_beq  = (op == 6'b000100);
    wire inst_bne  = (op == 6'b000101);
    wire inst_j    = (op == 6'b000010);       // [新增] J 指令
    wire inst_jal  = (op == 6'b000011);       // [新增] JAL 指令
    wire inst_mult = (op == 6'b000000) && (func == 6'b011000); // [新增] MULT 指令
    wire inst_mfhi = (op == 6'b000000) && (func == 6'b010000); // [新增] MFHI 指令
    wire inst_mflo = (op == 6'b000000) && (func == 6'b010010); // [新增] MFLO 指令

    reg [`REG_BUS] imm_ext;
    always @(*) begin
        if (inst_andi || inst_ori || inst_xori) imm_ext = {16'b0, imm};
        else if (inst_lui) imm_ext = {imm, 16'b0};
        else imm_ext = {{16{imm[15]}}, imm}; 
    end

    // Forwarding Logic (转发逻辑)
    reg [`REG_BUS] reg1; 
    reg [`REG_BUS] reg2; 
    always @(*) begin
        if ((ex_wreg_i == 1'b1) && (ex_wa_i == rs) && (ex_wa_i != `REG_NOP)) reg1 = ex_wd_i;
        else if ((mem_wreg_i == 1'b1) && (mem_wa_i == rs) && (mem_wa_i != `REG_NOP)) reg1 = mem_wd_i;
        else if ((wb_wreg_i == 1'b1) && (wb_wa_i == rs) && (wb_wa_i != `REG_NOP)) reg1 = wb_wd_i;
        else reg1 = rd1;     
    end
    always @(*) begin
        if ((ex_wreg_i == 1'b1) && (ex_wa_i == rt) && (ex_wa_i != `REG_NOP)) reg2 = ex_wd_i;
        else if ((mem_wreg_i == 1'b1) && (mem_wa_i == rt) && (mem_wa_i != `REG_NOP)) reg2 = mem_wd_i;
        else if ((wb_wreg_i == 1'b1) && (wb_wa_i == rt) && (wb_wa_i != `REG_NOP)) reg2 = wb_wd_i;
        else reg2 = rd2;
    end
    assign id_store_data_o = reg2;

    // =========================================================
    // [关键功能] Load-Use 暂停检测
    // =========================================================
    // 如果前一条指令(EXE阶段)是 LW，且目标寄存器 == 当前指令源寄存器(rs 或 rt)
    wire pre_inst_is_load = (ex_aluop_i == `MINIMIPS32_LW);
    
    always @ (*) begin
        if (pre_inst_is_load == 1'b1) begin
            // 检测 rs 是否冲突 (Load 目标 == 当前 rs)
            if (ex_wa_i == rs && rs != `REG_NOP) begin 
                stallreq = `TRUE_V;
            // 检测 rt 是否冲突 (Load 目标 == 当前 rt) -- 注意：SW指令不需要检查rt，Store数据专门通过
            // R-type 指令需要读 rt，I-type 指令写 rt
            end else if (ex_wa_i == rt && rt != `REG_NOP && !inst_sw && !inst_lui && !inst_jalr) begin
                stallreq = `TRUE_V;
            end else begin
                stallreq = `FALSE_V;
            end
        end else begin
            stallreq = `FALSE_V;
        end
    end
    // =========================================================

    wire [`INST_ADDR_BUS] pc_plus_4 = id_pc_i + 4;
    wire [`INST_ADDR_BUS] branch_target_addr = pc_plus_4 + {{14{imm[15]}}, imm, 2'b00}; 
    wire [`INST_ADDR_BUS] jump_target_addr   = {pc_plus_4[31:28], instr_index, 2'b00}; // [新增] J/JAL 目标地址
    wire [`INST_ADDR_BUS] jr_target_addr     = reg1; // [新增] JR 目标地址

    // 控制信号 (完整版本)
    always @(*) begin
        id_alutype_o = `NOP; id_aluop_o = `MINIMIPS32_SLL; id_wreg_o = `WRITE_DISABLE;
        id_wa_o = rd; id_src2_o = reg2; branch_flag_o = `FALSE_V; branch_target_o = `ZERO_WORD;

        if (id_inst != `ZERO_WORD) begin
            if (inst_add || inst_addu) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_ADD; id_wa_o = rd;
            end else if (inst_sub) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_SUBU; id_wa_o = rd;
            end else if (inst_slt) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_SLT; id_wa_o = rd;
            end else if (inst_addi || inst_addiu) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_ADDI; id_wa_o = rt; id_src2_o = imm_ext;
            end else if (inst_and) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `LOGIC; id_aluop_o = `MINIMIPS32_AND; id_wa_o = rd;
            end else if (inst_or) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `LOGIC; id_aluop_o = `MINIMIPS32_ORI; id_wa_o = rd;
            end else if (inst_xor) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `LOGIC; id_aluop_o = `MINIMIPS32_XOR; id_wa_o = rd; 
            end else if (inst_nor) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `LOGIC; id_aluop_o = `MINIMIPS32_NOR; id_wa_o = rd; 
            end else if (inst_andi) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `LOGIC; id_aluop_o = `MINIMIPS32_AND; id_wa_o = rt; id_src2_o = imm_ext;
            end else if (inst_ori) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `LOGIC; id_aluop_o = `MINIMIPS32_ORI; id_wa_o = rt; id_src2_o = imm_ext;
            end else if (inst_xori) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `LOGIC; id_aluop_o = `MINIMIPS32_XOR; id_wa_o = rt; id_src2_o = imm_ext;
            end else if (inst_lui) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `LOGIC; id_aluop_o = `MINIMIPS32_LUI; id_wa_o = rt; id_src2_o = imm_ext;
            end else if (inst_sll) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `SHIFT; id_aluop_o = `MINIMIPS32_SLL; id_wa_o = rd; 
            end else if (inst_srl) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `SHIFT; id_aluop_o = `MINIMIPS32_SRL; id_wa_o = rd;
            end else if (inst_sra) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `SHIFT; id_aluop_o = `MINIMIPS32_SRA; id_wa_o = rd;
            end else if (inst_jalr) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `JUMP; id_aluop_o = `MINIMIPS32_JALR; id_wa_o = rd; 
                id_src2_o = `ZERO_WORD; branch_flag_o = `TRUE_V; branch_target_o = jr_target_addr;
            end else if (inst_jr) begin  // [新增] JR 指令
                id_wreg_o = `WRITE_DISABLE; id_alutype_o = `JR; id_aluop_o = `MINIMIPS32_JR; 
                branch_flag_o = `TRUE_V; branch_target_o = jr_target_addr;
            end else if (inst_j) begin  // [新增] J 指令
                id_wreg_o = `WRITE_DISABLE; id_alutype_o = `JUMP; id_aluop_o = `MINIMIPS32_JALR; // 复用 JALR 的处理
                branch_flag_o = `TRUE_V; branch_target_o = jump_target_addr;
            end else if (inst_jal) begin // [新增] JAL 指令
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `JUMP; id_aluop_o = `MINIMIPS32_JALR; 
                branch_flag_o = `TRUE_V; branch_target_o = jump_target_addr;
            end else if (inst_lw) begin
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_LW; id_wa_o = rt; id_src2_o = imm_ext;
            end else if (inst_sw) begin
                id_wreg_o = `WRITE_DISABLE;id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_SW; id_src2_o = imm_ext;
            end else if (inst_beq) begin
                id_wreg_o = `WRITE_DISABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_BEQ;
                if (reg1 == reg2) begin branch_flag_o = `TRUE_V; branch_target_o = branch_target_addr; end
            end else if (inst_bne) begin
                id_wreg_o = `WRITE_DISABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_BNE; 
                if (reg1 != reg2) begin branch_flag_o = `TRUE_V; branch_target_o = branch_target_addr; end
            end else if (inst_mult) begin  // [新增] MULT 指令
                id_wreg_o = `WRITE_DISABLE; id_alutype_o = `ARITH; id_aluop_o = `MINIMIPS32_MULT;
            end else if (inst_mfhi) begin  // [新增] MFHI 指令
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `MOVE; id_aluop_o = `MINIMIPS32_MFHI; id_wa_o = rd;
            end else if (inst_mflo) begin // [新增] MFLO 指令
                id_wreg_o = `WRITE_ENABLE; id_alutype_o = `MOVE; id_aluop_o = `MINIMIPS32_MFLO; id_wa_o = rd;
            end
        end
    end

    assign ra1 = rs;
    assign ra2 = rt;
    // [完善] src1 的选择逻辑
    assign id_src1_o = (inst_sll | inst_srl | inst_sra) ? {27'b0, sa} : 
                       (inst_jalr) ? id_pc_i + 8 : reg1;
    assign debug_wb_pc = id_debug_wb_pc;    
endmodule