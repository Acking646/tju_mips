# MiniMIPS32 Lite SoC 系统设计文档

## 目录

1. [项目概述](#项目概述)
2. [系统架构](#系统架构)
3. [存储器映射](#存储器映射)
4. [CPU 核心](#cpu-核心)
5. [外设模块](#外设模块)
6. [UART 串口通信](#uart-串口通信)
7. [七段数码管显示](#七段数码管显示)
8. [GPIO 接口](#gpio-接口)
9. [流水线增强特性](#流水线增强特性)
10. [指令集支持](#指令集支持)
11. [模块接口说明](#模块接口说明)
12. [使用指南](#使用指南)

---

## 项目概述

MiniMIPS32 Lite SoC 是一个完整的片上系统（System on Chip）实现，基于 MiniMIPS32 Lite 五级流水线 CPU 核心，集成了多种外设接口，可在 FPGA 开发板上运行完整的嵌入式程序。

### 主要特性

- **32 位 MIPS CPU 核心**：五级流水线，支持 Load-Use 冒险检测
- **指令存储器**：64KB ROM，地址范围 0x80000000 - 0x8000FFFF
- **数据存储器**：64KB RAM，地址范围 0x80010000 - 0x8001FFFF
- **UART 串口**：支持 9600 波特率，带发送 FIFO 缓冲
- **七段数码管**：9 位数码管动态扫描显示
- **GPIO**：32 位 LED 输出，32 位拨码开关输入，8 位按钮输入
- **时钟频率**：50MHz

### 文件结构

```
SoC/MiniMIPS32_Lite_FullSyS.srcs/sources_1/new/
├── defines.v                   # 全局宏定义
├── MiniMIPS32_Lite_FullSyS.sv  # SoC顶层模块（含外设）
├── MiniMIPS32_Lite.sv          # CPU核心顶层模块
├── top.v                       # 最外层封装
│
├── if_stage.sv                 # 取指阶段
├── ifid_reg.sv                 # IF/ID流水线寄存器
├── id_stage.sv                 # 译码阶段（含Load-Use检测）
├── idexe_reg.sv                # ID/EXE流水线寄存器
├── exe_stage.sv                # 执行阶段
├── exemem_reg.sv               # EXE/MEM流水线寄存器
├── mem_stage.sv                # 访存阶段
├── memwb_reg.sv                # MEM/WB流水线寄存器
├── wb_stage.sv                 # 写回阶段
├── regfile.sv                  # 通用寄存器堆
│
├── async_receiver.sv           # UART接收模块
├── async_transmitter.sv        # UART发送模块
├── BaudTickGen.sv              # 波特率生成器
└── x7seg.sv                    # 七段数码管驱动
```

---

## 系统架构

### 整体架构图

```
                              ┌─────────────────────────────────────────────────┐
                              │                MiniMIPS32 Lite SoC              │
                              │                                                 │
    ┌─────────┐               │    ┌─────────────────────────────────────────┐  │
    │  CLK    │──────────────────▶│           MiniMIPS32_Lite CPU            │  │
    │ 50MHz   │               │    │                                         │  │
    └─────────┘               │    │  ┌────┐ ┌────┐ ┌────┐ ┌────┐ ┌────┐    │  │
                              │    │  │ IF │→│ ID │→│EXE │→│MEM │→│ WB │    │  │
    ┌─────────┐               │    │  └────┘ └────┘ └────┘ └────┘ └────┘    │  │
    │  RST    │──────────────────▶│           │                │             │  │
    │(locked) │               │    └───────────┼────────────────┼─────────────┘  │
    └─────────┘               │                │                │                │
                              │                ▼                ▼                │
                              │    ┌───────────────┐    ┌───────────────┐       │
                              │    │   inst_rom    │    │   数据总线    │       │
                              │    │    (64KB)     │    │   多路复用    │       │
                              │    └───────────────┘    └───────┬───────┘       │
                              │                                 │                │
                              │         ┌───────────────────────┼───────────────┐│
                              │         │                       │               ││
                              │         ▼                       ▼               ▼│
                              │    ┌─────────┐           ┌─────────┐     ┌──────┐│
                              │    │data_ram │           │  UART   │     │ GPIO ││
                              │    │ (64KB)  │           │         │     │      ││
                              │    └─────────┘           └────┬────┘     └──┬───┘│
                              │                               │              │    │
                              └───────────────────────────────┼──────────────┼────┘
                                                              │              │
                                                              ▼              ▼
                                                         ┌────────┐    ┌─────────┐
                                                         │ RXD/TXD│    │LED/SW/  │
                                                         │ 串口   │    │BTN/SEG  │
                                                         └────────┘    └─────────┘
```

### 数据总线架构

```
┌──────────────────────────────────────────────────────────────────────────────┐
│                              CPU 数据接口                                     │
│   daddr[31:0]  dout[31:0]  din[31:0]  dwe[3:0]  dre                         │
└────────┬─────────────┬─────────┬────────┬────────┬───────────────────────────┘
         │             │         │        │        │
         ▼             │         │        │        │
   ┌──────────────┐    │         │        │        │
   │ 地址译码器   │    │         │        │        │
   └──────┬───────┘    │         │        │        │
          │            │         │        │        │
    ┌─────┴─────┬──────┴────┬────┴───┐    │        │
    ▼           ▼           ▼        ▼    ▼        ▼
┌───────┐  ┌───────┐  ┌─────────┐  ┌─────────────────┐
│inst_  │  │data_  │  │  UART   │  │  读数据多路    │
│ rom   │  │ ram   │  │ 寄存器  │  │    复用器      │
│(数据) │  │       │  │         │  │                │
└───┬───┘  └───┬───┘  └────┬────┘  └───────┬────────┘
    │          │           │               │
    └──────────┴───────────┴───────────────┘
                           │
                           ▼
                       cpu_din
```

---

## 存储器映射

### 地址空间分配

| 起始地址 | 结束地址 | 大小 | 设备 | 说明 |
|----------|----------|------|------|------|
| 0x80000000 | 0x8000FFFF | 64KB | inst_rom | 指令存储器（只读） |
| 0x80010000 | 0x8001FFFF | 64KB | data_ram | 数据存储器（读写） |
| 0xBFD003F8 | 0xBFD003F8 | 4B | UART_DATA | 串口数据寄存器 |
| 0xBFD003FC | 0xBFD003FC | 4B | UART_STAT | 串口状态寄存器 |

### 存储器映射图

```
0xFFFFFFFF ┌─────────────────────────┐
           │                         │
           │      未使用区域          │
           │                         │
0xBFD00400 ├─────────────────────────┤
0xBFD003FC │ UART_STAT (状态寄存器)   │
0xBFD003F8 │ UART_DATA (数据寄存器)   │
           ├─────────────────────────┤
           │                         │
           │      未使用区域          │
           │                         │
0x80020000 ├─────────────────────────┤
           │                         │
           │  data_ram (64KB)        │
           │  数据存储器              │
           │                         │
0x80010000 ├─────────────────────────┤
           │                         │
           │  inst_rom (64KB)        │
           │  指令存储器              │
           │                         │
0x80000000 ├─────────────────────────┤
           │                         │
           │      未使用区域          │
           │                         │
0x00000000 └─────────────────────────┘
```

### 地址译码逻辑

```verilog
// 指令ROM地址范围判断
wire is_inst_rom_addr = (cpu_daddr[31:16] == 16'h8000);

// 数据RAM地址范围判断
wire is_data_ram_addr = (cpu_daddr[31:16] == 16'h8001);

// UART地址范围判断
wire is_uart_addr = (cpu_daddr[31:16] == 16'hBFD0);
wire is_uart_data_addr = (cpu_daddr == 32'hBFD003F8);
wire is_uart_status_addr = (cpu_daddr == 32'hBFD003FC);

// 数据总线多路复用
always_comb begin
    if (is_uart_data_addr)
        cpu_din_mux = uart_data_read;
    else if (is_uart_status_addr)
        cpu_din_mux = uart_status;
    else if (is_inst_rom_addr)
        cpu_din_mux = inst_rom_data_out;  // 支持从ROM读取字符串
    else
        cpu_din_mux = data_ram_dout;
end
```

---

## CPU 核心

### 五级流水线结构

SoC 中的 CPU 核心与独立 CPU 项目相比，增加了以下增强特性：

1. **Load-Use 冒险检测**：检测并处理紧随 Load 指令的数据依赖
2. **流水线暂停机制**：支持 stall 信号暂停流水线
3. **额外指令支持**：增加了 ADDI 和 SLT 指令

### 流水线暂停控制

```verilog
// ID阶段的暂停请求
wire stallreq_id;
wire stall;
assign stall = stallreq_id;

// IF阶段暂停处理
always @(posedge cpu_clk_50M) begin
    if (~cpu_rst_n)
        pc <= `PC_INIT;
    else if (~stall)  // 暂停时保持PC不变
        pc <= pc_next;
end

// IF/ID寄存器暂停处理
always @(posedge cpu_clk_50M) begin
    if (cpu_rst_n == `RST_ENABLE || flush) begin
        // 复位或冲刷
    end
    else if (stall) begin
        // 暂停时保持当前值
    end
    else begin
        // 正常传递
    end
end
```

---

## 外设模块

### 外设概览

| 外设 | 接口类型 | 地址/引脚 | 功能 |
|------|----------|-----------|------|
| UART | 内存映射 | 0xBFD003Fx | 串口通信 |
| LED | GPIO | led[31:0] | 状态显示 |
| 拨码开关 | GPIO | sw_1[31:0], sw_2[31:0] | 输入数据 |
| 按钮 | GPIO | btn[7:0] | 触发输入 |
| 七段数码管 | 专用 | seg_cs, seg_data | 数字显示 |

---

## UART 串口通信

### 模块架构

```
┌──────────────────────────────────────────────────────────────┐
│                         UART 模块                            │
│                                                              │
│  ┌──────────────┐     ┌──────────────┐     ┌──────────────┐ │
│  │ async_receiver│     │  TX FIFO    │     │async_transmit│ │
│  │              │     │  (16 bytes) │     │  ter         │ │
│  │   RXD ──────▶│────▶│  wr_ptr     │────▶│──────▶ TXD   │ │
│  │              │     │  rd_ptr     │     │              │ │
│  └──────────────┘     └──────────────┘     └──────────────┘ │
│         │                                         │          │
│         ▼                                         │          │
│  ┌──────────────┐                                 │          │
│  │ RX Buffer    │                                 │          │
│  │ (8 bits)     │◀────────────────────────────────┘          │
│  └──────────────┘                                            │
│         │                                                    │
│         ▼                                                    │
│  ┌──────────────────────────────────────────┐               │
│  │           寄存器接口                      │               │
│  │  UART_DATA (0xBFD003F8): 数据读写        │               │
│  │  UART_STAT (0xBFD003FC): 状态查询        │               │
│  └──────────────────────────────────────────┘               │
└──────────────────────────────────────────────────────────────┘
```

### 寄存器定义

#### UART_DATA (0xBFD003F8)

| 位域 | 读操作 | 写操作 |
|------|--------|--------|
| [7:0] | 接收数据 | 发送数据 |
| [31:8] | 0 | 忽略 |

#### UART_STAT (0xBFD003FC)

| 位 | 名称 | 说明 |
|----|------|------|
| 0 | TX_READY | 1 = 发送FIFO未满，可以写入 |
| 1 | RX_READY | 1 = 有接收数据可读取 |
| [23:2] | 保留 | 读取为0 |
| 24 | TX_READY | 同 bit 0（兼容大端模式LB读取） |
| 25 | RX_READY | 同 bit 1（兼容大端模式LB读取） |
| [31:26] | 保留 | 读取为0 |

### 波特率配置

```verilog
// 标准模式: 9600 baud
localparam UART_BAUD = 9600;

// 仿真模式: 1000000 baud (加速仿真)
`ifdef SIMULATION
    localparam UART_BAUD = 1000000;
`endif
```

### 波特率生成器

```verilog
module BaudTickGen(
    input  clk, enable,
    output logic tick
);
    parameter ClkFrequency = 50000000;  // 50MHz
    parameter Baud = 9600;
    parameter Oversampling = 1;

    localparam integer DIVISOR = ClkFrequency / (Baud * Oversampling);
    
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
```

### 发送 FIFO 实现

```verilog
// FIFO参数
localparam TX_FIFO_DEPTH = 16;
localparam TX_FIFO_ADDR_WIDTH = 4;

// FIFO存储和指针
logic [7:0] tx_fifo [0:TX_FIFO_DEPTH-1];
logic [TX_FIFO_ADDR_WIDTH:0] tx_fifo_wr_ptr;  // 写指针（多一位用于满判断）
logic [TX_FIFO_ADDR_WIDTH:0] tx_fifo_rd_ptr;  // 读指针

// FIFO状态
wire [TX_FIFO_ADDR_WIDTH:0] tx_fifo_count = tx_fifo_wr_ptr - tx_fifo_rd_ptr;
wire tx_fifo_empty = (tx_fifo_count == 0);
wire tx_fifo_full = (tx_fifo_count == TX_FIFO_DEPTH);
```

### 使用示例（汇编）

```assembly
# 串口发送一个字符
SEND_CHAR:
    lui     $t0, 0xBFD0         # 加载UART基地址高16位
    ori     $t0, $t0, 0x03FC    # 状态寄存器地址
WAIT_TX:
    lb      $t1, 0($t0)         # 读取状态寄存器
    andi    $t1, $t1, 0x01      # 检查TX_READY位
    beq     $t1, $zero, WAIT_TX # 如果不就绪，继续等待
    
    lui     $t0, 0xBFD0
    ori     $t0, $t0, 0x03F8    # 数据寄存器地址
    sb      $a0, 0($t0)         # 发送字符
    jr      $ra

# 串口接收一个字符
RECV_CHAR:
    lui     $t0, 0xBFD0
    ori     $t0, $t0, 0x03FC
WAIT_RX:
    lb      $t1, 0($t0)         # 读取状态寄存器
    andi    $t1, $t1, 0x02      # 检查RX_READY位
    beq     $t1, $zero, WAIT_RX
    
    lui     $t0, 0xBFD0
    ori     $t0, $t0, 0x03F8
    lb      $v0, 0($t0)         # 读取接收数据
    jr      $ra
```

---

## 七段数码管显示

### 模块架构

```
┌────────────────────────────────────────────────────────────────┐
│                       x7seg 模块                               │
│                                                                │
│  seg_wdata[0:8] ──▶ ┌────────────────┐                        │
│  (4-bit × 9)        │  seg_decoder   │──▶ digit[0:8]          │
│                     │   (9 个实例)    │    (8-bit × 9)         │
│                     └────────────────┘                        │
│                              │                                 │
│                              ▼                                 │
│  clk ──────────────▶ ┌────────────────┐                        │
│                      │   扫描计数器   │                        │
│                      │  scan_cnt      │                        │
│                      │  scan_sel      │                        │
│                      └───────┬────────┘                        │
│                              │                                 │
│                              ▼                                 │
│                     ┌────────────────┐                        │
│                     │   多路选择器   │                        │
│                     └───────┬────────┘                        │
│                             │ │                                │
│                             ▼ ▼                                │
│                       seg_cs[3:0]  seg_data[7:0]              │
└────────────────────────────────────────────────────────────────┘
```

### 七段数码管段位映射

```
      a
     ───
  f │   │ b
    │ g │
     ───
  e │   │ c
    │   │
     ───  . h
      d

段序: hgfe_dcba (8位)
```

### 数字解码表

| 输入 | 显示 | 段码 (gfedcba) |
|------|------|----------------|
| 0x0 | 0 | 1000000 |
| 0x1 | 1 | 1111001 |
| 0x2 | 2 | 0100100 |
| 0x3 | 3 | 0110000 |
| 0x4 | 4 | 0011001 |
| 0x5 | 5 | 0010010 |
| 0x6 | 6 | 0000010 |
| 0x7 | 7 | 1111000 |
| 0x8 | 8 | 0000000 |
| 0x9 | 9 | 0010000 |
| 0xA | A | 0001000 |
| 0xB | b | 0000011 |
| 0xC | C | 1000110 |
| 0xD | d | 0100001 |
| 0xE | E | 0000110 |
| 0xF | F | 0001110 |

### 动态扫描

```verilog
parameter SCAN_DELAY = 50_000;  // 50MHz下1ms扫描一次

// 扫描计数器
always @(posedge clk) begin
    if (scan_en)
        scan_cnt <= 17'd0;
    else
        scan_cnt <= scan_cnt + 1'b1;
end

// 更新扫描选择
always @(posedge clk) begin
    if (scan_en)
        if (scan_sel == 4'd8)
            scan_sel <= 4'd0;
        else
            scan_sel <= scan_sel + 1'b1;
end
```

### 显示内容分配

| 数码管位 | 显示内容 |
|----------|----------|
| seg_wdata[0-1] | UART接收数据 (低4位/高4位) |
| seg_wdata[2-6] | 拨码开关sw_2值 |
| seg_wdata[7-8] | 按钮状态 |

---

## GPIO 接口

### LED 输出

```verilog
// LED显示拨码开关sw_1的值
logic [31:0] sw_1_ff;
always_ff @(posedge clk or negedge rst_n) begin
    if(~rst_n) sw_1_ff <= 0;
    else sw_1_ff <= sw_1;
end
assign led = sw_1_ff;
```

### 拨码开关输入

| 信号 | 位宽 | 用途 |
|------|------|------|
| sw_1 | 32 | 映射到LED |
| sw_2 | 32 | 显示在数码管 |

### 按钮输入

```verilog
logic [7:0] btn_ff;
always_ff @(posedge clk or negedge rst_n) begin
    if(~rst_n) btn_ff <= 0;
    else btn_ff <= btn;
end
```

---

## 流水线增强特性

### Load-Use 冒险检测

与基础 CPU 相比，SoC 版本增加了完整的 Load-Use 冒险检测机制：

```verilog
// Load-Use 冒险检测
wire exe_is_load = exe2id_mreg && exe2id_wreg && (exe2id_wa != 5'b0);
wire exe_fwd_rs_blocked = exe_is_load && (exe2id_wa == rs);
wire exe_fwd_rt_blocked = exe_is_load && (exe2id_wa == rt);

// 检测是否需要暂停
wire load_use_rs = exe2id_mreg && exe2id_wreg && (exe2id_wa != 5'b0) && (exe2id_wa == rs);
wire load_use_rt = exe2id_mreg && exe2id_wreg && (exe2id_wa != 5'b0) && (exe2id_wa == rt);
wire load_use_hazard = load_use_rs | load_use_rt;

// 暂停请求
assign stallreq = load_use_hazard;
```

### Load-Use 冒险处理流程

```
┌─────────────────────────────────────────────────────────────────────────┐
│                      Load-Use 冒险检测与处理                             │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                         │
│  时钟周期:    1     2     3     4     5     6     7                    │
│  ─────────┬─────┬─────┬─────┬─────┬─────┬─────┬─────                   │
│  LW $3    │ IF  │ ID  │ EXE │ MEM │ WB  │     │                        │
│  ADD $5,$3│     │ IF  │ ID  │ ID  │ EXE │ MEM │ WB   ← 插入气泡         │
│           │     │     │stall│     │     │     │                        │
│                                                                         │
│  冒险检测: 在周期3，ID阶段检测到:                                        │
│    - EXE阶段指令是Load（exe2id_mreg = 1）                               │
│    - Load目标寄存器 = 当前指令源寄存器（exe2id_wa == rs）                │
│                                                                         │
│  处理方式:                                                              │
│    1. stallreq = 1，请求暂停                                            │
│    2. IF阶段PC保持不变                                                  │
│    3. IF/ID寄存器保持不变                                               │
│    4. ID/EXE寄存器插入NOP（气泡）                                       │
│                                                                         │
└─────────────────────────────────────────────────────────────────────────┘
```

### 前推与暂停的配合

```verilog
// 当EXE是Load且目标寄存器匹配时，跳过EXE前推（使用后续阶段的值）
wire [`REG_BUS] fwd_src1 =
    (~exe_fwd_rs_blocked && exe2id_wreg && (exe2id_wa != 5'b0) && (exe2id_wa == rs)) ? exe2id_wd :
    (mem2id_wreg && (mem2id_wa != 5'b0) && (mem2id_wa == rs)) ? mem2id_wd :
    (wb2id_wreg  && (wb2id_wa  != 5'b0) && (wb2id_wa  == rs)) ? wb2id_wd  : rd1;
```

---

## 指令集支持

### 完整指令列表

| 类型 | 指令 | 操作码 | 功能码 | 说明 |
|------|------|--------|--------|------|
| **逻辑运算** |
| R | AND | 0x00 | 0x24 | 按位与 |
| R | OR | 0x00 | 0x25 | 按位或 |
| R | XOR | 0x00 | 0x26 | 按位异或 |
| I | ANDI | 0x0C | - | 立即数按位与 |
| I | ORI | 0x0D | - | 立即数按位或 |
| I | LUI | 0x0F | - | 加载高位立即数 |
| **算术运算** |
| R | ADD | 0x00 | 0x20 | 加法 |
| R | ADDU | 0x00 | 0x21 | 无符号加法 |
| R | SLT | 0x00 | 0x2A | 有符号小于比较 |
| I | ADDI | 0x08 | - | 立即数加法（新增） |
| I | ADDIU | 0x09 | - | 无符号立即数加法 |
| **移位运算** |
| R | SLL | 0x00 | 0x00 | 逻辑左移 |
| R | SRA | 0x00 | 0x03 | 算术右移 |
| **分支跳转** |
| I | BEQ | 0x04 | - | 相等时分支 |
| I | BNE | 0x05 | - | 不等时分支 |
| I | BGEZ | 0x01 | rt=0x01 | 大于等于零分支 |
| **访存指令** |
| I | LW | 0x23 | - | 加载字 |
| I | LB | 0x20 | - | 加载字节 |
| I | SW | 0x2B | - | 存储字 |
| I | SB | 0x28 | - | 存储字节 |

### 新增指令说明

#### ADDI - 有符号立即数加法（SoC版新增）

```
格式: ADDI rt, rs, imm
操作: rt = rs + sign_extend(imm)
说明: 与ADDIU相同，但概念上用于有符号运算
```

#### SLT - 有符号小于比较（SoC版新增）

```
格式: SLT rd, rs, rt
操作: rd = ($signed(rs) < $signed(rt)) ? 1 : 0
说明: 如果rs < rt（有符号比较），rd = 1；否则rd = 0
```

---

## 模块接口说明

### MiniMIPS32_Lite_FullSyS 顶层模块

```verilog
module MiniMIPS32_Lite_FullSyS(
    // 时钟与复位
    input clk,              // 50MHz时钟
    input locked,           // PLL锁定信号（作为复位）
    
    // UART接口
    input  rxd,             // 串口接收
    output txd,             // 串口发送
    
    // GPIO接口
    input  [31:0] sw_1,     // 拨码开关组1
    input  [31:0] sw_2,     // 拨码开关组2
    output [31:0] led,      // LED输出
    input  [7:0]  btn,      // 按钮输入
    
    // 七段数码管接口
    output [3:0] seg_cs,    // 数码管片选
    output [7:0] seg_data   // 数码管段数据
);
```

### top 模块（最外层封装）

```verilog
module top(
    input clk,
    input locked,
    
    input  rxd,
    output txd,
    
    input  [31:0] sw_1,
    input  [31:0] sw_2,
    output [31:0] led,
    output [3:0]  seg_cs,
    output [7:0]  seg_data,
    input  [7:0]  btn
);
```

---

## 使用指南

### 1. 准备程序

1. 使用 MIPS 汇编器编译程序
2. 生成 COE 格式的初始化文件
3. 更新 `inst_rom.coe` 文件

### 2. 综合与实现

1. 在 Vivado 中打开项目
2. 运行综合（Synthesis）
3. 运行实现（Implementation）
4. 生成比特流（Generate Bitstream）

### 3. 下载到 FPGA

1. 连接 FPGA 开发板
2. 打开硬件管理器
3. 下载比特流文件

### 4. 串口通信

1. 连接 USB 转串口线
2. 打开串口终端（如 PuTTY）
3. 设置参数：
   - 波特率：9600
   - 数据位：8
   - 停止位：1
   - 校验位：无

### 5. 示例程序

```assembly
# 串口回显程序
.text
.globl main

main:
    lui     $t0, 0xBFD0         # UART基地址
    
loop:
    # 等待接收数据
    ori     $t1, $t0, 0x03FC    # 状态寄存器
wait_rx:
    lb      $t2, 0($t1)
    andi    $t2, $t2, 0x02      # RX_READY
    beq     $t2, $zero, wait_rx
    
    # 读取数据
    ori     $t1, $t0, 0x03F8    # 数据寄存器
    lb      $a0, 0($t1)
    
    # 等待发送就绪
    ori     $t1, $t0, 0x03FC
wait_tx:
    lb      $t2, 0($t1)
    andi    $t2, $t2, 0x01      # TX_READY
    beq     $t2, $zero, wait_tx
    
    # 发送数据（回显）
    ori     $t1, $t0, 0x03F8
    sb      $a0, 0($t1)
    
    j       loop                # 继续循环
```

---

## 附录

### A. 信号时序

#### UART 发送时序

```
     ┌─────┐
TxD_start ─┘     └──────────────────────────────────────

          ┌─────────────────────────────────────────┐
TxD_busy ─┘                                         └───

         │空闲│起始│ D0 │ D1 │ D2 │ D3 │ D4 │ D5 │ D6 │ D7 │停止│空闲│
TxD    ───┐   ┌───┐   ┌───┐   ┌───┐   ┌───┐   ┌───┐   ┌───┐   ┌───────
          └───┘   └───┘   └───┘   └───┘   └───┘   └───┘   └───┘
```

#### 流水线暂停时序

```
时钟周期:    1     2     3     4     5     6     7
─────────┬─────┬─────┬─────┬─────┬─────┬─────┬─────

         ┌─────────────┐
stall  ──┘             └───────────────────────────

PC       │ A   │ A   │ A   │ A+4 │ A+8 │ A+12│ ...

IF/ID    │ I1  │ I1  │ I1  │ I2  │ I3  │ I4  │ ...

ID/EXE   │ I0  │ NOP │ I1  │ I2  │ I3  │ I4  │ ...
```

### B. 常见问题

#### Q1: 串口无输出

1. 检查波特率设置是否为 9600
2. 确认 RX/TX 连接正确（是否需要交叉）
3. 检查程序中 UART 地址是否正确

#### Q2: 程序执行异常

1. 确认指令 ROM 初始化正确
2. 检查是否有未支持的指令
3. 使用调试接口观察执行情况

#### Q3: Load-Use 暂停过多

1. 优化程序，在 Load 指令后插入无关指令
2. 利用编译器的指令调度功能

---

## 版本历史

| 版本 | 日期 | 说明 |
|------|------|------|
| 1.0 | 2026-01-31 | 初始版本，完整 SoC 实现 |

---

## 参考资料

1. MIPS32 Architecture For Programmers Volume II: The MIPS32 Instruction Set
2. Computer Organization and Design: The Hardware/Software Interface (Patterson & Hennessy)
3. FPGA Prototyping by SystemVerilog Examples (Pong P. Chu)
4. fpga4fun.com - UART Implementation
