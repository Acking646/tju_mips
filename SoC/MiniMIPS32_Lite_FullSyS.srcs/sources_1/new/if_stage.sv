`include "defines.v"

module if_stage (
    input  wire                     cpu_clk_50M,
    input  wire                     cpu_rst_n,

    // 跳转控制信号 (来自ID阶段)
    input  wire                     jtsel,          // 跳转选择
    input  wire [`INST_ADDR_BUS]    jump_addr,      // 跳转地址
    
    // 流水线暂停信号
    input  wire                     stall,          // 暂停信号

    output logic [`INST_ADDR_BUS]   pc,
    output wire  [`INST_ADDR_BUS]   debug_wb_pc
    );

    // 计算下一条指令地址
    wire [`INST_ADDR_BUS] pc_next;
    assign pc_next = jtsel ? jump_addr : (pc + 4);

    always @(posedge cpu_clk_50M) begin
        if (~cpu_rst_n)
            pc <= `PC_INIT;
        else if (~stall)  // 暂停时保持 PC 不变
            pc <= pc_next;
    end

    assign debug_wb_pc = pc;

endmodule
