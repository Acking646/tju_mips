# test_memory.s - 内存访问测试
# 测试指令：lw, sw, lb, sb, lui, ori

.text
.globl _start
_start:
    # 初始化栈指针
    la $sp, stack_top
    
    # 测试 lui + ori 加载地址
    lui $t0, 0x1000      # 加载高位
    ori $t0, $t0, 0x0100 # 加上低位
    
    # 测试 lw/sw 字访问
    li $t1, 0x12345678
    sw $t1, 0($sp)       # 存储到栈顶
    
    lw $t2, 0($sp)       # 从栈顶加载
    # 这里 t2 应该等于 t1
    
    # 测试 lb/sb 字节访问
    li $t3, 0xAABBCCDD
    sw $t3, 4($sp)       # 存储整个字
    
    # 存储单个字节
    li $t4, 0xFF
    sb $t4, 4($sp)       # 修改最低字节
    
    # 加载单个字节（带符号扩展）
    lb $t5, 4($sp)       # t5 应该是 0xFFFFFFDD
    
    # 测试不同的对齐访问
    li $t6, 0x11111111
    sw $t6, 8($sp)
    
    li $t7, 0x22222222
    sw $t7, 12($sp)
    
    # 测试加载多个字
    lw $s0, 8($sp)
    lw $s1, 12($sp)
    
    # 测试数组访问
    la $t8, test_array   # 加载数组地址
    li $t9, 100
    sw $t9, 0($t8)       # test_array[0] = 100
    
    li $t9, 200
    sw $t9, 4($t8)       # test_array[1] = 200
    
    li $t9, 300
    sw $t9, 8($t8)       # test_array[2] = 300
    
    # 从数组加载
    lw $s2, 0($t8)       # s2 = 100
    lw $s3, 4($t8)       # s3 = 200
    lw $s4, 8($t8)       # s4 = 300
    
    # 测试字符串存储
    la $a0, str_buffer
    li $a1, 'H'
    sb $a1, 0($a0)
    li $a1, 'i'
    sb $a1, 1($a0)
    li $a1, '!'
    sb $a1, 2($a0)
    li $a1, 0
    sb $a1, 3($a0)       # 字符串结束符
    
    # 测试负数字节访问
    li $v0, -1
    sb $v0, 16($sp)
    lb $v1, 16($sp)      # 应该进行符号扩展
    
    # 内存复制测试
    la $a0, src_data
    la $a1, dest_data
    lw $t0, 0($a0)
    sw $t0, 0($a1)
    lw $t0, 4($a0)
    sw $t0, 4($a1)
    
    nop
    nop
    nop
    
_halt:
    j _halt

.data
    # 数据段
    test_array:   .word 0, 0, 0, 0, 0
    str_buffer:   .space 16
    src_data:     .word 0xDEADBEEF, 0xCAFEBABE
    dest_data:    .word 0, 0
    
.bss
    # 未初始化数据段
    .align 4
stack_bottom:
    .space 256
stack_top:
