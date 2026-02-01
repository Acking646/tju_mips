`include "defines.v"

module MiniMIPS32_Lite(
    input  wire                     cpu_clk_50M,
    input  wire                     cpu_rst_n,

    // 指令ROM接口
    output wire [`INST_ADDR_BUS]    iaddr,
    input  wire [`INST_BUS]         inst,

    // 数据RAM接口
    output wire                     dre,            // 数据RAM读使能
    output wire [3:0]               dwe,            // 数据RAM写使能
    output wire [`WORD_BUS]         daddr,          // 数据RAM地址
    output wire [`WORD_BUS]         dout,           // 数据RAM写数据
    input  wire [`WORD_BUS]         din,            // 数据RAM读数据

    // 调试接口
    output wire [`INST_ADDR_BUS]    debug_wb_pc,
    output wire                     debug_wb_rf_wen,
    output wire [`REG_ADDR_BUS  ]   debug_wb_rf_wnum,
    output wire [`WORD_BUS      ]   debug_wb_rf_wdata
    );

    // IF阶段信号
    wire [`WORD_BUS      ]  pc;
    wire [`INST_ADDR_BUS ]  if_debug_wb_pc;

    // IF/ID流水线寄存器输出信号
    wire [`WORD_BUS      ]  id_pc_i;
    wire [`INST_BUS      ]  id_inst_i;
    wire [`INST_ADDR_BUS ]  id_debug_wb_pc_i;

    // ID阶段 - 寄存器堆接口
    wire [`REG_ADDR_BUS  ]  ra1;
    wire [`REG_BUS       ]  rd1;
    wire [`REG_ADDR_BUS  ]  ra2;
    wire [`REG_BUS       ]  rd2;

    // ID阶段输出信号
    wire [`ALUOP_BUS     ]  id_aluop_o;
    wire [`ALUTYPE_BUS   ]  id_alutype_o;
    wire [`REG_BUS       ]  id_src1_o;
    wire [`REG_BUS       ]  id_src2_o;
    wire                    id_wreg_o;
    wire [`REG_ADDR_BUS  ]  id_wa_o;
    wire                    id_mreg_o;
    wire [`REG_BUS       ]  id_din_o;
    wire                    jtsel;
    wire [`INST_ADDR_BUS ]  jump_addr;
    wire [`INST_ADDR_BUS ]  id_debug_wb_pc_o;

    // ID/EXE流水线寄存器输出信号
    wire [`ALUOP_BUS     ]  exe_aluop_i;
    wire [`ALUTYPE_BUS   ]  exe_alutype_i;
    wire [`REG_BUS       ]  exe_src1_i;
    wire [`REG_BUS       ]  exe_src2_i;
    wire                    exe_wreg_i;
    wire [`REG_ADDR_BUS  ]  exe_wa_i;
    wire                    exe_mreg_i;
    wire [`REG_BUS       ]  exe_din_i;
    wire [`INST_ADDR_BUS ]  exe_debug_wb_pc_i;

    // EXE阶段输出信号
    wire [`ALUOP_BUS     ]  exe_aluop_o;
    wire                    exe_wreg_o;
    wire [`REG_ADDR_BUS  ]  exe_wa_o;
    wire [`REG_BUS       ]  exe_wd_o;
    wire                    exe_mreg_o;
    wire [`REG_BUS       ]  exe_din_o;
    wire [`INST_ADDR_BUS ]  exe_debug_wb_pc_o;

    // EXE/MEM流水线寄存器输出信号
    wire [`ALUOP_BUS     ]  mem_aluop_i;
    wire                    mem_wreg_i;
    wire [`REG_ADDR_BUS  ]  mem_wa_i;
    wire [`REG_BUS       ]  mem_wd_i;
    wire                    mem_mreg_i;
    wire [`REG_BUS       ]  mem_din_i;
    wire [`INST_ADDR_BUS ]  mem_debug_wb_pc_i;

    // MEM阶段输出信号
    wire                    mem_wreg_o;
    wire [`REG_ADDR_BUS  ]  mem_wa_o;
    wire [`REG_BUS       ]  mem_dreg_o;
    wire [`INST_ADDR_BUS ]  mem_debug_wb_pc_o;

    // MEM/WB流水线寄存器输出信号
    wire                    wb_wreg_i;
    wire [`REG_ADDR_BUS  ]  wb_wa_i;
    wire [`REG_BUS       ]  wb_dreg_i;
    wire [`INST_ADDR_BUS ]  wb_debug_wb_pc_i;

    // WB阶段输出信号
    wire                    wb_wreg_o;
    wire [`REG_ADDR_BUS  ]  wb_wa_o;
    wire [`REG_BUS       ]  wb_wd_o;

    // 流水线暂停信号
    wire                    stallreq_id;    // ID阶段请求暂停
    wire                    stall;          // 总暂停信号
    assign stall = stallreq_id;

    //==========================================================================
    // IF阶段：取指
    //==========================================================================
    if_stage if_stage0(
        .cpu_clk_50M    (cpu_clk_50M),
        .cpu_rst_n      (cpu_rst_n),
        .jtsel          (jtsel),
        .jump_addr      (jump_addr),
        .stall          (stall),
        .pc             (pc),
        .debug_wb_pc    (if_debug_wb_pc)
    );

    assign iaddr = pc;

    //==========================================================================
    // IF/ID流水线寄存器
    //==========================================================================
    ifid_reg ifid_reg0(
        .cpu_clk_50M    (cpu_clk_50M),
        .cpu_rst_n      (cpu_rst_n),
        .if_pc          (pc),
        .if_debug_wb_pc (if_debug_wb_pc),
        .inst           (inst),
        .flush          (jtsel),
        .stall          (stall),
        .id_pc          (id_pc_i),
        .id_inst        (id_inst_i),
        .id_debug_wb_pc (id_debug_wb_pc_i)
    );

    //==========================================================================
    // ID阶段：译码
    //==========================================================================
    id_stage id_stage0(
        .id_pc_i        (id_pc_i),
        .id_inst_i      (id_inst_i),
        .id_debug_wb_pc (id_debug_wb_pc_i),
        .rd1            (rd1),
        .rd2            (rd2),
        // 数据前推输入
        .exe2id_wreg    (exe_wreg_o),
        .exe2id_wa      (exe_wa_o),
        .exe2id_wd      (exe_wd_o),
        .exe2id_mreg    (exe_mreg_o),       // EXE阶段是否是Load指令
        .mem2id_wreg    (mem_wreg_o),
        .mem2id_wa      (mem_wa_o),
        .mem2id_wd      (mem_dreg_o),
        .wb2id_wreg     (wb_wreg_o),
        .wb2id_wa       (wb_wa_o),
        .wb2id_wd       (wb_wd_o),
        // 输出
        .ra1            (ra1),
        .ra2            (ra2),
        .id_aluop_o     (id_aluop_o),
        .id_alutype_o   (id_alutype_o),
        .id_src1_o      (id_src1_o),
        .id_src2_o      (id_src2_o),
        .id_wa_o        (id_wa_o),
        .id_wreg_o      (id_wreg_o),
        .id_mreg_o      (id_mreg_o),
        .id_din_o       (id_din_o),
        .jtsel          (jtsel),
        .jump_addr      (jump_addr),
        .stallreq       (stallreq_id),
        .debug_wb_pc    (id_debug_wb_pc_o)
    );

    //==========================================================================
    // 寄存器堆
    //==========================================================================
    regfile regfile0(
        .cpu_clk_50M    (cpu_clk_50M),
        .cpu_rst_n      (cpu_rst_n),
        .we             (wb_wreg_o),
        .wa             (wb_wa_o),
        .wd             (wb_wd_o),
        .ra1            (ra1),
        .rd1            (rd1),
        .ra2            (ra2),
        .rd2            (rd2)
    );

    //==========================================================================
    // ID/EXE流水线寄存器
    //==========================================================================
    idexe_reg idexe_reg0(
        .cpu_clk_50M    (cpu_clk_50M),
        .cpu_rst_n      (cpu_rst_n),
        .id_alutype     (id_alutype_o),
        .id_aluop       (id_aluop_o),
        .id_src1        (id_src1_o),
        .id_src2        (id_src2_o),
        .id_wa          (id_wa_o),
        .id_wreg        (id_wreg_o),
        .id_mreg        (id_mreg_o),
        .id_din         (id_din_o),
        .id_debug_wb_pc (id_debug_wb_pc_o),
        .stall          (stall),
        .exe_alutype    (exe_alutype_i),
        .exe_aluop      (exe_aluop_i),
        .exe_src1       (exe_src1_i),
        .exe_src2       (exe_src2_i),
        .exe_wa         (exe_wa_i),
        .exe_wreg       (exe_wreg_i),
        .exe_mreg       (exe_mreg_i),
        .exe_din        (exe_din_i),
        .exe_debug_wb_pc(exe_debug_wb_pc_i)
    );

    //==========================================================================
    // EXE阶段：执行
    //==========================================================================
    exe_stage exe_stage0(
        .exe_alutype_i  (exe_alutype_i),
        .exe_aluop_i    (exe_aluop_i),
        .exe_src1_i     (exe_src1_i),
        .exe_src2_i     (exe_src2_i),
        .exe_wa_i       (exe_wa_i),
        .exe_wreg_i     (exe_wreg_i),
        .exe_mreg_i     (exe_mreg_i),
        .exe_din_i      (exe_din_i),
        .exe_debug_wb_pc(exe_debug_wb_pc_i),
        .exe_aluop_o    (exe_aluop_o),
        .exe_wa_o       (exe_wa_o),
        .exe_wreg_o     (exe_wreg_o),
        .exe_wd_o       (exe_wd_o),
        .exe_mreg_o     (exe_mreg_o),
        .exe_din_o      (exe_din_o),
        .debug_wb_pc    (exe_debug_wb_pc_o)
    );

    //==========================================================================
    // EXE/MEM流水线寄存器
    //==========================================================================
    exemem_reg exemem_reg0(
        .cpu_clk_50M    (cpu_clk_50M),
        .cpu_rst_n      (cpu_rst_n),
        .exe_aluop      (exe_aluop_o),
        .exe_wa         (exe_wa_o),
        .exe_wreg       (exe_wreg_o),
        .exe_wd         (exe_wd_o),
        .exe_mreg       (exe_mreg_o),
        .exe_din        (exe_din_o),
        .exe_debug_wb_pc(exe_debug_wb_pc_o),
        .mem_aluop      (mem_aluop_i),
        .mem_wa         (mem_wa_i),
        .mem_wreg       (mem_wreg_i),
        .mem_wd         (mem_wd_i),
        .mem_mreg       (mem_mreg_i),
        .mem_din        (mem_din_i),
        .mem_debug_wb_pc(mem_debug_wb_pc_i)
    );

    //==========================================================================
    // MEM阶段：访存
    //==========================================================================
    mem_stage mem_stage0(
        .mem_aluop_i    (mem_aluop_i),
        .mem_wa_i       (mem_wa_i),
        .mem_wreg_i     (mem_wreg_i),
        .mem_wd_i       (mem_wd_i),
        .mem_mreg_i     (mem_mreg_i),
        .mem_din_i      (mem_din_i),
        .mem_debug_wb_pc(mem_debug_wb_pc_i),
        // 数据RAM接口
        .dre            (dre),
        .dwe            (dwe),
        .daddr          (daddr),
        .dout           (dout),
        .din            (din),
        // 输出
        .mem_wa_o       (mem_wa_o),
        .mem_wreg_o     (mem_wreg_o),
        .mem_dreg_o     (mem_dreg_o),
        .debug_wb_pc    (mem_debug_wb_pc_o)
    );

    //==========================================================================
    // MEM/WB流水线寄存器
    //==========================================================================
    memwb_reg memwb_reg0(
        .cpu_clk_50M    (cpu_clk_50M),
        .cpu_rst_n      (cpu_rst_n),
        .mem_wa         (mem_wa_o),
        .mem_wreg       (mem_wreg_o),
        .mem_dreg       (mem_dreg_o),
        .mem_debug_wb_pc(mem_debug_wb_pc_o),
        .wb_wa          (wb_wa_i),
        .wb_wreg        (wb_wreg_i),
        .wb_dreg        (wb_dreg_i),
        .wb_debug_wb_pc (wb_debug_wb_pc_i)
    );

    //==========================================================================
    // WB阶段：写回
    //==========================================================================
    wb_stage wb_stage0(
        .wb_wa_i        (wb_wa_i),
        .wb_wreg_i      (wb_wreg_i),
        .wb_dreg_i      (wb_dreg_i),
        .wb_debug_wb_pc (wb_debug_wb_pc_i),
        .wb_wa_o        (wb_wa_o),
        .wb_wreg_o      (wb_wreg_o),
        .wb_wd_o        (wb_wd_o),
        .debug_wb_pc    (debug_wb_pc),
        .debug_wb_rf_wen(debug_wb_rf_wen),
        .debug_wb_rf_wnum(debug_wb_rf_wnum),
        .debug_wb_rf_wdata(debug_wb_rf_wdata)
    );

endmodule
