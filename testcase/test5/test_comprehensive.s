# test_comprehensive.s - 综合测试程序
# 测试所有17条指令的复杂组合

.text
.globl _start
_start:
    # 初始化
    li $sp, 0x80010000    # 设置栈指针
    
    # 阶段1: 算术运算
    jal test_arithmetic
    
    # 阶段2: 逻辑运算
    jal test_logic
    
    # 阶段3: 内存操作
    jal test_memory
    
    # 阶段4: 控制流
    jal test_control_flow
    
    # 阶段5: 综合测试
    jal comprehensive_test
    
    # 测试完成
    li $v0, 0xCAFE1234    # 成功标志
    
_halt:
    j _halt

# ========== 测试函数 ==========

test_arithmetic:
    # 测试 add/addu
    li $t0, 1000
    li $t1, 2000
    add $t2, $t0, $t1     # t2 = 3000
    
    # 测试 addi/addiu
    addi $t3, $t0, 500    # t3 = 1500
    addiu $t4, $t1, -500  # t4 = 1500
    
    # 测试 sub/subu
    sub $t5, $t1, $t0     # t5 = 1000
    subu $t6, $t1, $t0    # t6 = 1000
    
    # 测试 mult
    li $t7, 123
    li $t8, 456
    mult $t7, $t8
    mflo $s0              # 低位结果
    mfhi $s1              # 高位结果
    
    jr $ra

test_logic:
    # 测试 and/or/xor
    li $t0, 0xAAAA5555
    li $t1, 0x5555AAAA
    
    and $t2, $t0, $t1     # t2 = 0x00000000
    or  $t3, $t0, $t1     # t3 = 0xFFFFFFFF
    xor $t4, $t0, $t1     # t4 = 0xFFFFFFFF
    
    # 测试 andi/ori
    andi $t5, $t0, 0xFF   # t5 = 0x00000055
    ori  $t6, $t1, 0xFF   # t6 = 0x5555AAFF
    
    # 测试 lui
    lui $s2, 0x1234       # s2 = 0x12340000
    
    # 测试 sll/srl/sra
    li $t7, 0x87654321
    sll $t8, $t7, 4       # t8 = 0x76543210
    srl $t9, $t7, 4       # t9 = 0x08765432
    sra $s3, $t7, 4       # s3 = 0xF8765432
    
    jr $ra

test_memory:
    # 测试 sw/lw
    li $t0, 0xDEADBEEF
    sw $t0, 0($sp)
    lw $t1, 0($sp)        # t1 应该等于 t0
    
    # 测试 sb/lb
    li $t2, 0xA5
    sb $t2, 4($sp)
    lb $t3, 4($sp)        # t3 应该等于 0xFFFFFFA5
    
    # 数组操作
    la $t4, data_array
    li $t5, 1
    sw $t5, 0($t4)        # data_array[0] = 1
    sw $t5, 4($t4)        # data_array[1] = 1
    
    # 计算斐波那契数列
    li $t6, 8             # 计算8个数
    li $t7, 0             # 循环计数器
    
fib_loop:
    # 加载前两个数
    lw $t8, 0($t4)        # F[n-2]
    lw $t9, 4($t4)        # F[n-1]
    
    # 计算下一个数
    addu $s4, $t8, $t9    # F[n] = F[n-1] + F[n-2]
    
    # 存储结果
    sw $s4, 8($t4)
    
    # 移动指针
    addiu $t4, $t4, 4
    
    # 循环控制
    addiu $t7, $t7, 1
    blt $t7, $t6, fib_loop  # 使用伪指令 blt
    
    jr $ra

test_control_flow:
    # 测试 beq/bne
    li $t0, 10
    li $t1, 20
    
    # 条件分支测试
    beq $t0, $t1, skip1   # 应该不跳转
    addiu $t0, $t0, 5     # 执行这里: t0 = 15
    
skip1:
    bne $t0, $t1, skip2   # 应该跳转
    addiu $t0, $t0, 5     # 不执行
    
skip2:
    # 测试 slt/slti
    slt $t2, $t0, $t1     # 15 < 20, t2 = 1
    slti $t3, $t0, 10     # 15 < 10, t3 = 0
    
    # 循环测试
    li $t4, 0             # i = 0
    li $t5, 10            # 循环10次
    
loop1:
    addiu $t4, $t4, 1     # i++
    bne $t4, $t5, loop1   # 循环直到 i == 10
    
    # 测试 jal/jr
    jal subroutine
    # 返回后继续
    
    jr $ra

subroutine:
    # 简单子程序
    li $v0, 0x12345678
    jr $ra

comprehensive_test:
    # 综合测试: 冒泡排序
    
    # 初始化数组
    la $s0, sort_array
    li $s1, 10            # 数组长度
    
    # 填充数组
    li $t0, 0
init_loop:
    sll $t1, $t0, 2       # 索引 * 4
    addu $t2, $s0, $t1    # 计算地址
    li $t3, 10
    subu $t3, $t3, $t0    # 填充值: 10-i
    sw $t3, 0($t2)        # 存储
    addiu $t0, $t0, 1
    blt $t0, $s1, init_loop  # 使用伪指令
    
    # 冒泡排序
    li $t4, 0             # i = 0
outer:
    li $t5, 0             # j = 0
    subu $t6, $s1, $t4
    addiu $t6, $t6, -1    # n-i-1
    
inner:
    # 加载 arr[j] 和 arr[j+1]
    sll $t7, $t5, 2
    addu $t8, $s0, $t7    # &arr[j]
    lw $t9, 0($t8)        # arr[j]
    lw $t0, 4($t8)        # arr[j+1]
    
    # 比较
    slt $t1, $t0, $t9     # 如果 arr[j+1] < arr[j]
    beq $t1, $zero, no_swap
    
    # 交换
    sw $t0, 0($t8)
    sw $t9, 4($t8)
    
no_swap:
    addiu $t5, $t5, 1     # j++
    blt $t5, $t6, inner   # 内层循环
    
    addiu $t4, $t4, 1     # i++
    addiu $t6, $s1, -1
    blt $t4, $t6, outer   # 外层循环
    
    # 验证排序结果
    li $t0, 0
verify:
    sll $t1, $t0, 2
    addu $t2, $s0, $t1
    lw $t3, 0($t2)
    addiu $t0, $t0, 1
    blt $t0, $s1, verify
    
    jr $ra

.data
    # 数据段
    data_array:    .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    sort_array:    .space 40      # 10个字的数组
    test_results:  .space 100
