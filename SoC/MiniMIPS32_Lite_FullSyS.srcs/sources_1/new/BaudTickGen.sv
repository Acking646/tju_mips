module BaudTickGen(
    input  clk, enable,
    output logic tick  // generate a tick at the specified baud rate * oversampling
);
parameter ClkFrequency = 50000000;
parameter Baud = 9600;
parameter Oversampling = 1;

localparam integer BAUD_X = (Baud*Oversampling);
localparam integer DIVISOR = (BAUD_X > 0) ? (ClkFrequency/BAUD_X) : 1;
localparam integer CNT_W = (DIVISOR <= 1) ? 1 : $clog2(DIVISOR);

logic [CNT_W-1:0] cnt;

always_ff @(posedge clk) begin
    if (!enable) begin
        cnt <= '0;
        tick <= 1'b0;
    end else if (cnt == DIVISOR-1) begin
        cnt <= '0;
        tick <= 1'b1;
    end else begin
        cnt <= cnt + 1'b1;
        tick <= 1'b0;
    end
end
endmodule
