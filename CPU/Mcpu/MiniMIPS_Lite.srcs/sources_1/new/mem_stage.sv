`include "defines.v"

module mem_stage (
    // [新增] 复位信号 (建议添加，用于初始化输出)
    input  wire                  rst,

    // 从执行阶段获得的信息
    input  wire [`ALUOP_BUS    ] mem_aluop_i,
    input  wire [`REG_ADDR_BUS ] mem_wa_i,
    input  wire                  mem_wreg_i,
    input  wire [`REG_BUS      ] mem_wd_i,      // 也是内存地址 (calculated address)
    
    // [新增] 要写入内存的数据 (sw指令)
    input  wire [`REG_BUS      ] mem_mem_data_i,
    
    input  wire [`INST_ADDR_BUS] mem_debug_wb_pc,

    // [新增] 与 Data RAM 交互的接口
    input  wire [`REG_BUS      ] data_rdata_i,  // Data RAM读出的数据 (lw)
    output reg  [`REG_BUS      ] data_addr_o,   // Data RAM地址
    output reg  [`REG_BUS      ] data_wdata_o,  // Data RAM写入数据 (sw)
    output reg                   data_wen_o,    // Data RAM写使能
    
    // 送至写回阶段的信息
    output reg  [`REG_ADDR_BUS ] mem_wa_o,
    output reg                   mem_wreg_o,
    output reg  [`REG_BUS      ] mem_dreg_o,    // 最终要写入寄存器的数据
    
    output wire [`INST_ADDR_BUS] debug_wb_pc
    );

    assign debug_wb_pc = mem_debug_wb_pc;

    always @ (*) begin
        if(rst == `RST_ENABLE) begin
            mem_wa_o     = `REG_NOP;
            mem_wreg_o   = `WRITE_DISABLE;
            mem_dreg_o   = `ZERO_WORD;
            data_addr_o  = `ZERO_WORD;
            data_wdata_o = `ZERO_WORD;
            data_wen_o   = `WRITE_DISABLE;
        end else begin
            // --- 默认透传逻辑 (适用于大多数算术指令) ---
            mem_wa_o     = mem_wa_i;
            mem_wreg_o   = mem_wreg_i;
            mem_dreg_o   = mem_wd_i; // 默认：结果就是ALU算出来的结果 (e.g., add result)
            
            // --- RAM 接口默认值 ---
            data_wen_o   = `WRITE_DISABLE;
            data_addr_o  = mem_wd_i;       // 内存地址总是 ALU 计算出的结果 (base + offset)
            data_wdata_o = mem_mem_data_i; // 写入数据总是来自 rt 寄存器

            // --- 特殊指令处理 (Load / Store) ---
            case (mem_aluop_i)
                // Load Word (lw)
                `MINIMIPS32_LW: begin
                    // 对于 Load 指令，写入寄存器的数据来自 RAM，而不是 ALU
                    mem_dreg_o = data_rdata_i; 
                    // mem_wreg_o 保持为 Enable (ID阶段已设定)
                end

                // Store Word (sw)
                `MINIMIPS32_SW: begin
                    // 对于 Store 指令，使能 RAM 写信号
                    data_wen_o = `WRITE_ENABLE;
                    // mem_wreg_o 保持为 Disable (ID阶段已设定)
                end
                
                // 其他指令 (如 add, sra, jalr) 直接使用上面的默认透传逻辑即可
                default: begin
                    // do nothing
                end
            endcase
        end
    end

endmodule