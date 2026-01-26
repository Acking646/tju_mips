# 简单的溢出测试 - 测试 add 指令的溢出检测
#include "trap.h"
.set noat
.text
.globl main

main:
    # 测试正溢出: 0x7FFFFFFF + 1
    lui $t0, 0x7FFF
    ori $t0, $t0, 0xFFFF         # $t0 = 0x7FFFFFFF
    ori $t1, $zero, 1            # $t1 = 1
    add $t2, $t0, $t1            # 这里应该触发溢出异常！
    # 如果实现正确，程序会在这里panic，不会执行到下面
    
    # 如果程序执行到这里，说明溢出检测没有工作
    HIT_GOOD_TRAP

