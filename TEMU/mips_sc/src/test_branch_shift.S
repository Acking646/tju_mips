#include "trap.h"
.set noat
.globl main
.text
main:
    ori $t0, $zero, 1      # 初始值
    ori $t1, $zero, 10     # 目标次数
    ori $t2, $zero, 0      # 计数器

loop:
    # 如果计数器 == 10，跳出循环
    beq $t2, $t1, end_loop
    nop                    # 延迟槽

    # 左移操作: t0 = t0 * 2
    sll $t0, $t0, 1        
    
    # 计数器 + 1
    addiu $t2, $t2, 1
    
    # 无条件跳回 loop (0 != 10 永远成立)
    bne $zero, $t1, loop
    nop                    # 延迟槽

end_loop:
    # 结束: $t0 应该是 1024 (0x400)
    HIT_GOOD_TRAP
