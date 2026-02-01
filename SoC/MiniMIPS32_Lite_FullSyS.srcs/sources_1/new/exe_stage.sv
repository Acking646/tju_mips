`include "defines.v"

module exe_stage (

    // 从译码阶段获得的信息
    input  wire [`ALUTYPE_BUS	] 	exe_alutype_i,
    input  wire [`ALUOP_BUS	    ] 	exe_aluop_i,
    input  wire [`REG_BUS 		] 	exe_src1_i,
    input  wire [`REG_BUS 		] 	exe_src2_i,
    input  wire [`REG_ADDR_BUS 	] 	exe_wa_i,
    input  wire 					exe_wreg_i,
    input  wire                     exe_mreg_i,     // 写回选择
    input  wire [`REG_BUS       ]   exe_din_i,      // 存储器写数据
    input  wire [`INST_ADDR_BUS]    exe_debug_wb_pc,

    // 送至访存阶段的信息
    output wire [`ALUOP_BUS	    ] 	exe_aluop_o,
    output wire [`REG_ADDR_BUS 	] 	exe_wa_o,
    output wire 					exe_wreg_o,
    output wire [`REG_BUS 		] 	exe_wd_o,       // ALU运算结果
    output wire                     exe_mreg_o,     // 写回选择
    output wire [`REG_BUS       ]   exe_din_o,      // 存储器写数据

    output wire [`INST_ADDR_BUS] 	debug_wb_pc
    );

    // 直接传递到下一阶段
    assign exe_aluop_o = exe_aluop_i;
    assign exe_wa_o    = exe_wa_i;
    assign exe_wreg_o  = exe_wreg_i;
    assign exe_mreg_o  = exe_mreg_i;
    assign exe_din_o   = exe_din_i;

    /*-------------------- 逻辑运算 --------------------*/
    wire [`REG_BUS] logicres;
    assign logicres = (exe_aluop_i == `MINIMIPS32_AND)  ? (exe_src1_i & exe_src2_i) :
                      (exe_aluop_i == `MINIMIPS32_OR)   ? (exe_src1_i | exe_src2_i) :
                      (exe_aluop_i == `MINIMIPS32_XOR)  ? (exe_src1_i ^ exe_src2_i) :
                      (exe_aluop_i == `MINIMIPS32_ORI)  ? (exe_src1_i | exe_src2_i) :
                      (exe_aluop_i == `MINIMIPS32_ANDI) ? (exe_src1_i & exe_src2_i) :
                      (exe_aluop_i == `MINIMIPS32_LUI)  ? exe_src2_i : `ZERO_WORD;
    /*-------------------------------------------------*/

    /*-------------------- 算术运算 --------------------*/
    wire [`REG_BUS] arithres;
    assign arithres = (exe_aluop_i == `MINIMIPS32_ADD)   ? (exe_src1_i + exe_src2_i) :
                      (exe_aluop_i == `MINIMIPS32_ADDI)  ? (exe_src1_i + exe_src2_i) :
                      (exe_aluop_i == `MINIMIPS32_ADDU)  ? (exe_src1_i + exe_src2_i) :
                      (exe_aluop_i == `MINIMIPS32_ADDIU) ? (exe_src1_i + exe_src2_i) :
                      (exe_aluop_i == `MINIMIPS32_SLT)   ? ($signed(exe_src1_i) < $signed(exe_src2_i) ? 32'd1 : 32'd0) :
                      (exe_aluop_i == `MINIMIPS32_LW)    ? (exe_src1_i + exe_src2_i) :
                      (exe_aluop_i == `MINIMIPS32_SW)    ? (exe_src1_i + exe_src2_i) :
                      (exe_aluop_i == `MINIMIPS32_LB)    ? (exe_src1_i + exe_src2_i) :
                      (exe_aluop_i == `MINIMIPS32_SB)    ? (exe_src1_i + exe_src2_i) : `ZERO_WORD;
    /*-------------------------------------------------*/

    /*-------------------- 移位运算 --------------------*/
    wire [`REG_BUS] shiftres;
    wire [4:0] shamt = exe_src1_i[4:0];
    wire [31:0] sra_logical = exe_src2_i >> shamt;
    wire [31:0] sra_mask = (shamt == 5'd0) ? 32'h0000_0000 : (32'hFFFF_FFFF << (32 - shamt));
    wire [31:0] sra_fill = exe_src2_i[31] ? sra_mask : 32'h0000_0000;
    wire [31:0] sra_res = sra_logical | sra_fill;
    assign shiftres = (exe_aluop_i == `MINIMIPS32_SLL) ? (exe_src2_i << shamt) :
                      (exe_aluop_i == `MINIMIPS32_SRA) ? sra_res : `ZERO_WORD;
    /*-------------------------------------------------*/

    // 根据操作类型alutype确定执行阶段最终的运算结果
    assign exe_wd_o = (exe_alutype_i == `LOGIC) ? logicres :
                      (exe_alutype_i == `ARITH) ? arithres :
                      (exe_alutype_i == `SHIFT) ? shiftres : `ZERO_WORD;

    assign debug_wb_pc = exe_debug_wb_pc;

endmodule
