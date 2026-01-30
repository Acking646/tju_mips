`timescale 1ns / 1ns

/*------------------- 全局定义 -------------------*/
`define RST_ENABLE      1'b0                // 复位信号有效
`define RST_DISABLE     1'b1                // 复位信号无效
`define ZERO_WORD       32'h00000000        // 32位常量值0
`define WRITE_ENABLE    1'b1                // 使能写
`define WRITE_DISABLE   1'b0                // 禁止写
`define READ_ENABLE     1'b1                // 使能读
`define READ_DISABLE    1'b0                // 禁止读
`define ALUOP_BUS       7 : 0               // 执行阶段的控制aluop_o的宽度
`define SHIFT_ENABLE    1'b1                // 移位指令使能
`define ALUTYPE_BUS     2 : 0               // 执行阶段的控制alutype_o的宽度
`define TRUE_V          1'b1                // 逻辑"真"
`define FALSE_V         1'b0                // 逻辑"假"
`define WORD_BUS        31: 0               // 32位数据总线
`define DOUBLE_REG_BUS  63: 0               // 双字通用寄存器的数据总线宽度
`define RT_ENABLE       1'b1                // rt选择使能
`define SIGNED_EXT      1'b1                // 符号扩展使能
`define IMM_ENABLE      1'b1                // 立即数选择使能
`define UPPER_ENABLE    1'b1                // 高位立即数使能
`define MREG_ENABLE     1'b1                // 写回阶段存储到寄存器的选择信号
`define BSEL_BUS        3 : 0               // 数据存储器的字节选择信号宽度
`define PC_INIT         32'h80000000        // PC初始值

/*------------------- 指令定义 -------------------*/
`define INST_ADDR_BUS   31: 0               // 指令的地址总线宽度
`define INST_BUS        31: 0               // 指令的数据总线宽度

// 处理器类型alutype
`define NOP             3'b000
`define ARITH           3'b001
`define LOGIC           3'b010
`define MOVE            3'b011
`define SHIFT           3'b100
`define JUMP            3'b101              // JALR 需要用到此类跳转类型
`define JR              3'b110              // [新增] JR 指令需要用到此类型

// 内部操作码aluop
`define MINIMIPS32_LUI             8'h05
`define MINIMIPS32_MFHI            8'h0C
`define MINIMIPS32_MFLO            8'h0D
`define MINIMIPS32_MULT            8'h14
`define MINIMIPS32_DIV             8'h15    // [新增] 除法指令
`define MINIMIPS32_SLL             8'h11
`define MINIMIPS32_ADD             8'h18
`define MINIMIPS32_ADDIU           8'h19
`define MINIMIPS32_SUBU            8'h1B
`define MINIMIPS32_AND             8'h1C
`define MINIMIPS32_ORI             8'h1D
`define MINIMIPS32_SLT             8'h26
`define MINIMIPS32_SLTIU           8'h27
`define MINIMIPS32_LB              8'h90
`define MINIMIPS32_LW              8'h92
`define MINIMIPS32_SB              8'h98
`define MINIMIPS32_SW              8'h9A
`define MINIMIPS32_BEQ             8'h20    // [新增] BEQ 指令 (内部操作码)
`define MINIMIPS32_BNE             8'h22    // [新增] BNE 指令 (内部操作码)
`define MINIMIPS32_JR              8'h24    // [新增] JR 指令 (内部操作码)

// 移位指令的 ALU 操作码
`define MINIMIPS32_SRL             8'h12    // 逻辑右移 (R-type 移位指令)
`define MINIMIPS32_XOR             8'h1E    // 异或 (R-type 算术指令)
`define MINIMIPS32_NOR             8'h1F    // 或非 (R-type 算术指令)
`define MINIMIPS32_SRA             8'h03    // 算术右移指令

// 三类算术指令的 ALU 操作码定义
`define MINIMIPS32_ADDI            8'h20    // ADDI 指令 (带溢出)
`define MINIMIPS32_JALR            8'h09    // JALR 指令 (寄存器跳转)

/*------------------- 通用寄存器定义 -------------------*/
`define REG_BUS         31: 0               // 寄存器数据总线宽度
`define REG_ADDR_BUS    4 : 0               // 寄存器的地址总线宽度
`define REG_NUM         32                  // 寄存器总数32个
`define REG_NOP         5'b00000            // 零号寄存器