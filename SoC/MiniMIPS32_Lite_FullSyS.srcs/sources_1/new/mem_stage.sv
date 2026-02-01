`include "defines.v"

module mem_stage (

    // 从执行阶段获得的信息
    input  wire [`ALUOP_BUS     ]   mem_aluop_i,
    input  wire [`REG_ADDR_BUS  ]   mem_wa_i,
    input  wire                     mem_wreg_i,
    input  wire [`REG_BUS       ]   mem_wd_i,       // ALU运算结果 (也是内存地址)
    input  wire                     mem_mreg_i,     // 写回选择
    input  wire [`REG_BUS       ]   mem_din_i,      // 存储器写数据
    input  wire [`INST_ADDR_BUS ]   mem_debug_wb_pc,

    // 数据存储器接口
    output wire                     dre,            // 数据RAM读使能
    output wire [3:0]               dwe,            // 数据RAM写使能 (字节选择)
    output wire [`WORD_BUS      ]   daddr,          // 数据RAM地址
    output wire [`WORD_BUS      ]   dout,           // 数据RAM写数据
    input  wire [`WORD_BUS      ]   din,            // 数据RAM读数据

    // 送至写回阶段的信息
    output wire [`REG_ADDR_BUS  ]   mem_wa_o,
    output wire                     mem_wreg_o,
    output wire [`REG_BUS       ]   mem_dreg_o,     // 写回寄存器的数据

    output wire [`INST_ADDR_BUS ]   debug_wb_pc
    );

    // 识别Load/Store指令
    wire inst_lb = (mem_aluop_i == `MINIMIPS32_LB);
    wire inst_lw = (mem_aluop_i == `MINIMIPS32_LW);
    wire inst_sb = (mem_aluop_i == `MINIMIPS32_SB);
    wire inst_sw = (mem_aluop_i == `MINIMIPS32_SW);

    wire inst_load  = inst_lb | inst_lw;
    wire inst_store = inst_sb | inst_sw;

    // 数据存储器地址 (ALU计算的结果)
    assign daddr = mem_wd_i;

    // 数据存储器读使能
    assign dre = inst_load;

    // 数据存储器写使能 (字节选择)
    // SW: 写4字节, SB: 根据地址低2位选择写哪个字节
    // 只有 data_ram 区域需要大端到小端映射
    wire [1:0] byte_offset = daddr[1:0];
    wire is_data_ram_wr = (daddr[31:16] == 16'h8001);
    wire [1:0] sb_byte_sel_ram = 2'b11 - byte_offset;  // 大端到小端映射
    wire [1:0] sb_byte_sel = is_data_ram_wr ? sb_byte_sel_ram : byte_offset;
    assign dwe = inst_sw ? 4'b1111 :
                 inst_sb ? (4'b0001 << sb_byte_sel) : 4'b0000;

    // 数据存储器写数据
    // SW指令: 只有 data_ram 需要字节交换
    wire [`WORD_BUS] sw_data_swapped = {mem_din_i[7:0], mem_din_i[15:8], mem_din_i[23:16], mem_din_i[31:24]};
    // SB指令: 将数据复制到对应的字节位置 (已通过 dwe 选择正确的字节)
    wire [`WORD_BUS] sb_data = {4{mem_din_i[7:0]}};  // 复制到所有字节位置
    assign dout = inst_sw ? (is_data_ram_wr ? sw_data_swapped : mem_din_i) : sb_data;

    // Load数据处理
    // inst_rom (0x80000000-0x8000FFFF) 和 data_ram (0x80010000-0x8001FFFF) 需要字节交换
    // 串口等外设 (0xBFD0xxxx) 不需要字节交换
    wire is_rom_or_ram = (daddr[31:16] == 16'h8000) || (daddr[31:16] == 16'h8001);
    
    // 对从 ROM/RAM 读取的数据进行字节交换 (小端转大端)
    wire [`WORD_BUS] din_swapped = {din[7:0], din[15:8], din[23:16], din[31:24]};
    wire [`WORD_BUS] din_selected = is_rom_or_ram ? din_swapped : din;
    
    // LB: 根据地址选择字节，并进行符号扩展
    // 对于 ROM/RAM: 大端地址选择 (offset 0=最高字节)
    // 对于外设: 直接选择 (offset 0=最低字节)
    wire [7:0] lb_byte_mem = (byte_offset == 2'b00) ? din_swapped[31:24] :
                             (byte_offset == 2'b01) ? din_swapped[23:16] :
                             (byte_offset == 2'b10) ? din_swapped[15:8]  : din_swapped[7:0];
    wire [7:0] lb_byte_io  = (byte_offset == 2'b00) ? din[7:0]   :
                             (byte_offset == 2'b01) ? din[15:8]  :
                             (byte_offset == 2'b10) ? din[23:16] : din[31:24];
    wire [7:0] lb_byte = is_rom_or_ram ? lb_byte_mem : lb_byte_io;
    wire [`WORD_BUS] lb_data = {{24{lb_byte[7]}}, lb_byte};  // 符号扩展

    // LW: 根据地址选择是否字节交换
    wire [`WORD_BUS] lw_data = din_selected;

    // 选择load数据
    wire [`WORD_BUS] load_data = inst_lb ? lb_data : lw_data;

    // 写回数据选择: 如果是load指令则使用内存数据，否则使用ALU结果
    assign mem_dreg_o = mem_mreg_i ? load_data : mem_wd_i;

    // 直接传递
    assign mem_wa_o   = mem_wa_i;
    assign mem_wreg_o = mem_wreg_i;

    assign debug_wb_pc = mem_debug_wb_pc;

endmodule
