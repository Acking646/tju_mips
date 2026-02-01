# test_arithmetic.s - 基本算术运算测试
# 测试指令：add, addu, addi, addiu, sub, subu, mult, mfhi, mflo

.text
.globl _start
_start:
    # 初始化寄存器
    li $t0, 10          # t0 = 10
    li $t1, 20          # t1 = 20
    li $t2, -5          # t2 = -5
    
    # 测试 add
    add $t3, $t0, $t1   # t3 = 10 + 20 = 30
    
    # 测试 addu
    addu $t4, $t0, $t2  # t4 = 10 + (-5) = 5 (无符号)
    
    # 测试 addi
    addi $t5, $t0, 15   # t5 = 10 + 15 = 25
    
    # 测试 addiu
    addiu $t6, $t2, 10  # t6 = -5 + 10 = 5 (无符号)
    
    # 测试 sub
    sub $t7, $t1, $t0   # t7 = 20 - 10 = 10
    
    # 测试 subu
    subu $t8, $t1, $t2  # t8 = 20 - (-5) = 25 (无符号)
    
    # 测试 mult
    li $t0, 3
    li $t1, 4
    mult $t0, $t1       # hi:lo = 3 * 4 = 12
    
    # 测试 mfhi/mflo
    mfhi $s0            # 取高位结果
    mflo $s1            # 取低位结果 (s1 = 12)
    
    # 测试负数乘法
    li $t0, -3
    li $t1, 4
    mult $t0, $t1       # hi:lo = -12
    mflo $s2            # s2 = -12
    
    # 测试带符号的立即数加载
    li $s3, 0x80000000  # 最大负数
    li $s4, 0x7FFFFFFF  # 最大正数
    
    # 循环结束标记
    nop
    nop
    nop
    
_halt:
    j _halt
    
.data
    # 数据段
    result_add:    .word 0
    result_addu:   .word 0
    result_addi:   .word 0
    result_addiu:  .word 0
    result_sub:    .word 0
    result_subu:   .word 0
    result_mult:   .word 0
    test_array:    .word 1, 2, 3, 4, 5
    test_string:   .asciiz "Arithmetic Test Complete"
