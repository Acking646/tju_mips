`include "defines.v"

module ifid_reg (
    input  wire                     cpu_clk_50M,
    input  wire                     cpu_rst_n,

    // 来自取指阶段的信息
    input  wire [`INST_ADDR_BUS]    if_pc,
    input  wire [`INST_ADDR_BUS]    if_debug_wb_pc,

    // 来自指令存储器的信息
    input  wire [`INST_BUS     ]    inst,

    // 分支跳转时清空信号
    input  wire                     flush,
    
    // 流水线暂停信号
    input  wire                     stall,

    // 送至译码阶段的信息
    output reg  [`INST_ADDR_BUS]    id_pc,
    output reg  [`INST_BUS     ]    id_inst,
    output reg  [`INST_ADDR_BUS]    id_debug_wb_pc
    );

    always @(posedge cpu_clk_50M) begin
        // 复位或分支跳转时清空流水线
        if (cpu_rst_n == `RST_ENABLE || flush) begin
            id_pc          <= `PC_INIT;
            id_inst        <= `ZERO_WORD;   // 插入NOP指令
            id_debug_wb_pc <= `PC_INIT;
        end
        // 暂停时保持不变
        else if (stall) begin
            // 保持当前值
        end
        // 正常传递取指阶段的信息到译码阶段
        else begin
            id_pc          <= if_pc;
            id_inst        <= inst;
            id_debug_wb_pc <= if_debug_wb_pc;
        end
    end

endmodule
