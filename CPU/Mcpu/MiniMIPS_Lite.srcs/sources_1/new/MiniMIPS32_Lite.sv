`include "defines.v"

module MiniMIPS32_Lite(
    input  wire                  cpu_clk_50M,
    input  wire                  cpu_rst_n,
    
    output wire [`INST_ADDR_BUS] iaddr,
    input  wire [`INST_BUS]      inst,
    output wire                  data_wen,    
    output wire [`WORD_BUS]      data_addr,   
    output wire [`WORD_BUS]      data_wdata,  
    input  wire [`WORD_BUS]      data_rdata,  
    output wire [`INST_ADDR_BUS]  debug_wb_pc,       
    output wire                   debug_wb_rf_wen,   
    output wire [`REG_ADDR_BUS  ] debug_wb_rf_wnum,  
    output wire [`WORD_BUS      ] debug_wb_rf_wdata  
    );

    // [新增] 暂停信号链
    wire [5:0] stall;
    wire       stallreq_from_id;

    wire [`WORD_BUS      ] pc;
    wire [`WORD_BUS      ] id_pc_i;
    wire [`INST_BUS      ] id_inst_i;
    
    wire [`REG_ADDR_BUS  ] ra1;
    wire [`REG_BUS       ] rd1;
    wire [`REG_ADDR_BUS  ] ra2;
    wire [`REG_BUS       ] rd2;
    
    wire                   branch_flag;
    wire [`INST_ADDR_BUS]  branch_target;

    wire [`ALUOP_BUS     ] id_aluop_o;
    wire [`ALUTYPE_BUS   ] id_alutype_o;
    wire [`REG_BUS       ] id_src1_o;
    wire [`REG_BUS       ] id_src2_o;
    wire                   id_wreg_o;
    wire [`REG_ADDR_BUS  ] id_wa_o;
    
    wire [`REG_BUS       ] id_store_data_o;
    wire [`REG_BUS       ] exe_store_data_i;

    wire [`ALUOP_BUS     ] exe_aluop_i;
    wire [`ALUTYPE_BUS   ] exe_alutype_i;
    wire [`REG_BUS       ] exe_src1_i;
    wire [`REG_BUS       ] exe_src2_i;
    wire                   exe_wreg_i;
    wire [`REG_ADDR_BUS  ] exe_wa_i;
    
    wire [`ALUOP_BUS     ] exe_aluop_o;
    wire                   exe_wreg_o;
    wire [`REG_ADDR_BUS  ] exe_wa_o;
    wire [`REG_BUS       ] exe_wd_o;       
    wire [`REG_BUS       ] exe_mem_data_o; 
    
    wire [`ALUOP_BUS     ] mem_aluop_i;
    wire                   mem_wreg_i;
    wire [`REG_ADDR_BUS  ] mem_wa_i;
    wire [`REG_BUS       ] mem_wd_i;       
    wire [`REG_BUS       ] mem_mem_data_i; 
    
    wire                   mem_wreg_o;
    wire [`REG_ADDR_BUS  ] mem_wa_o;
    wire [`REG_BUS       ] mem_dreg_o;     
    
    wire                   wb_wreg_i;
    wire [`REG_ADDR_BUS  ] wb_wa_i;
    wire [`REG_BUS       ] wb_dreg_i;

    wire                   wb_wreg_o;
    wire [`REG_ADDR_BUS  ] wb_wa_o;
    wire [`REG_BUS       ] wb_wd_o;
    
    wire [`INST_ADDR_BUS]  if_debug_wb_pc;
    wire [`INST_ADDR_BUS]  id_debug_wb_pc_i; 
    wire [`INST_ADDR_BUS]  id_debug_wb_pc_o; 
    wire [`INST_ADDR_BUS]  exe_debug_wb_pc_i; 
    wire [`INST_ADDR_BUS]  exe_debug_wb_pc_o; 
    wire [`INST_ADDR_BUS]  mem_debug_wb_pc_i; 
    wire [`INST_ADDR_BUS]  mem_debug_wb_pc_o; 
    wire [`INST_ADDR_BUS]  wb_debug_wb_pc_i; 

    // =========================================================
    // 0. 实例化流控制器
    // =========================================================
    ctrl ctrl0(
        .rst(cpu_rst_n),
        .stallreq_from_id(stallreq_from_id),
        .stall(stall)
    );

    // 1. 取指阶段
    if_stage if_stage0(
        .cpu_clk_50M(cpu_clk_50M), .cpu_rst_n(cpu_rst_n),
        .stall(stall), // [连] 暂停
        .pc(pc), 
        .branch_flag_i(branch_flag),
        .branch_target_i(branch_target),
        .debug_wb_pc(if_debug_wb_pc)
    );
    assign iaddr = pc; 
    
    ifid_reg ifid_reg0(
        .cpu_clk_50M(cpu_clk_50M), .cpu_rst_n(cpu_rst_n),
        .stall(stall), // [连] 暂停
        .inst(inst), .if_pc(pc), .if_debug_wb_pc(if_debug_wb_pc),
        .id_inst(id_inst_i), .id_pc(id_pc_i), .id_debug_wb_pc(id_debug_wb_pc_i)
    );

    // 2. 译码阶段
    id_stage id_stage0(
        .id_pc_i(id_pc_i), 
        .id_inst_i(id_inst_i),
        .id_debug_wb_pc(id_debug_wb_pc_i),
        .rd1(rd1), .rd2(rd2),      
        .ra1(ra1), .ra2(ra2), 
        .id_aluop_o(id_aluop_o), .id_alutype_o(id_alutype_o),
        .id_src1_o(id_src1_o), .id_src2_o(id_src2_o),
        .id_wa_o(id_wa_o), .id_wreg_o(id_wreg_o),
        .branch_flag_o(branch_flag),
        .branch_target_o(branch_target),
        
        .ex_wreg_i(exe_wreg_o), .ex_wd_i(exe_wd_o), .ex_wa_i(exe_wa_o),
        .mem_wreg_i(mem_wreg_o), .mem_wd_i(mem_dreg_o), .mem_wa_i(mem_wa_o),
        .wb_wreg_i(wb_wreg_o), .wb_wd_i(wb_wd_o), .wb_wa_i(wb_wa_o),
        .id_store_data_o(id_store_data_o),
        
        // [新增] Load-Use 检测
        .ex_aluop_i(exe_aluop_o), // 来自 EXE 的当前指令操作码
        .stallreq(stallreq_from_id),
        
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
        .stall(stall), // [连] 暂停
        .id_alutype(id_alutype_o), .id_aluop(id_aluop_o),
        .id_src1(id_src1_o), .id_src2(id_src2_o),
        .id_wa(id_wa_o), .id_wreg(id_wreg_o),
        .id_store_data(id_store_data_o), .exe_store_data(exe_store_data_i),
        .id_debug_wb_pc(id_debug_wb_pc_o),
        .exe_alutype(exe_alutype_i), .exe_aluop(exe_aluop_i),
        .exe_src1(exe_src1_i), .exe_src2(exe_src2_i), 
        .exe_wa(exe_wa_i), .exe_wreg(exe_wreg_i),
        .exe_debug_wb_pc(exe_debug_wb_pc_i)
    );
    
    // 3. 执行阶段 (保持不变)
    exe_stage exe_stage0(
        .rst(cpu_rst_n), 
        .exe_alutype_i(exe_alutype_i), .exe_aluop_i(exe_aluop_i),
        .exe_src1_i(exe_src1_i), .exe_src2_i(exe_src2_i),
        .exe_wa_i(exe_wa_i), .exe_wreg_i(exe_wreg_i),
        .exe_store_data_i(exe_store_data_i),
        .exe_debug_wb_pc(exe_debug_wb_pc_i),
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
        .mem_aluop(mem_aluop_i),
        .mem_wa(mem_wa_i), .mem_wreg(mem_wreg_i), .mem_wd(mem_wd_i),
        .mem_mem_data(mem_mem_data_i), 
        .mem_debug_wb_pc(mem_debug_wb_pc_i)
    );

    // 4. 访存阶段 (保持不变)
    mem_stage mem_stage0(
        .rst(cpu_rst_n),
        .mem_aluop_i(mem_aluop_i),
        .mem_wa_i(mem_wa_i), .mem_wreg_i(mem_wreg_i), 
        .mem_wd_i(mem_wd_i),       
        .mem_mem_data_i(mem_mem_data_i), 
        .mem_debug_wb_pc(mem_debug_wb_pc_i),
        .data_rdata_i(data_rdata), 
        .data_addr_o(data_addr),   
        .data_wdata_o(data_wdata), 
        .data_wen_o(data_wen),     
        .mem_wa_o(mem_wa_o), .mem_wreg_o(mem_wreg_o), .mem_dreg_o(mem_dreg_o),
        .debug_wb_pc(mem_debug_wb_pc_o)
    );
    
    memwb_reg memwb_reg0(
        .cpu_clk_50M(cpu_clk_50M), .cpu_rst_n(cpu_rst_n),
        .mem_wa(mem_wa_o), .mem_wreg(mem_wreg_o), .mem_dreg(mem_dreg_o),
        .mem_debug_wb_pc(mem_debug_wb_pc_o),
        .wb_wa(wb_wa_i), .wb_wreg(wb_wreg_i), .wb_dreg(wb_dreg_i),
        .wb_debug_wb_pc(wb_debug_wb_pc_i)
    );

    // 5. 写回阶段 (保持不变)
    wb_stage wb_stage0(
        .wb_wa_i(wb_wa_i), .wb_wreg_i(wb_wreg_i), .wb_dreg_i(wb_dreg_i), 
        .wb_debug_wb_pc(wb_debug_wb_pc_i),
        .wb_wa_o(wb_wa_o), .wb_wreg_o(wb_wreg_o), .wb_wd_o(wb_wd_o),
        .debug_wb_pc(debug_wb_pc),        
        .debug_wb_rf_wen(debug_wb_rf_wen),    
        .debug_wb_rf_wnum(debug_wb_rf_wnum),   
        .debug_wb_rf_wdata(debug_wb_rf_wdata)   
    );

endmodule