`include "defines.v"

module exe_stage (
    input wire                   rst,
    
    // 从译码阶段得到的信号
    input  wire [`ALUTYPE_BUS  ] exe_alutype_i,
    input  wire [`ALUOP_BUS    ] exe_aluop_i,
    input  wire [`REG_BUS      ] exe_src1_i,
    input  wire [`REG_BUS      ] exe_src2_i,
    input  wire [`REG_ADDR_BUS ] exe_wa_i,
    input  wire                  exe_wreg_i,
    
    // [完善] 专门的 Store Data 输入
    input  wire [`REG_BUS      ] exe_store_data_i,
    
    input  wire [`INST_ADDR_BUS] exe_debug_wb_pc,

    // 传递执行阶段的结果
    output wire [`ALUOP_BUS    ] exe_aluop_o,
    output wire [`REG_ADDR_BUS ] exe_wa_o,
    output wire                  exe_wreg_o,
    output reg  [`REG_BUS      ] exe_wd_o,
    
    // 传递要写入内存的数据 (用于 sw 指令写入内存)
    output reg  [`REG_BUS      ] exe_mem_data_o, 
    
    output wire [`INST_ADDR_BUS] debug_wb_pc
    );

    // [新增] HI/LO 寄存器 (组合逻辑实现)
    reg [`REG_BUS] hi_reg;
    reg [`REG_BUS] lo_reg;

    assign exe_aluop_o = exe_aluop_i;
    assign exe_wa_o    = exe_wa_i;
    assign exe_wreg_o  = exe_wreg_i;
    assign debug_wb_pc = exe_debug_wb_pc;

    // Store 数据传递
    always @(*) begin
        exe_mem_data_o = exe_store_data_i;
    end

    // 逻辑运算
    reg [`REG_BUS] logicres;
    reg [`REG_BUS] shiftres;  
    reg [`REG_BUS] arithres;

    // [新增] 乘法结果寄存器
    reg [`REG_BUS] mulres_hi;
    reg [`REG_BUS] mulres_lo;

    // 逻辑运算
    always @ (*) begin
        if(rst == `RST_ENABLE) begin
            logicres = `ZERO_WORD;
        end else begin
            case (exe_aluop_i)
                `MINIMIPS32_AND: logicres = exe_src1_i & exe_src2_i;
                `MINIMIPS32_ORI: logicres = exe_src1_i | exe_src2_i;
                `MINIMIPS32_XOR: logicres = exe_src1_i ^ exe_src2_i;
                `MINIMIPS32_NOR: logicres = ~(exe_src1_i | exe_src2_i);
                `MINIMIPS32_LUI: logicres = exe_src2_i;
                default:         logicres = `ZERO_WORD;
            endcase
        end
    end

    // 移位运算
    always @ (*) begin
        if(rst == `RST_ENABLE) begin
            shiftres = `ZERO_WORD;
        end else begin
            case (exe_aluop_i)
                `MINIMIPS32_SLL: shiftres = exe_src2_i << exe_src1_i[4:0];
                `MINIMIPS32_SRL: shiftres = exe_src2_i >> exe_src1_i[4:0];
                `MINIMIPS32_SRA: shiftres = ($signed(exe_src2_i)) >>> exe_src1_i[4:0];
                default:         shiftres = `ZERO_WORD;
            endcase
        end
    end

    // 算术运算
    wire [`REG_BUS] result_sum  = exe_src1_i + exe_src2_i;
    wire [`REG_BUS] result_diff = exe_src1_i - exe_src2_i;
    wire src1_lt_src2 = ($signed(exe_src1_i) < $signed(exe_src2_i));

    always @ (*) begin
        if(rst == `RST_ENABLE) begin
            arithres = `ZERO_WORD;
        end else begin
            case (exe_aluop_i)
                `MINIMIPS32_ADD, 
                `MINIMIPS32_ADDIU,
                `MINIMIPS32_ADDI,
                `MINIMIPS32_LW,     
                `MINIMIPS32_SW:     arithres = result_sum; 
                
                `MINIMIPS32_JALR:   arithres = result_sum;
                `MINIMIPS32_SUBU:   arithres = result_diff;
                `MINIMIPS32_SLT:    arithres = {31'b0, src1_lt_src2};
                default:            arithres = `ZERO_WORD;
            endcase
        end
    end

    // [新增] 乘法运算 (在同一个时钟周期内完成)
    // 注意：这在真实的流水线中可能需要多个周期，这里简化为单周期
    always @ (*) begin
        if(rst == `RST_ENABLE) begin
            mulres_hi = `ZERO_WORD;
            mulres_lo = `ZERO_WORD;
            hi_reg = `ZERO_WORD;
            lo_reg = `ZERO_WORD;
        end else if (exe_aluop_i == `MINIMIPS32_MULT) begin
            // 有符号乘法，产生64位结果
            {mulres_hi, mulres_lo} = $signed(exe_src1_i) * $signed(exe_src2_i);
            // 更新 HI/LO 寄存器
            hi_reg = mulres_hi;
            lo_reg = mulres_lo;
        end else begin
            mulres_hi = `ZERO_WORD;
            mulres_lo = `ZERO_WORD;
            // HI/LO 寄存器保持不变 (简化处理)
            hi_reg = hi_reg;
            lo_reg = lo_reg;
        end
    end

    // 结果选择
    always @ (*) begin
        case (exe_alutype_i)
            `LOGIC:  exe_wd_o = logicres;
            `SHIFT:  exe_wd_o = shiftres;
            `ARITH:  exe_wd_o = arithres;
            `JUMP:   exe_wd_o = arithres;
            `MOVE:   // [新增] MOVE 类型用于 MFHI/MFLO
                case (exe_aluop_i)
                    `MINIMIPS32_MFHI: exe_wd_o = hi_reg;
                    `MINIMIPS32_MFLO: exe_wd_o = lo_reg;
                    default: exe_wd_o = `ZERO_WORD;
                endcase
            default: exe_wd_o = `ZERO_WORD;
        endcase
    end

endmodule