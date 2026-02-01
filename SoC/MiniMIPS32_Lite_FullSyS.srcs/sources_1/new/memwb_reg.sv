`include "defines.v"

module memwb_reg (
    input  wire                     cpu_clk_50M,
    input  wire                     cpu_rst_n,

    // 来自访存阶段的信息
    input  wire [`REG_ADDR_BUS  ]   mem_wa,
    input  wire                     mem_wreg,
    input  wire [`REG_BUS       ]   mem_dreg,
    input  wire [`INST_ADDR_BUS]    mem_debug_wb_pc,

    // 送至写回阶段的信息
    output reg  [`REG_ADDR_BUS  ]   wb_wa,
    output reg                      wb_wreg,
    output reg  [`REG_BUS       ]   wb_dreg,
    output reg  [`INST_ADDR_BUS]    wb_debug_wb_pc
    );

    always @(posedge cpu_clk_50M) begin
        // 复位时清零写回阶段的信息
        if (cpu_rst_n == `RST_ENABLE) begin
            wb_wa                 <= `REG_NOP;
            wb_wreg               <= `WRITE_DISABLE;
            wb_dreg               <= `ZERO_WORD;
            wb_debug_wb_pc        <= `PC_INIT;
        end
        // 正常传递访存阶段的信息到写回阶段
        else begin
            wb_wa                 <= mem_wa;
            wb_wreg               <= mem_wreg;
            wb_dreg               <= mem_dreg;
            wb_debug_wb_pc        <= mem_debug_wb_pc;
        end
    end

endmodule
