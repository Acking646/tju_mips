#include "trap.h"
.set noat
.globl main
.text
main:
    # 1. 初始化: $t0 = 0x12345678
    lui $t0, 0x1234
    ori $t0, $t0, 0x5678

    # 2. 加立即数: $t1 = 0x12345679
    addiu $t1, $t0, 1

    # 3. 寄存器加法: $t2 = Sum
    addu $t2, $t0, $t1

    # 4. 与运算: $t3 = 0x00005678
    andi $t3, $t0, 0xffff

    # 5. 或运算: $t4 = 0x12345678
    or  $t4, $t3, $t0

    # 6. 异或运算: $t5 应该等于 0
    xor $t5, $t4, $t0

    # 结束
    HIT_GOOD_TRAP
