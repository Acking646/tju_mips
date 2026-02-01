`include "defines.v"

module MiniMIPS32_Lite_FullSyS(
    input clk,  // 50Mhz
    input locked,

    input                   rxd,                // 涓插彛鎺ユ敹绔�
    output logic            txd,                // 涓插彛鍙戦�佺��?

    input [31:0]            sw_1,           // 绗�涓�缁勬嫧鐮佸紑鍏�
    input [31:0]            sw_2,           // 绗�浜岀粍鎷ㄧ爜寮�鍏�
    output logic [31:0]     led,            // led鐏�
    output logic [3:0]             seg_cs,        // 7娈垫暟鐮佺�＄墖閫変俊鍙�?
    output logic [7:0]             seg_data,      // 7娈垫暟鐮佺�℃暟鎹�
    input [7:0]             btn            // 鎸夐�?
    );

    logic rst_n;

    // 灏唋ocked淇″彿杞�涓哄悗绾х數璺�鐨勫�嶄綅淇″彿rst_n
    always_ff @(posedge clk or negedge locked) begin
        if(~locked) rst_n = 1'b0;
        else        rst_n = 1'b1;
    end

    // 鏁扮爜绠＄墖閫変俊鍙峰拰鏁版�?
    logic [3:0] seg_wdata[0:8];
    x7seg seg_cs_data_gen0 (
        .clk(clk),
        .seg_wdata(seg_wdata),
        .seg_cs(seg_cs),
        .seg_data(seg_data)
    );

    //==========================================================================
    // CPU 鏍镐俊鍙峰畾涔�
    //==========================================================================
    wire [31:0] cpu_iaddr;          // CPU 鎸囦护鍦板潃
    wire [31:0] cpu_inst;           // CPU 鎸囦护鏁版嵁
    wire        cpu_dre;            // CPU 鏁版嵁璇讳娇鑳�
    wire [3:0]  cpu_dwe;            // CPU 鏁版嵁鍐欎娇鑳�
    wire [31:0] cpu_daddr;          // CPU 鏁版嵁鍦板潃
    wire [31:0] cpu_dout;           // CPU 鏁版嵁杈撳嚭锛堝啓鏁版嵁锛�
    wire [31:0] cpu_din;            // CPU 鏁版嵁杈撳叆锛堣�绘暟鎹�锛�?

    // 璋冭瘯淇″彿
    wire [31:0] debug_wb_pc;
    wire        debug_wb_rf_wen;
    wire [4:0]  debug_wb_rf_wnum;
    wire [31:0] debug_wb_rf_wdata;

    //==========================================================================
    // 瀹炰緥鍖�?CPU 鏍�
    //==========================================================================
    MiniMIPS32_Lite cpu_core(
        .cpu_clk_50M        (clk),
        .cpu_rst_n          (rst_n),
        // 鎸囦护ROM鎺ュ�?
        .iaddr              (cpu_iaddr),
        .inst               (cpu_inst),
        // 鏁版嵁RAM鎺ュ�?
        .dre                (cpu_dre),
        .dwe                (cpu_dwe),
        .daddr              (cpu_daddr),
        .dout               (cpu_dout),
        .din                (cpu_din),
        // 璋冭瘯鎺ュ彛
        .debug_wb_pc        (debug_wb_pc),
        .debug_wb_rf_wen    (debug_wb_rf_wen),
        .debug_wb_rf_wnum   (debug_wb_rf_wnum),
        .debug_wb_rf_wdata  (debug_wb_rf_wdata)
    );

    //==========================================================================
    // 瀹炰緥鍖栨寚浠ゅ瓨鍌ㄥ櫒 inst_rom (鍙岀��鍙� ROM)
    // 鍦板潃鑼冨洿: 0x80000000 - 0x8000FFFF
    // IP鏍稿湴鍧�瀹藉�? 14浣� (16K x 32bit = 64KB)
    // CPU鍦板潃鏄�瀛楄妭鍦板潃锛孖P鏍稿湴鍧�鏄�瀛楀湴鍧�锛岄渶瑕佸彸绉�?浣�
    // 绔�鍙�A (a/spo): 鎸囦护鑾峰彇
    // 绔�鍙�B (dpra/dpo): 鏁版嵁璇诲彇 (鐢ㄤ簬LB璇诲彇瀛楃�︿�?
    //==========================================================================
    wire [13:0] inst_rom_addr;
    wire [13:0] inst_rom_data_addr;
    wire [31:0] inst_rom_data_out;
    wire is_inst_rom_addr;
    
    assign inst_rom_addr = cpu_iaddr[15:2];       // 鎸囦护鑾峰彇鍦板�?
    assign inst_rom_data_addr = cpu_daddr[15:2];  // 鏁版嵁璇诲彇鍦板�?
    assign is_inst_rom_addr = (cpu_daddr[31:16] == 16'h8000);

    inst_rom inst_rom0(
        .a      (inst_rom_addr),      // ??A??????
        .spo    (cpu_inst)            // ??A??
    );

    // ??? inst_rom ????????
    inst_rom inst_rom_data(
        .a      (inst_rom_data_addr),
        .spo    (inst_rom_data_out)
    );

    //==========================================================================
    // 瀹炰緥鍖栨暟鎹�瀛樺偍鍣�?data_ram
    // 鍦板潃鑼冨洿: 0x80010000 - 0x8001FFFF
    // IP鏍稿湴鍧�瀹藉�? 14浣� (16K x 32bit = 64KB)
    //==========================================================================
    wire [13:0] data_ram_addr;
    wire [31:0] data_ram_dout;
    wire        data_ram_we;

    assign data_ram_addr = cpu_daddr[15:2];  // 瀛楄妭鍦板潃杞�瀛楀湴鍧�?

    // 鏁版嵁RAM鍐欎娇鑳斤細褰撳湴鍧�鍦ㄦ暟鎹甊AM鑼冨洿鍐呬笖鏈夊啓浣胯兘鏃�
    wire is_data_ram_addr;
    assign is_data_ram_addr = (cpu_daddr[31:16] == 16'h8001);
    assign data_ram_we = is_data_ram_addr && (|cpu_dwe);

    data_ram data_ram0(
        .a      (data_ram_addr),
        .d      (cpu_dout),
        .clk    (clk),
        .we     (data_ram_we),
        .spo    (data_ram_dout)
    );

    //==========================================================================
    // 涓插彛澶栬�惧疄鐜�
    // 鍦板潃鑼冨洿: 0xBFD00000 - 0xBFD0FFFF
    // 鏁版嵁瀵勫瓨鍣�? 0xBFD003F8
    // 鐘舵�佸瘎瀛樺�? 0xBFD003FC
    //   - Bit 0: TX ready (鍙戦�佺┖闂诧紝鍙�浠ュ彂閫�?
    //   - Bit 1: RX ready (鎺ユ敹灏辩华锛屾湁鏁版嵁鍙�璇�)
    //==========================================================================

    // 涓插彛淇″彿瀹氫�?
    logic [7:0] ext_uart_rx;            // 鎺ユ敹鍒扮殑鏁版�?
    logic [7:0] ext_uart_buffer;        // 鎺ユ敹缂撳啿鍖�
    logic [7:0] ext_uart_tx;            // 寰呭彂閫佹暟鎹�
    logic ext_uart_ready;               // 鎺ユ敹妯″潡鏁版嵁灏辩华鏍囧�?
    logic ext_uart_clear;               // 娓呴櫎鎺ユ敹鏍囧�?
    logic ext_uart_busy;                // 鍙戦�佹ā鍧楀繖鏍囧織
    logic ext_uart_start;               // 寮�濮嬪彂閫佷俊鍙�
    logic ext_uart_rx_avai;
    logic ext_uart_busy_d;              // ext_uart_busy寤惰繜涓�鎷嶏紝鐢ㄤ簬杈规�娴嬫�?

    // 鍙戦�丗IFO缂撳啿鍖猴紙16瀛楄妭锛�?
    localparam TX_FIFO_DEPTH = 16;
    localparam TX_FIFO_ADDR_WIDTH = 4;
    logic [7:0] tx_fifo [0:TX_FIFO_DEPTH-1];
    logic [TX_FIFO_ADDR_WIDTH:0] tx_fifo_wr_ptr;  // 鍐欐寚閽堬紙澶氫竴浣嶇敤浜庢弧鍒ゆ柇锛�
    logic [TX_FIFO_ADDR_WIDTH:0] tx_fifo_rd_ptr;  // 璇绘寚閽�?
    logic tx_fifo_empty;
    logic tx_fifo_full;
    wire [TX_FIFO_ADDR_WIDTH:0] tx_fifo_count;
    
    assign tx_fifo_count = tx_fifo_wr_ptr - tx_fifo_rd_ptr;
    assign tx_fifo_empty = (tx_fifo_count == 0);
    assign tx_fifo_full = (tx_fifo_count == TX_FIFO_DEPTH);

    // UART baud config
`ifdef SIMULATION
    localparam UART_BAUD = 1000000;
`else
    localparam UART_BAUD = 9600;
`endif

    // 涓插彛鎺ユ敹妯″潡
    async_receiver #(.ClkFrequency(50000000), .Baud(UART_BAUD))
    ext_uart_r(
        .clk            (clk),
        .RxD            (rxd),
        .RxD_data_ready (ext_uart_ready),
        .RxD_clear      (ext_uart_clear),
        .RxD_data       (ext_uart_rx)
    );

    // 涓插彛鍙戦�佹ā鍧�?
    async_transmitter #(.ClkFrequency(50000000), .Baud(UART_BAUD))
    ext_uart_t(
        .clk            (clk),
        .TxD            (txd),
        .TxD_busy       (ext_uart_busy),
        .TxD_start      (ext_uart_start),
        .TxD_data       (ext_uart_tx)
    );

    // 涓插彛鍦板潃璇戠�?
    wire is_uart_addr;
    wire is_uart_data_addr;     // 0xBFD003F8
    wire is_uart_status_addr;   // 0xBFD003FC

    assign is_uart_addr = (cpu_daddr[31:16] == 16'hBFD0);
    assign is_uart_data_addr = (cpu_daddr == 32'hBFD003F8);
    assign is_uart_status_addr = (cpu_daddr == 32'hBFD003FC);

    // 涓插彛鐘舵�佸瘎瀛樺�?
    // 澶х�妯″紡涓嬶紝lb浠庡湴鍧�?xBFD003FC璇诲彇鐨勬槸鏈�楂樺瓧鑺傦紙Bit 31:24锛�
    // 鎵�浠ョ姸鎬佷綅闇�瑕佹斁鍦ㄩ珮瀛楄妭锛�?
    // Bit 24: TX ready (鍙戦�丗IFO鏈弧) = ~tx_fifo_full
    // Bit 25: RX ready (鎺ユ敹灏辩华) = ext_uart_rx_avai
    // 鍚屾椂涔熷湪浣庡瓧鑺備繚鐣欙紝鏀�鎸亀w璇诲�?
    wire [31:0] uart_status;
    assign uart_status = {6'b0, ext_uart_rx_avai, ~tx_fifo_full, 22'b0, ext_uart_rx_avai, ~tx_fifo_full};

    // 涓插彛鏁版嵁瀵勫瓨鍣�锛堣�伙級
    wire [31:0] uart_data_read;
    assign uart_data_read = {24'b0, ext_uart_buffer};

    // 鎺ユ敹鏁版嵁澶勭悊锛氬綋鎺ユ敹鍒版暟鎹�鏃跺瓨鍏�buffer锛岃�獵PU璇诲彇鍚庢竻闄ゅ彲鐢ㄦ爣蹇�
    // 浠跨湡妯″紡涓嬶紝妫�娴嬪埌涓插彛鍙戦�佸畬鎴愬悗鑷�鍔ㄦ敞鍏� 'T' 瀛楃��
    logic sim_inject_done;  // 闃叉�㈤噸澶嶆敞鍏�
    logic [15:0] sim_delay_cnt;  // 寤惰繜璁℃暟鍣�
    
    always_ff @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            ext_uart_buffer <= 8'b0;
            ext_uart_rx_avai <= 1'b0;
            sim_inject_done <= 1'b0;
            sim_delay_cnt <= 16'd0;
        end else if (ext_uart_ready) begin
            // 鎺ユ敹鍒版柊鏁版�?
            ext_uart_buffer <= ext_uart_rx;
            ext_uart_rx_avai <= 1'b1;
        end else if (is_uart_data_addr && cpu_dre) begin
            // CPU璇诲彇鏁版嵁鍚庢竻闄ゅ彲鐢ㄦ爣蹇�?
            ext_uart_rx_avai <= 1'b0;
        end
        // synthesis translate_off
        // 浠跨湡妯″紡锛氭��娴嬪埌绋嬪簭姝ｅ湪绛夊緟璇诲彇涓插彛鐘舵�侊紙READSERIAL寰�鐜�锛�
        // 褰撶▼搴忓啓瀹屼覆鍙ｅ悗锛岀瓑寰呬竴娈垫椂闂寸劧鍚庤嚜鍔ㄦ敞鍏� 'T'
        else if (!sim_inject_done && !ext_uart_rx_avai) begin
            if (is_uart_status_addr && cpu_dre) begin
                // 妫�娴嬪埌CPU鍦ㄨ�荤姸鎬佸瘎瀛樺櫒锛屽紑濮嬭�℃�?
                sim_delay_cnt <= sim_delay_cnt + 1;
                if (sim_delay_cnt >= 16'd1000) begin
                    // 寤惰繜鍚庢敞鍏� 'T' 瀛楃��
                    ext_uart_buffer <= 8'h54;  // 'T'
                    ext_uart_rx_avai <= 1'b1;
                    sim_inject_done <= 1'b1;
                end
            end
        end
        // synthesis translate_on
    end

    // 鎺ユ敹妯″潡娓呴櫎淇″彿
    assign ext_uart_clear = ext_uart_ready;

    // FIFO鍐欏叆锛欳PU鍐欏叆鏁版嵁瀵勫瓨鍣ㄦ椂锛屾暟鎹�杩涘叆FIFO
    wire uart_fifo_wr = is_uart_data_addr && (|cpu_dwe) && ~tx_fifo_full;
    
    always_ff @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            tx_fifo_wr_ptr <= '0;
        end else if (uart_fifo_wr) begin
            tx_fifo[tx_fifo_wr_ptr[TX_FIFO_ADDR_WIDTH-1:0]] <= cpu_dout[7:0];
            tx_fifo_wr_ptr <= tx_fifo_wr_ptr + 1;
        end
    end

    // FIFO璇诲彇锛氬綋鍙戦�佹ā鍧楃┖闂蹭笖FIFO闈炵┖鏃讹紝鍙栨暟鎹�鍙戦��?
    logic tx_sending;  // 姝ｅ湪鍙戦�佷腑鏍囧�?
    
    always_ff @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            tx_fifo_rd_ptr <= '0;
            ext_uart_tx <= 8'b0;
            ext_uart_start <= 1'b0;
            tx_sending <= 1'b0;
            ext_uart_busy_d <= 1'b0;
        end else begin
            ext_uart_busy_d <= ext_uart_busy;
            ext_uart_start <= 1'b0;  // 榛樿�ゆ竻闄ゅ惎鍔ㄤ俊鍙�?
            
            // 妫�娴嬪彂閫佸畬鎴愶紙ext_uart_busy涓嬮檷娌匡級
            if (ext_uart_busy_d && ~ext_uart_busy) begin
                tx_sending <= 1'b0;
            end
            
            // 濡傛灉涓嶅湪鍙戦�佷笖FIFO闈炵┖锛屽紑濮嬪彂閫佷笅涓�涓�瀛楃��
            if (~tx_sending && ~ext_uart_busy && ~tx_fifo_empty) begin
                ext_uart_tx <= tx_fifo[tx_fifo_rd_ptr[TX_FIFO_ADDR_WIDTH-1:0]];
                tx_fifo_rd_ptr <= tx_fifo_rd_ptr + 1;
                ext_uart_start <= 1'b1;
                tx_sending <= 1'b1;
            end
        end
    end

    //==========================================================================
    // 鏁版嵁鎬荤嚎澶氳矾澶嶇敤
    // 鏍规嵁鍦板潃閫夋嫨杩斿洖 inst_rom / data_ram / 澶栬�炬暟鎹�?
    //==========================================================================
    logic [31:0] cpu_din_mux;

    always_comb begin
        if (is_uart_data_addr) begin
            cpu_din_mux = uart_data_read;
        end else if (is_uart_status_addr) begin
            cpu_din_mux = uart_status;
        end else if (is_inst_rom_addr) begin
            // 浠� inst_rom 鍙岀��鍙�B璇诲彇鏁版嵁锛堢敤浜庤�诲彇瀛楃�︿覆锛�?
            cpu_din_mux = inst_rom_data_out;
        end else begin
            // 榛樿�よ繑鍥炴暟鎹甊AM鏁版�?
            cpu_din_mux = data_ram_dout;
        end
    end

    assign cpu_din = cpu_din_mux;

    //==========================================================================
    // LED 鏄剧�?
    // 灏嗙��涓�缁勬嫧鐮佸紑鍏崇殑鍊兼樉绀哄湪LED涓婏紙淇濇寔鍘熸湁鍔熻兘锛�
    // 涔熷彲浠ョ敤浜庢樉绀鸿皟璇曚俊鎭�?
    //==========================================================================
    logic [31:0] sw_1_ff;
    always_ff @(posedge clk or negedge rst_n) begin
        if(~rst_n) sw_1_ff <= 0;
        else sw_1_ff <= sw_1;
    end
    assign led = sw_1_ff;

    //==========================================================================
    // 7娈垫暟鐮佺�℃樉绀�?
    //==========================================================================
    // seg_wdata[0-1]: 鏄剧ず涓插彛鎺ユ敹鐨勬暟鎹�
    assign seg_wdata[0] = ext_uart_buffer[3:0];
    assign seg_wdata[1] = ext_uart_buffer[7:4];

    // seg_wdata[2-6]: 鏄剧ず绗�浜岀粍鎷ㄧ爜寮�鍏崇殑鍊�?
    logic [31:0] sw_2_ff;
    always_ff @(posedge clk or negedge rst_n) begin
        if(~rst_n) sw_2_ff <= 0;
        else sw_2_ff <= sw_2;
    end
    assign seg_wdata[2] = sw_2_ff[3:0];
    assign seg_wdata[3] = sw_2_ff[7:4];
    assign seg_wdata[4] = sw_2_ff[11:8];
    assign seg_wdata[5] = sw_2_ff[15:12];
    assign seg_wdata[6] = sw_2_ff[19:16];

    // seg_wdata[7-8]: 鏄剧ず鎸夐挳鐘舵��
    logic [7:0] btn_ff;
    always_ff @(posedge clk or negedge rst_n) begin
        if(~rst_n) btn_ff <= 0;
        else btn_ff <= btn;
    end
    assign seg_wdata[7] = btn_ff[3:0];
    assign seg_wdata[8] = btn_ff[7:4];

endmodule
