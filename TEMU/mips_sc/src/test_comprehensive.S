#include "trap.h"
.set noat
.set noreorder
.globl main
.text
main:
    # ============================================
    # 综合测试：覆盖所有17条指令和边界条件
    # ============================================
    
    # ----------------------
    # 1. 算术运算边界测试
    # ----------------------
    addi $t0, $zero, -32768     # $t0 = 0x8000 (16位最小值)
    addi $t1, $zero, 32767      # $t1 = 0x7FFF (16位最大值)
    addiu $t2, $t0, 1           # $t2 = 0x8001 (溢出测试)
    addu $t3, $t0, $t1          # $t3 = 0xFFFF (无符号溢出)
    add $t4, $t2, $zero         # $t4 = $t2
    
    # ----------------------
    # 2. 逻辑运算测试
    # ----------------------
    lui $s0, 0xDEAD             # $s0 = 0xDEAD0000
    ori $s0, $s0, 0xBEEF        # $s0 = 0xDEADBEEF
    andi $s1, $s0, 0xFFFF       # $s1 = 0x0000BEEF
    or $s2, $s1, $zero          # $s2 = 0x0000BEEF
    xor $s3, $s0, $s1           # $s3 = 0xDEADxxxx
    
    # ----------------------
    # 3. 移位运算测试
    # ----------------------
    addiu $s4, $zero, 1
    sll $s4, $s4, 16            # $s4 = 0x00010000
    lui $s5, 0x8000             # $s5 = 0x80000000
    sra $s5, $s5, 16            # $s5 = 0xFFFF8000 (算术右移)
    sll $s6, $s5, 16            # $s6 = 0x80000000 (左移回来)
    
    # ----------------------
    # 4. 内存访问测试
    # ----------------------
    lui $s7, 0x8001             # 数据段基地址
    sw $t0, 0($s7)              # 存储最小值
    sw $t1, 4($s7)              # 存储最大值
    sw $s0, 8($s7)              # 存储复杂值
    
    lb $t5, 0($s7)              # $t5 = 符号扩展的最小值
    lbu $t6, 4($s7)             # $t6 = 无符号最大值
    sb $t7, 12($s7)             # 存储字节
    
    # ----------------------
    # 5. 分支跳转测试
    # ----------------------
    addiu $v0, $zero, 100
    addiu $v1, $zero, 100
    beq $v0, $v1, branch_ok1    # 相等跳转
    nop
    b fail
    nop

branch_ok1:
    bne $v0, $v1, fail          # 不应跳转
    nop
    
    # ----------------------
    # 6. jalr 跳转链接测试
    # ----------------------
    la $a0, func_test
    jalr $ra, $a0
    nop
    # 返回后继续执行
    b after_jalr
    nop

func_test:
    addiu $a1, $zero, 0x1234
    jr $ra
    nop

after_jalr:
    # ----------------------
    # 7. 结果验证
    # ----------------------
    addiu $a2, $zero, 100
    bne $v0, $a2, fail
    nop
    
    # 验证移位结果
    addiu $a3, $zero, -32768    # $a3 = 0xFFFF8000
    bne $s5, $a3, fail          # 检查sra结果
    nop
    
    HIT_GOOD_TRAP

fail:
    b fail
    nop