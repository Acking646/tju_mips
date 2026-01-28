`include "defines.v"

module MiniMIPS32_Lite(
    input  wire                  cpu_clk_50M,
    input  wire                  cpu_rst_n,
    
    // [接口1] 指令存储器接口 (Inst ROM)
    output wire [`INST_ADDR_BUS] iaddr,
    input  wire [`INST_BUS]      inst,
    
    // [接口2] 数据存储器接口 (Data RAM)
    output wire                  data_wen,    // 写使能
    output wire [`WORD_BUS]      data_addr,   // 数据地址
    output wire [`WORD_BUS]      data_wdata,  // 写入的数据
    input  wire [`WORD_BUS]      data_rdata,  // 读出的数据

    // [接口3] 调试接口
    output wire [`INST_ADDR_BUS]  debug_wb_pc,       
    output wire                   debug_wb_rf_wen,   
    output wire [`REG_ADDR_BUS  ] debug_wb_rf_wnum,  
    output wire [`WORD_BUS      ] debug_wb_rf_wdata  
    );

    wire [`WORD_BUS      ] pc;

    // 连接IF/ID模块与译码阶段ID模块的变量 
    wire [`WORD_BUS      ] id_pc_i;
    wire [`INST_BUS      ] id_inst_i;
    
    // 连接译码阶段ID模块与通用寄存器Regfile模块的变量 
    wire [`REG_ADDR_BUS  ] ra1;
    wire [`REG_BUS       ] rd1;
    wire [`REG_ADDR_BUS  ] ra2;
    wire [`REG_BUS       ] rd2;
    
    // [新增] 跳转控制信号连接 (ID -> IF)
    wire                   branch_flag;
    wire [`INST_ADDR_BUS]  branch_target;

    // ID -> ID/EXE
    wire [`ALUOP_BUS     ] id_aluop_o;
    wire [`ALUTYPE_BUS   ] id_alutype_o;
    wire [`REG_BUS       ] id_src1_o;
    wire [`REG_BUS       ] id_src2_o;
    wire                   id_wreg_o;
    wire [`REG_ADDR_BUS  ] id_wa_o;
    
    // ID/EXE -> EXE
    wire [`ALUOP_BUS     ] exe_aluop_i;
    wire [`ALUTYPE_BUS   ] exe_alutype_i;
    wire [`REG_BUS       ] exe_src1_i;
    wire [`REG_BUS       ] exe_src2_i;
    wire                   exe_wreg_i;
    wire [`REG_ADDR_BUS  ] exe_wa_i;
    
    // EXE -> EXE/MEM
    wire [`ALUOP_BUS     ] exe_aluop_o;
    wire                   exe_wreg_o;
    wire [`REG_ADDR_BUS  ] exe_wa_o;
    wire [`REG_BUS       ] exe_wd_o;
    wire [`REG_BUS       ] exe_mem_data_o; 
    
    // EXE/MEM -> MEM
    wire [`ALUOP_BUS     ] mem_aluop_i;
    wire                   mem_wreg_i;
    wire [`REG_ADDR_BUS  ] mem_wa_i;
    wire [`REG_BUS       ] mem_wd_i;       
    wire [`REG_BUS       ] mem_mem_data_i; 
    
    // MEM -> MEM/WB
    wire                   mem_wreg_o;
    wire [`REG_ADDR_BUS  ] mem_wa_o;
    wire [`REG_BUS       ] mem_dreg_o;     
    
    // MEM/WB -> WB
    wire                   wb_wreg_i;
    wire [`REG_ADDR_BUS  ] wb_wa_i;
    wire [`REG_BUS       ] wb_dreg_i;

    // WB -> Regfile
    wire                   wb_wreg_o;
    wire [`REG_ADDR_BUS  ] wb_wa_o;
    wire [`REG_BUS       ] wb_wd_o;
    
    // Debug 信号
    wire [`INST_ADDR_BUS]  if_debug_wb_pc;
    wire [`INST_ADDR_BUS]  id_debug_wb_pc_i; 
    wire [`INST_ADDR_BUS]  id_debug_wb_pc_o; 
    wire [`INST_ADDR_BUS]  exe_debug_wb_pc_i; 
    wire [`INST_ADDR_BUS]  exe_debug_wb_pc_o; 
    wire [`INST_ADDR_BUS]  mem_debug_wb_pc_i; 
    wire [`INST_ADDR_BUS]  mem_debug_wb_pc_o; 
    wire [`INST_ADDR_BUS]  wb_debug_wb_pc_i; 

    // 1. 取指阶段 (已连接跳转信号)
    if_stage if_stage0(
        .cpu_clk_50M(cpu_clk_50M), .cpu_rst_n(cpu_rst_n),
        .pc(pc), 
        
        // [连接] 跳转输入
        .branch_flag_i(branch_flag),
        .branch_target_i(branch_target),
        
        .debug_wb_pc(if_debug_wb_pc)
    );
    assign iaddr = pc; 
    
    ifid_reg ifid_reg0(
        .cpu_clk_50M(cpu_clk_50M), .cpu_rst_n(cpu_rst_n),
        .inst(inst), .if_pc(pc), .if_debug_wb_pc(if_debug_wb_pc),
        .id_inst(id_inst_i), .id_pc(id_pc_i), .id_debug_wb_pc(id_debug_wb_pc_i)
    );

    // 2. 译码阶段 (已连接跳转信号)
    id_stage id_stage0(
        .id_pc_i(id_pc_i), 
        .id_inst_i(id_inst_i),
        .id_debug_wb_pc(id_debug_wb_pc_i),
        .rd1(rd1), .rd2(rd2),      
        .ra1(ra1), .ra2(ra2), 
        .id_aluop_o(id_aluop_o), .id_alutype_o(id_alutype_o),
        .id_src1_o(id_src1_o), .id_src2_o(id_src2_o),
        .id_wa_o(id_wa_o), .id_wreg_o(id_wreg_o),
        
        // [连接] 跳转输出
        .branch_flag_o(branch_flag),
        .branch_target_o(branch_target),
        
        .debug_wb_pc(id_debug_wb_pc_o)
    );
    
    regfile regfile0(
        .cpu_clk_50M(cpu_clk_50M), .cpu_rst_n(cpu_rst_n),
        .we(wb_wreg_o), .wa(wb_wa_o), .wd(wb_wd_o),
        .ra1(ra1), .rd1(rd1),
        .ra2(ra2), .rd2(rd2)
    );
    
    idexe_reg idexe_reg0(
        .cpu_clk_50M(cpu_clk_50M), .cpu_rst_n(cpu_rst_n), 
        .id_alutype(id_alutype_o), .id_aluop(id_aluop_o),
        .id_src1(id_src1_o), .id_src2(id_src2_o),
        .id_wa(id_wa_o), .id_wreg(id_wreg_o),
        .id_debug_wb_pc(id_debug_wb_pc_o),
        // Outputs
        .exe_alutype(exe_alutype_i), .exe_aluop(exe_aluop_i),
        .exe_src1(exe_src1_i), .exe_src2(exe_src2_i), 
        .exe_wa(exe_wa_i), .exe_wreg(exe_wreg_i),
        .exe_debug_wb_pc(exe_debug_wb_pc_i)
    );
    
    // 3. 执行阶段
    exe_stage exe_stage0(
        .rst(cpu_rst_n), 
        .exe_alutype_i(exe_alutype_i), .exe_aluop_i(exe_aluop_i),
        .exe_src1_i(exe_src1_i), .exe_src2_i(exe_src2_i),
        .exe_wa_i(exe_wa_i), .exe_wreg_i(exe_wreg_i),
        .exe_debug_wb_pc(exe_debug_wb_pc_i),
        // Outputs
        .exe_aluop_o(exe_aluop_o),
        .exe_wa_o(exe_wa_o), .exe_wreg_o(exe_wreg_o), .exe_wd_o(exe_wd_o),
        .exe_mem_data_o(exe_mem_data_o), 
        .debug_wb_pc(exe_debug_wb_pc_o)
    );
        
    exemem_reg exemem_reg0(
        .cpu_clk_50M(cpu_clk_50M), .cpu_rst_n(cpu_rst_n),
        .exe_aluop(exe_aluop_o),
        .exe_wa(exe_wa_o), .exe_wreg(exe_wreg_o), .exe_wd(exe_wd_o),
        .exe_mem_data(exe_mem_data_o), 
        .exe_debug_wb_pc(exe_debug_wb_pc_o),
        // Outputs
        .mem_aluop(mem_aluop_i),
        .mem_wa(mem_wa_i), .mem_wreg(mem_wreg_i), .mem_wd(mem_wd_i),
        .mem_mem_data(mem_mem_data_i), 
        .mem_debug_wb_pc(mem_debug_wb_pc_i)
    );

    // 4. 访存阶段
    mem_stage mem_stage0(
        .rst(cpu_rst_n),
        .mem_aluop_i(mem_aluop_i),
        .mem_wa_i(mem_wa_i), .mem_wreg_i(mem_wreg_i), 
        .mem_wd_i(mem_wd_i),       
        .mem_mem_data_i(mem_mem_data_i), 
        .mem_debug_wb_pc(mem_debug_wb_pc_i),
        
        // 与 Data RAM 的交互端口
        .data_rdata_i(data_rdata), 
        .data_addr_o(data_addr),   
        .data_wdata_o(data_wdata), 
        .data_wen_o(data_wen),     
        
        // 流水线传递信号
        .mem_wa_o(mem_wa_o), .mem_wreg_o(mem_wreg_o), .mem_dreg_o(mem_dreg_o),
        .debug_wb_pc(mem_debug_wb_pc_o)
    );
    
    memwb_reg memwb_reg0(
        .cpu_clk_50M(cpu_clk_50M), .cpu_rst_n(cpu_rst_n),
        .mem_wa(mem_wa_o), .mem_wreg(mem_wreg_o), .mem_dreg(mem_dreg_o),
        .mem_debug_wb_pc(mem_debug_wb_pc_o),
        // Outputs
        .wb_wa(wb_wa_i), .wb_wreg(wb_wreg_i), .wb_dreg(wb_dreg_i),
        .wb_debug_wb_pc(wb_debug_wb_pc_i)
    );

    // 5. 写回阶段
    wb_stage wb_stage0(
        .wb_wa_i(wb_wa_i), .wb_wreg_i(wb_wreg_i), .wb_dreg_i(wb_dreg_i), 
        .wb_debug_wb_pc(wb_debug_wb_pc_i),
        // Outputs
        .wb_wa_o(wb_wa_o), .wb_wreg_o(wb_wreg_o), .wb_wd_o(wb_wd_o),
        .debug_wb_pc(debug_wb_pc),        
        .debug_wb_rf_wen(debug_wb_rf_wen),    
        .debug_wb_rf_wnum(debug_wb_rf_wnum),   
        .debug_wb_rf_wdata(debug_wb_rf_wdata)   
    );

endmodule