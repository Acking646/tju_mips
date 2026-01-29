`include "defines.v"

module idexe_reg (
    input  wire                   cpu_clk_50M,
    input  wire                   cpu_rst_n,

    // 来自译码阶段的信息
    input  wire [`ALUTYPE_BUS  ]  id_alutype,
    input  wire [`ALUOP_BUS    ]  id_aluop,
    input  wire [`REG_BUS      ]  id_src1,
    input  wire [`REG_BUS      ]  id_src2,
    input  wire [`REG_ADDR_BUS ]  id_wa,
    input  wire                   id_wreg,
    
    // [新增 Fix 2] Store Data 输入
    input  wire [`REG_BUS      ]  id_store_data,
    
    input  wire [`INST_ADDR_BUS]  id_debug_wb_pc, 
    
    // 送至执行阶段的信息
    output reg  [`ALUTYPE_BUS  ]  exe_alutype,
    output reg  [`ALUOP_BUS    ]  exe_aluop,
    output reg  [`REG_BUS      ]  exe_src1,
    output reg  [`REG_BUS      ]  exe_src2,
    output reg  [`REG_ADDR_BUS ]  exe_wa,
    output reg                    exe_wreg,
    
    // [新增 Fix 2] Store Data 输出
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
            exe_store_data     <= `ZERO_WORD; // 清零
            exe_debug_wb_pc    <= `PC_INIT; 
        end else begin
            exe_alutype        <= id_alutype;
            exe_aluop          <= id_aluop;
            exe_src1           <= id_src1;
            exe_src2           <= id_src2;
            exe_wa             <= id_wa;
            exe_wreg           <= id_wreg;
            exe_store_data     <= id_store_data; // 传递
            exe_debug_wb_pc    <= id_debug_wb_pc;
        end
    end
endmodule