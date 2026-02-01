# test_logic_shift.s - 逻辑和移位运算测试
# 测试指令：and, or, xor, nor, andi, ori, sll, srl, sra

.text
.globl _start
_start:
    # 初始化测试值
    li $t0, 0x12345678
    li $t1, 0x87654321
    li $t2, 0xF0F0F0F0
    li $t3, 8           # 移位位数
    
    # 测试 and
    and $s0, $t0, $t1   # s0 = 0x12345678 & 0x87654321
    
    # 测试 or
    or $s1, $t0, $t1    # s1 = 0x12345678 | 0x87654321
    
    # 测试 xor
    xor $s2, $t0, $t1   # s2 = 0x12345678 ^ 0x87654321
    
    # 测试 nor (通过or和not实现)
    or $t4, $t0, $t1
    nor $s3, $t0, $t1   # s3 = ~(t0 | t1)
    
    # 测试 andi
    andi $s4, $t0, 0xFF # s4 = 0x12345678 & 0x000000FF = 0x00000078
    
    # 测试 ori
    ori $s5, $t0, 0xFF  # s5 = 0x12345678 | 0x000000FF = 0x123456FF
    
    # 测试 xori
    xori $s6, $t0, 0xFF # s6 = 0x12345678 ^ 0x000000FF = 0x12345687
    
    # 测试 lui
    lui $s7, 0x1234     # s7 = 0x12340000
    
    # 测试 sll (逻辑左移)
    li $t5, 0x0000000F
    sll $t6, $t5, 4     # t6 = 0x000000F0
    
    # 测试 srl (逻辑右移)
    li $t5, 0xF0000000
    srl $t7, $t5, 4     # t7 = 0x0F000000
    
    # 测试 sra (算术右移)
    li $t5, 0x80000000  # 负数
    sra $t8, $t5, 4     # t8 = 0xF8000000 (保持符号位)
    
    # 测试带变量的移位
    li $t9, 0x12345678
    li $t3, 8
    sllv $s0, $t9, $t3  # s0 = t9 << 8
    
    # 测试多种移位组合
    li $a0, 0x12345678
    sll $a1, $a0, 1     # 左移1位
    srl $a2, $a0, 1     # 逻辑右移1位
    sra $a3, $a0, 1     # 算术右移1位
    
    # 边界测试
    li $v0, 0x80000001
    sra $v1, $v0, 31    # 右移31位，应该得到0xFFFFFFFF
    
    nop
    nop
    nop
    
_halt:
    j _halt
    
.data
    # 数据段
    mask:          .word 0x0000FFFF
    shift_amount:  .word 16
    logic_results: .space 32  # 预留空间存储结果
    test_pattern1: .word 0xAAAAAAAA
    test_pattern2: .word 0x55555555
