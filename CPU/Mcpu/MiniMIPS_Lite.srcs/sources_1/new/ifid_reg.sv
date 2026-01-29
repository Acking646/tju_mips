`include "defines.v"

module ifid_reg (
	input  wire 						cpu_clk_50M,
	input  wire 						cpu_rst_n,
    
    // [新增] 暂停信号 (stall[1])
    input  wire [5:0]                   stall,

	input  wire [`INST_ADDR_BUS]       if_pc,
	input  wire [`INST_ADDR_BUS]       if_debug_wb_pc, 
	input  wire [`INST_BUS     ]       inst,
	
	output reg  [`INST_ADDR_BUS]       id_pc,
	output reg  [`INST_BUS     ]       id_inst,
	output reg  [`INST_ADDR_BUS] 	   id_debug_wb_pc 
	);

	always @(posedge cpu_clk_50M) begin
		if (cpu_rst_n == `RST_ENABLE) begin
			id_pc 	<= `PC_INIT;
			id_inst  <= `ZERO_WORD;
			id_debug_wb_pc <= `PC_INIT;   
		end else if (stall[1] == `TRUE_V && stall[2] == `FALSE_V) begin
            // [新增] 如果 IF/ID 暂停且 ID/EXE 不暂停，说明要插入气泡 (Flush)
            // 但 Load-Use 暂停通常是保持 IF/ID 不变，所以这里通常保持
            id_pc    <= id_pc;
            id_inst  <= id_inst;
            id_debug_wb_pc <= id_debug_wb_pc;
        end else if (stall[1] == `TRUE_V) begin
            // [新增] 暂停：保持当前值不变
            id_pc    <= id_pc;
            id_inst  <= id_inst;
            id_debug_wb_pc <= id_debug_wb_pc;
        end else begin
			id_pc	<= if_pc;
			id_inst  <= inst;	
			id_debug_wb_pc <= if_debug_wb_pc;   
		end
	end
endmodule