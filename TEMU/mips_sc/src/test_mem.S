#include "trap.h"
.set noat
.globl main
.text
main:
    # 准备基地址 $s0 = 0x80000000
    lui $s0, 0x8000

    # 1. 测试 sw/lw
    ori $t0, $zero, 0x1234
    sw  $t0, 0($s0)        # 写入 0x80000000
    lw  $t1, 0($s0)        # $t1 应该是 0x1234

    # 2. 测试 sb/lb (带符号扩展)
    ori $t2, $zero, 0x80   
    sb  $t2, 4($s0)        # 写入 0x80000004
    lb  $t3, 4($s0)        # $t3 应该是 0xffffff80 (符号扩展)

    # 结束
    HIT_GOOD_TRAP
