#include "trap.h"
.set noat
.set noreorder
.globl main
.text
main:
    # ==============================
    # 测试 1: beq 相等跳转
    # ==============================
    addiu $t0, $zero, 5
    addiu $t1, $zero, 5
    beq $t0, $t1, beq_equal     # 应该跳转
    nop
    b fail                       # 不应执行到这里
    nop

beq_equal:
    # ==============================
    # 测试 2: beq 不相等不跳转
    # ==============================
    addiu $t2, $zero, 10
    beq $t0, $t2, fail          # 5 != 10，不应跳转
    nop
    
    # ==============================
    # 测试 3: bne 不相等跳转
    # ==============================
    bne $t0, $t2, bne_not_equal # 应该跳转
    nop
    b fail                       # 不应执行到这里
    nop

bne_not_equal:
    # ==============================
    # 测试 4: bne 相等不跳转
    # ==============================
    bne $t0, $t1, fail          # 5 == 5，不应跳转
    nop
    
    # ==============================
    # 测试 5: jalr 跳转链接寄存器
    # ==============================
    la $t3, target_function     # $t3 = 目标地址
    jalr $ra, $t3               # 跳转到 $t3，$ra = 返回地址
    nop                          # 延迟槽
    # 如果jalr正常工作，不会执行到这里
    b fail
    nop

target_function:
    # ==============================
    # 测试 6: 嵌套分支测试
    # ==============================
    addiu $t4, $zero, 100
    addiu $t5, $zero, 200
    
    beq $t4, $t5, fail          # 不应跳转
    nop
    
    bne $t4, $t5, nested_test   # 应该跳转
    nop
    b fail
    nop

nested_test:
    # ==============================
    # 测试 7: 零值分支
    # ==============================
    addiu $t6, $zero, 0
    beq $t6, $zero, zero_equal  # 应该跳转
    nop
    b fail
    nop

zero_equal:
    # ==============================
    # 测试 8: 复杂条件分支
    # ==============================
    addiu $t7, $zero, 50
    addiu $s0, $zero, 50
    
    bne $t7, $s0, fail          # 不应跳转
    nop
    beq $t7, $s0, final_test    # 应该跳转
    nop

final_test:
    HIT_GOOD_TRAP

fail:
    b fail
    nop