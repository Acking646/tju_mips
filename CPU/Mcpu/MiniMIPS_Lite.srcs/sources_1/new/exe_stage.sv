`include "defines.v"

module exe_stage (
    input wire                   rst,
    
    // 从译码阶段获得的信息
    input  wire [`ALUTYPE_BUS  ] exe_alutype_i,
    input  wire [`ALUOP_BUS    ] exe_aluop_i,
    input  wire [`REG_BUS      ] exe_src1_i,
    input  wire [`REG_BUS      ] exe_src2_i,
    input  wire [`REG_ADDR_BUS ] exe_wa_i,
    input  wire                  exe_wreg_i,
    input  wire [`INST_ADDR_BUS] exe_debug_wb_pc,

    // 送至执行阶段的信息
    output wire [`ALUOP_BUS    ] exe_aluop_o,
    output wire [`REG_ADDR_BUS ] exe_wa_o,
    output wire                  exe_wreg_o,
    output reg  [`REG_BUS      ] exe_wd_o,
    
    // [新增] 送至访存阶段的数据 (用于 sw 指令写入内存)
    output reg  [`REG_BUS      ] exe_mem_data_o, 
    
    output wire [`INST_ADDR_BUS] debug_wb_pc
    );

    // 1. 信号透传
    // 将操作码传递给 MEM 阶段 (用于判断是否为 Load/Store 指令)
    assign exe_aluop_o = exe_aluop_i;
    // 将写地址和写使能透传
    assign exe_wa_o    = exe_wa_i;
    assign exe_wreg_o  = exe_wreg_i;
    assign debug_wb_pc = exe_debug_wb_pc;

    // 2. 运算结果暂存
    reg [`REG_BUS] logicres;  // 逻辑运算结果
    reg [`REG_BUS] shiftres;  // 移位运算结果
    reg [`REG_BUS] arithres;  // 算术运算结果

    // [关键] Store 指令的数据通路
    // Store 指令要存的数据来自 rt，即 src2。需要在 EXE 阶段透传给 MEM 阶段。
    always @(*) begin
        exe_mem_data_o = exe_src2_i;
    end

    // --------------------------------------------------
    // 3. 逻辑运算 (AND, OR, XOR, NOR, LUI)
    // --------------------------------------------------
    always @ (*) begin
        if(rst == `RST_ENABLE) begin
            logicres = `ZERO_WORD;
        end else begin
            case (exe_aluop_i)
                `MINIMIPS32_AND: logicres = exe_src1_i & exe_src2_i;
                `MINIMIPS32_ORI: logicres = exe_src1_i | exe_src2_i;
                `MINIMIPS32_XOR: logicres = exe_src1_i ^ exe_src2_i; // 需 defines.v 支持
                `MINIMIPS32_NOR: logicres = ~(exe_src1_i | exe_src2_i); // 需 defines.v 支持
                `MINIMIPS32_LUI: logicres = exe_src2_i; // LUI 的立即数已经在 ID 阶段处理好位置
                default:         logicres = `ZERO_WORD;
            endcase
        end
    end

    // --------------------------------------------------
    // 4. 移位运算 (SLL, SRL, SRA)
    // --------------------------------------------------
    always @ (*) begin
        if(rst == `RST_ENABLE) begin
            shiftres = `ZERO_WORD;
        end else begin
            case (exe_aluop_i)
                `MINIMIPS32_SLL: shiftres = exe_src2_i << exe_src1_i[4:0]; // 逻辑左移
                `MINIMIPS32_SRL: shiftres = exe_src2_i >> exe_src1_i[4:0]; // 逻辑右移 (需 defines.v 支持)
                
                // [新增] SRA 算术右移
                // 使用 $signed() 强转为有符号数，>>> 操作符会自动补符号位
                `MINIMIPS32_SRA: shiftres = ($signed(exe_src2_i)) >>> exe_src1_i[4:0];
                
                default:         shiftres = `ZERO_WORD;
            endcase
        end
    end

    // --------------------------------------------------
    // 5. 算术运算 (ADD, SUB, SLT, ADDI, JALR)
    // --------------------------------------------------
    wire [`REG_BUS] result_sum  = exe_src1_i + exe_src2_i;
    wire [`REG_BUS] result_diff = exe_src1_i - exe_src2_i;
    // SLT 判断：(src1 < src2)
    // 使用 $signed 进行有符号比较
    wire src1_lt_src2 = ($signed(exe_src1_i) < $signed(exe_src2_i));

    always @ (*) begin
        if(rst == `RST_ENABLE) begin
            arithres = `ZERO_WORD;
        end else begin
            case (exe_aluop_i)
                // 加法类
                `MINIMIPS32_ADD, 
                `MINIMIPS32_ADDIU,
                `MINIMIPS32_ADDI,   // [新增] ADDI 使用加法逻辑
                `MINIMIPS32_LW,     // Load/Store 计算地址也是加法 (base + offset)
                `MINIMIPS32_SW:     arithres = result_sum;
                
                // [新增] JALR 
                // ID阶段设定 src1=PC+8, src2=0。这里做加法结果仍是 PC+8，用于写入寄存器
                `MINIMIPS32_JALR:   arithres = result_sum;

                // 减法类
                `MINIMIPS32_SUBU:   arithres = result_diff;
                
                // 比较类
                `MINIMIPS32_SLT:    arithres = {31'b0, src1_lt_src2};
                
                default:            arithres = `ZERO_WORD;
            endcase
        end
    end

    // --------------------------------------------------
    // 6. 输出结果选择 (MUX)
    // --------------------------------------------------
    always @ (*) begin
        case (exe_alutype_i)
            `LOGIC:  exe_wd_o = logicres;
            `SHIFT:  exe_wd_o = shiftres;
            `ARITH:  exe_wd_o = arithres;
            `JUMP:   exe_wd_o = arithres; // JALR 的结果 (PC+8) 从算术通道输出
            `MOVE:   exe_wd_o = logicres; // 或 arithres，取决于具体实现，通常 MOVE 指令很简单
            default: exe_wd_o = `ZERO_WORD;
        endcase
    end

endmodule