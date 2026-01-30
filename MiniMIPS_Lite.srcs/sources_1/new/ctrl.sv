`include "defines.v"

module ctrl(
    input  wire                  rst,
    
    // 来自 ID 阶段的 Load 暂停请求信号
    input  wire                  stallreq_from_id,

    // 产生流水线各阶段的暂停信号
    // stall[0]: PC
    // stall[1]: IF/ID
    // stall[2]: ID/EXE
    // stall[3]: EXE/MEM
    // stall[4]: MEM/WB
    // stall[5]: 保留
    output reg  [5:0]            stall
    );

    always @ (*) begin
        if(rst == `RST_ENABLE) begin
            stall = 6'b000000;
        end else if(stallreq_from_id == `TRUE_V) begin
            // 处理 Load-Use 暂停：
            // 1. 暂停 PC (stall[0])
            // 2. 暂停 IF/ID (stall[1])
            // 3. 暂停 ID/EXE (stall[2]) -> 插入 NOP 气泡
            // 后续阶段 (EXE/MEM, MEM/WB) 正常运行
            stall = 6'b000111;
        end else begin
            stall = 6'b000000;
        end
    end

endmodule