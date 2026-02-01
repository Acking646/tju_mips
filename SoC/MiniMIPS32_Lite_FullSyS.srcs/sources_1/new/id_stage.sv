`include "defines.v"

module id_stage(

    // 从取指阶段获得的PC值
    input  wire [`INST_ADDR_BUS]    id_pc_i,
    input  wire [`INST_ADDR_BUS]    id_debug_wb_pc,

    // 从指令存储器读来的指令字
    input  wire [`INST_BUS     ]    id_inst_i,

    // 从通用寄存器堆读来的数据
    input  wire [`REG_BUS      ]    rd1,
    input  wire [`REG_BUS      ]    rd2,

    // 数据前推输入 - 从EXE阶段
    input  wire                     exe2id_wreg,
    input  wire [`REG_ADDR_BUS ]    exe2id_wa,
    input  wire [`REG_BUS      ]    exe2id_wd,
    input  wire                     exe2id_mreg,    // EXE阶段是否是Load指令

    // 数据前推输入 - 从MEM阶段
    input  wire                     mem2id_wreg,
    input  wire [`REG_ADDR_BUS ]    mem2id_wa,
    input  wire [`REG_BUS      ]    mem2id_wd,
    input  wire                     wb2id_wreg,
    input  wire [`REG_ADDR_BUS ]    wb2id_wa,
    input  wire [`REG_BUS      ]    wb2id_wd,

    // 送至执行阶段的译码信息
    output wire [`ALUTYPE_BUS  ]    id_alutype_o,
    output wire [`ALUOP_BUS    ]    id_aluop_o,
    output wire [`REG_ADDR_BUS ]    id_wa_o,
    output wire                     id_wreg_o,
    output wire                     id_mreg_o,      // 写回选择: 1=内存数据, 0=ALU结果

    // 送至执行阶段的源操作数1和源操作数2
    output wire [`REG_BUS      ]    id_src1_o,
    output wire [`REG_BUS      ]    id_src2_o,

    // 存储器写数据 (用于SW/SB指令)
    output wire [`REG_BUS      ]    id_din_o,

    // 送往通用寄存器堆端口的地址
    output wire [`REG_ADDR_BUS ]    ra1,
    output wire [`REG_ADDR_BUS ]    ra2,

    // 分支跳转控制
    output wire                     jtsel,          // 跳转有效
    output wire [`INST_ADDR_BUS]    jump_addr,      // 跳转地址
    
    // 流水线暂停信号
    output wire                     stallreq,       // 请求暂停流水线

    output       [`INST_ADDR_BUS]   debug_wb_pc
    );

    // 按照小端模式组织指令字
    wire [`INST_BUS] id_inst = {id_inst_i[7:0], id_inst_i[15:8], id_inst_i[23:16], id_inst_i[31:24]};

    // 提取指令中的各个字段的信息
    wire [5 :0] op   = id_inst[31:26];
    wire [5 :0] func = id_inst[5 : 0];
    wire [4 :0] rd   = id_inst[15:11];
    wire [4 :0] rs   = id_inst[25:21];
    wire [4 :0] rt   = id_inst[20:16];
    wire [4 :0] sa   = id_inst[10: 6];
    wire [15:0] imm  = id_inst[15: 0];

    /*-------------------- 第一段译码逻辑：确定当前需要执行的指令 --------------------*/
    // R-Type指令 (opcode = 0)
    wire inst_reg   = ~|op;
    wire inst_and   = inst_reg & (func == 6'h24);
    wire inst_or    = inst_reg & (func == 6'h25);
    wire inst_xor   = inst_reg & (func == 6'h26);
    wire inst_add   = inst_reg & (func == 6'h20);
    wire inst_addu  = inst_reg & (func == 6'h21);
    wire inst_sll   = inst_reg & (func == 6'h00) & (|id_inst);  // 排除NOP
    wire inst_sra   = inst_reg & (func == 6'h03);
    wire inst_slt   = inst_reg & (func == 6'h2A);

    // I-Type指令
    wire inst_ori   = (op == 6'h0D);
    wire inst_lui   = (op == 6'h0F);
    wire inst_addi  = (op == 6'h08);
    wire inst_addiu = (op == 6'h09);
    wire inst_andi  = (op == 6'h0C);
    wire inst_beq   = (op == 6'h04);
    wire inst_bne   = (op == 6'h05);
    wire inst_lw    = (op == 6'h23);
    wire inst_sw    = (op == 6'h2B);
    wire inst_lb    = (op == 6'h20);
    wire inst_sb    = (op == 6'h28);

    // REGIMM指令 (opcode = 1)
    wire inst_regimm = (op == 6'h01);
    wire inst_bgez   = inst_regimm & (rt == 5'h01);
    /*------------------------------------------------------------------------------*/

    /*-------------------- 数据前推逻辑 --------------------*/
    // Load-Use 冒险检测 (提前计算，用于控制前推)
    // 当 EXE 阶段是 Load 指令时，不能从 EXE 前推（数据还没从内存读取）
    wire exe_is_load = exe2id_mreg && exe2id_wreg && (exe2id_wa != 5'b0);
    wire exe_fwd_rs_blocked = exe_is_load && (exe2id_wa == rs);
    wire exe_fwd_rt_blocked = exe_is_load && (exe2id_wa == rt);
    
    // 源操作数1前推（当 EXE 是 Load 且目标是 rs 时，跳过 EXE 前推）
    wire [`REG_BUS] fwd_src1 =
        (~exe_fwd_rs_blocked && exe2id_wreg && (exe2id_wa != 5'b0) && (exe2id_wa == rs)) ? exe2id_wd :
        (mem2id_wreg && (mem2id_wa != 5'b0) && (mem2id_wa == rs)) ? mem2id_wd :
        (wb2id_wreg  && (wb2id_wa  != 5'b0) && (wb2id_wa  == rs)) ? wb2id_wd  : rd1;

    // 源操作数2前推（当 EXE 是 Load 且目标是 rt 时，跳过 EXE 前推）
    wire [`REG_BUS] fwd_src2 =
        (~exe_fwd_rt_blocked && exe2id_wreg && (exe2id_wa != 5'b0) && (exe2id_wa == rt)) ? exe2id_wd :
        (mem2id_wreg && (mem2id_wa != 5'b0) && (mem2id_wa == rt)) ? mem2id_wd :
        (wb2id_wreg  && (wb2id_wa  != 5'b0) && (wb2id_wa  == rt)) ? wb2id_wd  : rd2;
    /*------------------------------------------------------*/

    /*-------------------- Load-Use 冒险检测 --------------------*/
    // 当 EXE 阶段是 Load 指令，且其目标寄存器被当前指令使用时，需要暂停
    // 分支指令使用 rs (beq/bne/bgez) 和 rt (beq/bne)
    wire load_use_rs = exe2id_mreg && exe2id_wreg && (exe2id_wa != 5'b0) && (exe2id_wa == rs);
    wire load_use_rt = exe2id_mreg && exe2id_wreg && (exe2id_wa != 5'b0) && (exe2id_wa == rt);
    wire load_use_hazard = load_use_rs | load_use_rt;
    /*-----------------------------------------------------------*/

    /*-------------------- 分支跳转判断（在ID阶段完成）--------------------*/
    // 分支条件判断
    wire branch_eq   = (fwd_src1 == fwd_src2);
    wire branch_neq  = ~branch_eq;
    wire branch_gez  = ~fwd_src1[31];  // rs >= 0 (符号位为0)

    // 分支目标地址计算
    wire [`INST_ADDR_BUS] branch_offset = {{14{imm[15]}}, imm, 2'b00};
    wire [`INST_ADDR_BUS] branch_addr   = id_pc_i + 4 + branch_offset;

    // 跳转控制
    // 当存在 Load-Use 冒险时，禁止分支跳转（等待暂停结束后重新判断）
    wire branch_taken = (inst_beq & branch_eq) | (inst_bne & branch_neq) | (inst_bgez & branch_gez);
    assign jtsel     = branch_taken & ~load_use_hazard;
    assign jump_addr = branch_addr;
    /*--------------------------------------------------------------------*/

    /*-------------------- 第二段译码逻辑：产生具体控制信号 --------------------*/
    // 指令分类
    wire inst_logic = inst_and | inst_or | inst_xor | inst_ori | inst_andi | inst_lui;
    wire inst_arith = inst_add | inst_addu | inst_addi | inst_addiu | inst_slt;
    wire inst_shift = inst_sll | inst_sra;
    wire inst_load  = inst_lw | inst_lb;
    wire inst_store = inst_sw | inst_sb;

    // 操作类型 alutype
    assign id_alutype_o = inst_logic ? `LOGIC :
                          inst_arith ? `ARITH :
                          inst_shift ? `SHIFT :
                          (inst_load | inst_store) ? `ARITH : `NOP;

    // 内部操作码 aluop
    assign id_aluop_o = inst_and   ? `MINIMIPS32_AND   :
                        inst_or    ? `MINIMIPS32_OR    :
                        inst_xor   ? `MINIMIPS32_XOR   :
                        inst_ori   ? `MINIMIPS32_ORI   :
                        inst_andi  ? `MINIMIPS32_ANDI  :
                        inst_lui   ? `MINIMIPS32_LUI   :
                        inst_add   ? `MINIMIPS32_ADD   :
                        inst_addu  ? `MINIMIPS32_ADDU  :
                        inst_addi  ? `MINIMIPS32_ADDI  :
                        inst_addiu ? `MINIMIPS32_ADDIU :
                        inst_slt   ? `MINIMIPS32_SLT   :
                        inst_sll   ? `MINIMIPS32_SLL   :
                        inst_sra   ? `MINIMIPS32_SRA   :
                        inst_lw    ? `MINIMIPS32_LW    :
                        inst_sw    ? `MINIMIPS32_SW    :
                        inst_lb    ? `MINIMIPS32_LB    :
                        inst_sb    ? `MINIMIPS32_SB    : 8'h00;

    // 写通用寄存器使能信号
    wire wreg_logic = inst_and | inst_or | inst_xor | inst_ori | inst_andi | inst_lui;
    wire wreg_arith = inst_add | inst_addu | inst_addi | inst_addiu | inst_slt;
    wire wreg_shift = inst_sll | inst_sra;
    wire wreg_load  = inst_lw | inst_lb;
    assign id_wreg_o = wreg_logic | wreg_arith | wreg_shift | wreg_load;

    // 写回数据来源选择：1=从内存读取, 0=ALU结果
    assign id_mreg_o = inst_load;
    /*------------------------------------------------------------------------------*/

    // 向通用寄存器堆读端口1的地址为rs字段，读端口2的地址为rt字段
    assign ra1 = rs;
    assign ra2 = rt;

    // 确定写入目的寄存器的地址（rt或rd）
    // I-Type指令写rt, R-Type指令写rd
    wire use_rt = inst_ori | inst_andi | inst_lui | inst_addi | inst_addiu | inst_load;
    assign id_wa_o = use_rt ? rt : rd;

    // 立即数扩展
    wire [`REG_BUS] imm_zext = {16'b0, imm};            // 零扩展
    wire [`REG_BUS] imm_sext = {{16{imm[15]}}, imm};    // 符号扩展
    wire [`REG_BUS] imm_lui  = {imm, 16'b0};            // lui左移16位

    // 确定源操作数1
    // sll和sra使用sa字段，其他使用rs
    wire use_sa = inst_sll | inst_sra;
    assign id_src1_o = use_sa ? {27'b0, sa} : fwd_src1;

    // 确定源操作数2
    // I-Type立即数指令使用立即数，R-Type使用rt
    wire use_imm = inst_ori | inst_andi | inst_addi | inst_addiu | inst_load | inst_store;
    wire imm_sign = inst_addi | inst_addiu | inst_load | inst_store;  // 符号扩展的指令

    assign id_src2_o = inst_lui  ? imm_lui  :
                       (use_imm & imm_sign)  ? imm_sext :
                       (use_imm & ~imm_sign) ? imm_zext : fwd_src2;

    // 存储器写数据（SW/SB指令使用rt的值）
    assign id_din_o = fwd_src2;

    assign debug_wb_pc = id_debug_wb_pc;

    // stallreq 输出（使用之前定义的 load_use_hazard）
    assign stallreq = load_use_hazard;

endmodule
