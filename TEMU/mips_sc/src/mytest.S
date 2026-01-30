#include "trap.h"
.set noat
.set noreorder
.globl main
.text
main:
    # ----------------------
    # 1. 测试 addi (带符号加法)
    # ----------------------
    # 目的：验证是否支持负数立即数
    # -1 (0xffffffff) + 1 = 0
    addi $t0, $zero, -1     # $t0 = 0xffffffff
    addi $t1, $t0, 1        # $t1 应该是 0x00000000

    # ----------------------
    # 2. 测试 sra (算术右移)
    # ----------------------
    # 目的：验证高位是否补1 (符号扩展)
    lui $t2, 0x8000         # t2 = 0x80000000 (符号位为1)
    sra $t3, $t2, 4         # t3 应该是 0xf8000000
                            # 如果结果是 0x08000000，说明写成了 srl (错误)

    # ----------------------
    # 3. 测试 jalr (跳转链接)
    # ----------------------
    # 目的：验证是否跳转，且 $ra 是否保存了返回地址
    la $t4, target_func     # 加载目标地址到 t4
    jalr $ra, $t4           # 跳转到 t4，返回地址存入 ra ($31)
    nop                     # 延迟槽

    # --- 失败陷阱 ---
    # 如果 jalr 没跳走，程序会继续走到这里 -> 死循环
    b fail
    nop

target_func:
    # --- 成功 ---
    HIT_GOOD_TRAP

fail:
    b fail
    nop
