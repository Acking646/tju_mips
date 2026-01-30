#include "trap.h"
.set noat
.set noreorder
.globl main
.text
main:
    # ==============================
    # 测试 1: addi 立即数加法 (边界条件)
    # ==============================
    addi $t0, $zero, 0          # $t0 = 0
    addi $t1, $zero, 1          # $t1 = 1
    addi $t2, $zero, -1         # $t2 = 0xFFFFFFFF (负数边界)
    addi $t3, $zero, 32767      # $t3 = 0x7FFF (16位正最大值)
    addi $t4, $zero, -32768     # $t4 = 0x8000 (16位负最小值)
    
    # ==============================
    # 测试 2: addiu 无符号立即数加法
    # ==============================
    addiu $s0, $zero, 100       # $s0 = 100
    addiu $s1, $zero, -100      # $s1 = 0xFFFFFF9C (负数)
    addiu $s2, $s0, $s1         # $s2 = 0 (验证 -100 + 100 = 0)
    
    # ==============================
    # 测试 3: addu 无符号寄存器加法
    # ==============================
    lui $t5, 0xFFFF
    ori $t5, $t5, 0xFFFF        # $t5 = 0xFFFFFFFF
    addu $s3, $t5, $zero        # $s3 = 0xFFFFFFFF (无符号溢出测试)
    addu $s4, $s0, $s0          # $s4 = 200 (100 + 100)
    
    # ==============================
    # 测试 4: add 有符号加法
    # ==============================
    add $s5, $zero, $zero       # $s5 = 0
    add $s6, $s5, 1             # $s6 = 1 (使用立即数伪指令)
    add $s7, $s6, $s6           # $s7 = 2
    add $t6, $s7, $s7           # $t6 = 4
    add $t7, $t6, $t6           # $t7 = 8
    
    # ==============================
    # 测试 5: 混合运算验证
    # ==============================
    addiu $v0, $zero, 10        # $v0 = 10
    addu $v1, $v0, $v0         # $v1 = 20
    add $a0, $v1, $v1          # $a0 = 40
    
    # 验证结果
    addiu $a1, $zero, 40
    bne $a0, $a1, fail         # 如果不等于40，跳转失败
    nop
    
    HIT_GOOD_TRAP

fail:
    b fail
    nop