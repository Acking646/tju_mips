`include "defines.v"

module if_stage(
    input  wire                  cpu_clk_50M,
    input  wire                  cpu_rst_n,
    
    // [新增] 来自 ID 阶段的跳转控制信号
    input  wire [`INST_ADDR_BUS] branch_target_i, // 跳转目标地址
    input  wire                  branch_flag_i,   // 跳转标志 (1=跳转)
    
    output reg  [`INST_ADDR_BUS] pc,
    output wire [`INST_ADDR_BUS] debug_wb_pc
    );

    always @(posedge cpu_clk_50M) begin
        if(cpu_rst_n == `RST_ENABLE) begin
            pc <= `PC_INIT; // 0x80000000
        end else if (branch_flag_i == `TRUE_V) begin
            // [核心逻辑] 如果 ID 阶段说要跳转，就加载目标地址
            pc <= branch_target_i;
        end else begin
            // 否则顺序执行
            pc <= pc + 4;
        end
    end
    
    assign debug_wb_pc = pc;

endmodule