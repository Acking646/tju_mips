module MiniMIPS32_Lite_FullSyS(
    input sys_clk,
    input sys_rst_n
    );
    
    logic cpu_clk;
    logic cpu_rst_n;
    logic locked;
    
    // 时钟分频模块 (保持不变)
    clkdiv clocking0 (
        .clk_out(cpu_clk),     
        .resetn(sys_rst_n), 
        .locked(locked),       
        .clk_in(sys_clk )
    );
    
    // 复位逻辑 (保持不变)
    always_ff @(posedge cpu_clk or negedge locked) begin
        if(~locked) cpu_rst_n = 1'b0; 
        else        cpu_rst_n = 1'b1;
    end
    
    // Debug 信号 (保持不变)
    wire [31:0] debug_wb_pc;       
    wire        debug_wb_rf_wen;   
    wire [ 4:0] debug_wb_rf_wnum;  
    wire [31:0] debug_wb_rf_wdata; 

    // =========================================================
    // 1. 定义连接 Data RAM 的中间信号
    // =========================================================
    wire        data_wen;   // 写使能
    wire [31:0] data_addr;  // 数据地址
    wire [31:0] data_wdata; // 写入数据
    wire [31:0] data_rdata; // 读出数据
    
    wire [31:0] iaddr;      // 指令地址
    wire [31:0] inst;       // 指令数据

    // =========================================================
    // 2. 实例化 CPU 核 (MiniMIPS32_Lite)
    //    注意：这里补全了我们刚才新增的 4 个端口
    // =========================================================
    MiniMIPS32_Lite MiniMIPS32_Lite0(
        .cpu_clk_50M(cpu_clk),
        .cpu_rst_n(cpu_rst_n),
        
        // 指令存储器接口
        .iaddr(iaddr),
        .inst(inst),
        
        // [新增] 数据存储器接口 (一定要连上！)
        .data_wen(data_wen),
        .data_addr(data_addr),
        .data_wdata(data_wdata),
        .data_rdata(data_rdata),
        
        // 调试接口
        .debug_wb_pc(debug_wb_pc),
        .debug_wb_rf_wen(debug_wb_rf_wen),
        .debug_wb_rf_wnum(debug_wb_rf_wnum),
        .debug_wb_rf_wdata(debug_wb_rf_wdata)
    );

    // =========================================================
    // 3. 实例化指令存储器 (Inst ROM)
    // =========================================================
    inst_rom inst_rom0 (
        .a(iaddr[17:2]), // 指令地址 (字对齐，右移2位)
        .spo(inst)       // 读出的指令
    );

    // =========================================================
    // 4. 实例化数据存储器 (Data RAM)
    //    根据指导书要求，这里需要添加 data_ram IP核的实例化
    // =========================================================
    data_ram data_ram0 (
        .a(data_addr[17:2]), // 数据地址 (字对齐，右移2位)
        .d(data_wdata),      // 写入的数据
        .clk(cpu_clk),       // 时钟
        .we(data_wen),       // 写使能
        .spo(data_rdata)     // 读出的数据
    );

endmodule