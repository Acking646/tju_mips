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

    // [新增] 延迟槽标记
    reg delay_slot;
    
    // [新增] 延迟槽目标地址
    reg [`INST_ADDR_BUS] delay_target;

    always @(posedge cpu_clk_50M) begin
        if(cpu_rst_n == `RST_ENABLE) begin
            pc <= `PC_INIT;
            delay_slot <= 1'b0;
            delay_target <= `ZERO_WORD;
        end else if (stall[0] == `TRUE_V) begin
            // [新增] 在暂停期间保持 PC 不变
            pc <= pc; 
            delay_slot <= delay_slot;
            delay_target <= delay_target;
        end else if (branch_flag_i == `TRUE_V) begin
            // [完善] 延迟槽处理
            pc <= branch_target_i;
            delay_slot <= 1'b1;
            delay_target <= pc + 4; // 延迟槽是下一条指令
        end else if (delay_slot == 1'b1) begin
            // 执行延迟槽指令
            pc <= delay_target;
            delay_slot <= 1'b0;
            delay_target <= `ZERO_WORD;
        end else begin
            pc <= pc + 4;
        end
    end
    assign debug_wb_pc = pc;
endmodule