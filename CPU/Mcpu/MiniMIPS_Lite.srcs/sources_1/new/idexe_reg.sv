`include "defines.v"

module idexe_reg (
    input  wire                   cpu_clk_50M,
    input  wire                   cpu_rst_n,
    
    // [新增] 暂停信号 (stall[2])
    input  wire [5:0]             stall,

    input  wire [`ALUTYPE_BUS  ]  id_alutype,
    input  wire [`ALUOP_BUS    ]  id_aluop,
    input  wire [`REG_BUS      ]  id_src1,
    input  wire [`REG_BUS      ]  id_src2,
    input  wire [`REG_ADDR_BUS ]  id_wa,
    input  wire                   id_wreg,
    input  wire [`REG_BUS      ]  id_store_data,
    input  wire [`INST_ADDR_BUS]  id_debug_wb_pc, 
    
    output reg  [`ALUTYPE_BUS  ]  exe_alutype,
    output reg  [`ALUOP_BUS    ]  exe_aluop,
    output reg  [`REG_BUS      ]  exe_src1,
    output reg  [`REG_BUS      ]  exe_src2,
    output reg  [`REG_ADDR_BUS ]  exe_wa,
    output reg                    exe_wreg,
    output reg  [`REG_BUS      ]  exe_store_data,
    output reg  [`INST_ADDR_BUS]  exe_debug_wb_pc 
    );

    always @(posedge cpu_clk_50M) begin
        if (cpu_rst_n == `RST_ENABLE) begin
            exe_alutype        <= `NOP;
            exe_aluop          <= `MINIMIPS32_SLL;
            exe_src1           <= `ZERO_WORD;
            exe_src2           <= `ZERO_WORD;
            exe_wa             <= `REG_NOP;
            exe_wreg           <= `WRITE_DISABLE;
            exe_store_data     <= `ZERO_WORD;
            exe_debug_wb_pc    <= `PC_INIT; 
        end else if (stall[2] == `TRUE_V && stall[3] == `FALSE_V) begin
            // [新增] 关键！如果 ID/EXE 请求暂停（气泡），则清空输出 (插入 NOP)
            exe_alutype        <= `NOP;
            exe_aluop          <= `MINIMIPS32_SLL;
            exe_src1           <= `ZERO_WORD;
            exe_src2           <= `ZERO_WORD;
            exe_wa             <= `REG_NOP;
            exe_wreg           <= `WRITE_DISABLE;
            exe_store_data     <= `ZERO_WORD;
            exe_debug_wb_pc    <= `PC_INIT;
        end else if (stall[2] == `TRUE_V) begin
            // 暂停保持（通常 Load-Use 不会用到这个分支，因为 EXE 阶段要继续跑）
            exe_alutype        <= exe_alutype;
            exe_aluop          <= exe_aluop;
            exe_src1           <= exe_src1;
            exe_src2           <= exe_src2;
            exe_wa             <= exe_wa;
            exe_wreg           <= exe_wreg;
            exe_store_data     <= exe_store_data;
            exe_debug_wb_pc    <= exe_debug_wb_pc;
        end else begin
            exe_alutype        <= id_alutype;
            exe_aluop          <= id_aluop;
            exe_src1           <= id_src1;
            exe_src2           <= id_src2;
            exe_wa             <= id_wa;
            exe_wreg           <= id_wreg;
            exe_store_data     <= id_store_data; 
            exe_debug_wb_pc    <= id_debug_wb_pc;
        end
    end
endmodule