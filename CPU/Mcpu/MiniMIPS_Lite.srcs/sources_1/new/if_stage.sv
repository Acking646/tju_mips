`include "defines.v"

module if_stage(
    input  wire                  cpu_clk_50M,
    input  wire                  cpu_rst_n,
    
    // [新增] 暂停信号 (stall[0])
    input  wire [5:0]            stall,
    
    input  wire [`INST_ADDR_BUS] branch_target_i, 
    input  wire                  branch_flag_i,   
    
    output reg  [`INST_ADDR_BUS] pc,
    output wire [`INST_ADDR_BUS] debug_wb_pc
    );

    always @(posedge cpu_clk_50M) begin
        if(cpu_rst_n == `RST_ENABLE) begin
            pc <= `PC_INIT;
        end else if (stall[0] == `TRUE_V) begin
            // [新增] 如果请求暂停，PC 保持不变
            pc <= pc; 
        end else if (branch_flag_i == `TRUE_V) begin
            pc <= branch_target_i;
        end else begin
            pc <= pc + 4;
        end
    end
    assign debug_wb_pc = pc;
endmodule