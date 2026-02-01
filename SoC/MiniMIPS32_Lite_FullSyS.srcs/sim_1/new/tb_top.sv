`timescale 1ns / 1ps
`define SIMULATION

module tb_top();

    // 时钟和复�?
    logic clk;
    logic locked;
    
    // 串口
    logic rxd;
    wire  txd;
    
    // 开关和按钮
    logic [31:0] sw_1;
    logic [31:0] sw_2;
    logic [7:0]  btn;
    
    // 输出
    wire [31:0] led;
    wire [3:0]  seg_cs;
    wire [7:0]  seg_data;

    // 实例化被测模�?
    top uut (
        .clk        (clk),
        .locked     (locked),
        .rxd        (rxd),
        .txd        (txd),
        .sw_1       (sw_1),
        .sw_2       (sw_2),
        .led        (led),
        .seg_cs     (seg_cs),
        .seg_data   (seg_data),
        .btn        (btn)
    );

    // 生成 50MHz 时钟 (周期 20ns)
    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    // 复位和初始化
    initial begin
        // 初始化信�?
        locked = 0;
        rxd = 1;        // 串口空闲状态为�?
        sw_1 = 32'h0;
        sw_2 = 32'h0;
        btn = 8'h0;
        
        // 等待 100ns 后释放复�?
        #100;
        locked = 1;
        
        // 运行仿真
        // 可以在这里添加更多测试激�?
    end

    // 监控 debug 信号
    // ========================================================================
    // UART TXD monitor - sim only
    // 浣跨敤涓庝豢鐪熸ā鍧楃浉鍚岀殑楂樻尝鐗圭巼
    // ========================================================================
    localparam realtime UART_BAUD = 1000000.0;  // 1Mbps for simulation
    localparam realtime BIT_TIME_NS = 1.0e9 / UART_BAUD;  // ns per bit

    logic [95:0] uart_shift12;
    integer uart_count;

    task automatic uart_capture_byte(output byte b);
        int i;
        // wait start bit
        @(negedge txd);
        #(BIT_TIME_NS * 0.5);
        b = 8'h00;
        for (i = 0; i < 8; i = i + 1) begin
            #(BIT_TIME_NS);
            b[i] = txd;
        end
        #(BIT_TIME_NS);
    endtask

    initial begin
        uart_shift12 = 96'b0;
        uart_count = 0;
        @(posedge locked);
        forever begin
            byte ch;
            uart_capture_byte(ch);
            if (ch >= 8'h20 && ch <= 8'h7e) begin
                $write("%c", ch);
            end else if (ch == 8'h0a || ch == 8'h0d) begin
                $write("%c", ch);
            end else begin
                $write("<%02x>", ch);
            end

            uart_shift12 = {uart_shift12[87:0], ch};
            if (uart_count < 12) uart_count = uart_count + 1;

            if (uart_count >= 12 && uart_shift12 == "Fib Finish.") begin
                $display("\n[UART] Detected: Fib Finish.");
            end
            if (uart_count >= 9 && uart_shift12[71:0] == "All PASS!") begin
                $display("\n[UART] Detected: All PASS!");
            end
        end
    end
    wire [31:0] debug_pc = uut.MiniMIPS32_Lite_FullSyS0.debug_wb_pc;
    wire        debug_wen = uut.MiniMIPS32_Lite_FullSyS0.debug_wb_rf_wen;
    wire [4:0]  debug_wnum = uut.MiniMIPS32_Lite_FullSyS0.debug_wb_rf_wnum;
    wire [31:0] debug_wdata = uut.MiniMIPS32_Lite_FullSyS0.debug_wb_rf_wdata;
    
    // 更多调试信号
    wire [31:0] cpu_pc = uut.MiniMIPS32_Lite_FullSyS0.cpu_core.pc;
    wire [31:0] cpu_inst = uut.MiniMIPS32_Lite_FullSyS0.cpu_inst;
    wire [31:0] cpu_daddr = uut.MiniMIPS32_Lite_FullSyS0.cpu_daddr;
    wire [31:0] cpu_dout = uut.MiniMIPS32_Lite_FullSyS0.cpu_dout;
    wire [31:0] cpu_din = uut.MiniMIPS32_Lite_FullSyS0.cpu_din;
    wire [3:0]  cpu_dwe = uut.MiniMIPS32_Lite_FullSyS0.cpu_dwe;
    wire        cpu_dre = uut.MiniMIPS32_Lite_FullSyS0.cpu_dre;

    // 打印调试信息
    always @(posedge clk) begin
        if (locked && debug_wen && debug_wnum != 0) begin
            $display("Time=%0t PC=%h Reg[%0d]=%h", $time, debug_pc, debug_wnum, debug_wdata);
        end
        // 监控内存访问
        if (locked && (|cpu_dwe)) begin
            $display("Time=%0t STORE: addr=%h data=%h", $time, cpu_daddr, cpu_dout);
        end
        if (locked && cpu_dre) begin
            $display("Time=%0t LOAD:  addr=%h data=%h", $time, cpu_daddr, cpu_din);
        end
        // 监控 FEEDBACK 阶段的关键指令
        if (locked && (cpu_pc == 32'h80000cac || cpu_pc == 32'h80000ca8)) begin
            $display("Time=%0t DEBUG: cpu_pc=%h debug_wb_pc=%h", $time, cpu_pc, debug_pc);
        end
    end
    
    // ========================================================================
    // 自动测试检�?
    // ========================================================================
    
    // 测试状�?
    reg test_failed;
    reg fib_test_passed;
    reg [31:0] fib_count;           // 斐波那契循环计数
    reg [31:0] last_store_data;     // 上次存储的数�?
    reg [31:0] last_store_addr;     // 上次存储的地址
    
    // 检测跳转到 end 的时�?
    reg [31:0] prev_pc;
    
    initial begin
        test_failed = 0;
        fib_test_passed = 0;
        fib_count = 0;
        last_store_data = 0;
        last_store_addr = 0;
        prev_pc = 0;
    end
    
    always @(posedge clk) begin
        if (locked) begin
            prev_pc <= cpu_pc;
            
            // 监控 s1 和 s2 寄存器的变化 (用于诊断 RANDOMTEST)
            // s1 = $17, s2 = $18
            if (debug_wen && debug_wnum == 5'd17) begin
                $display("Time=%0t s1(passed_flags) updated to %h", $time, debug_wdata);
            end
            if (debug_wen && debug_wnum == 5'd18) begin
                $display("Time=%0t s2(selection) updated to %h", $time, debug_wdata);
            end
            
            // 检测是否跳转到 end
            // 从 FEEDBACK 循环正常结束 (80000cb0) 进入 end 是成功的
            // 从其他地方跳转到 end 是失败的
            if (cpu_pc == 32'h80000cb4 && prev_pc != 32'h80000cb4 && prev_pc != 32'h80000cb8) begin
                if (prev_pc == 32'h80000cb0) begin
                    // 从 FEEDBACK 循环正常结束进入 end - 这是成功！
                    $display("");
                    $display("========================================");
                    $display("*** ALL TESTS PASSED! ***");
                    $display("Program completed successfully at Time=%0t", $time);
                    $display("========================================");
                    $display("");
                    $finish;
                end else begin
                    // 从其他地方跳转到 end - 这是失败
                    test_failed <= 1;
                    $display("");
                    $display("========================================");
                    $display("!!! TEST FAILED !!!");
                    $display("Jumped to END from PC=%h at Time=%0t", prev_pc, $time);
                    $display("s1 (passed tests) = access via regfile");
                    $display("s2 (required tests) = check data_ram");
                    $display("========================================");
                    $display("");
                end
            end
            
            // 监控斐波那契 SW 操作 (地址范围 0x80010000-0x800100FF)
            if ((|cpu_dwe) && cpu_daddr >= 32'h80010000 && cpu_daddr < 32'h80010100) begin
                last_store_addr <= cpu_daddr;
                last_store_data <= cpu_dout;
                fib_count <= fib_count + 1;
            end
            
            // 检测是否进入串口发送阶�?(WRITESERIAL: PC = 0x80000058)
            if (cpu_pc == 32'h80000058 && prev_pc != 32'h80000058 && !fib_test_passed && !test_failed) begin
                fib_test_passed <= 1;
                $display("");
                $display("========================================");
                $display("*** FIBONACCI TEST PASSED! ***");
                $display("Completed %0d store operations", fib_count);
                $display("Reached WRITESERIAL at Time=%0t", $time);
                $display("========================================");
                $display("");
            end
            
            // 检测是否进�?RANDOMTEST 阶段 (PC = 0x800000AC)
            if (cpu_pc == 32'h800000ac && prev_pc != 32'h800000ac && !test_failed) begin
                $display("");
                $display("========================================");
                $display("*** ENTERING RANDOMTEST PHASE ***");
                $display("Time=%0t", $time);
                $display("========================================");
                $display("");
            end
            
            // 检测最终比较点 (bne s1, s2, end �?PC=0x80000c7c)
            if (cpu_pc == 32'h80000c7c && !test_failed) begin
                $display("Time=%0t Reached final comparison (bne s1, s2, end)", $time);
            end
            
            // 检测是否到�?FEEDBACK 阶段 (全部测试通过)
            if (cpu_pc == 32'h80000c80 && prev_pc != 32'h80000c80 && !test_failed) begin
                $display("");
                $display("========================================");
                $display("*** ALL TESTS PASSED! ***");
                $display("Reached FEEDBACK at Time=%0t", $time);
                $display("========================================");
                $display("");
            end
        end
    end
    
    // 超时检测和最终结果报�?
    initial begin
        #500000000;  // 500ms 超时
        $display("");
        $display("========================================");
        if (test_failed) begin
            $display("SIMULATION RESULT: FAILED");
        end else if (fib_test_passed) begin
            $display("SIMULATION RESULT: PASSED (Fibonacci OK)");
        end else begin
            $display("SIMULATION RESULT: TIMEOUT");
        end
        $display("Final PC = %h", cpu_pc);
        $display("========================================");
        $finish;
    end

endmodule
