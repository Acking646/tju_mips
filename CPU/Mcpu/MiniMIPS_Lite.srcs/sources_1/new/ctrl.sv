`include "defines.v"

module ctrl(
    input  wire                  rst,
    
    // 来自 ID 阶段的 Load 冒险检测信号
    input  wire                  stallreq_from_id,

    // 输出给各级流水线寄存器的暂停信号
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
            // 发生 Load-Use 冒险：
            // 1. 冻结 PC (stall[0])
            // 2. 冻结 IF/ID (stall[1])
            // 3. 清空 ID/EXE (stall[2]) -> 插入 NOP 气泡
            // 后面的阶段 (EXE/MEM, MEM/WB) 继续跑
            stall = 6'b000111;
        end else begin
            stall = 6'b000000;
        end
    end

endmodule