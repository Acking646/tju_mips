# test_branch_jump.s - 分支跳转测试
# 测试指令：beq, bne, j, jal, jr, jalr, slt, slti

.text
.globl _start
_start:
    # 测试 beq (相等时分支)
    li $t0, 10
    li $t1, 10
    beq $t0, $t1, label_equal_1
    # 不应该执行到这里
    li $s0, 0xDEAD
label_equal_1:
    li $s0, 0x1234        # 应该执行这里
    
    # 测试 bne (不等时分支)
    li $t2, 10
    li $t3, 20
    bne $t2, $t3, label_not_equal
    # 不应该执行到这里
    li $s1, 0xDEAD
label_not_equal:
    li $s1, 0x5678        # 应该执行这里
    
    # 测试 slt (设置小于)
    li $t4, 5
    li $t5, 10
    slt $t6, $t4, $t5     # t6 = 1 (5 < 10)
    
    li $t4, 10
    li $t5, 5
    slt $t7, $t4, $t5     # t7 = 0 (10 < 5 为假)
    
    # 测试 slti (立即数设置小于)
    li $t8, 7
    slti $t9, $t8, 10     # t9 = 1 (7 < 10)
    
    # 测试带符号比较
    li $a0, -5
    li $a1, 5
    slt $a2, $a0, $a1     # a2 = 1 (-5 < 5)
    
    # 测试 j (无条件跳转)
    j jump_target_1
    
    # 不应该执行到这里
    li $v0, 0xDEADBEEF
    
jump_target_1:
    li $v0, 0xCAFEBABE    # 应该执行这里
    
    # 测试 jal (跳转并链接)
    jal function_test
    # jal 返回后继续执行
    li $v1, 0x12345678
    
    # 测试 jr (寄存器跳转)
    la $ra, jump_target_2
    jr $ra
    
    # 不应该执行到这里
    li $a3, 0xDEAD
    
jump_target_2:
    li $a3, 0xBEEF        # 应该执行这里
    
    # 测试 jalr (寄存器跳转并链接)
    la $t0, function_test_2
    jalr $t0
    
    # 循环测试
    li $s2, 0             # 计数器
    li $s3, 5             # 循环次数
    
loop_test:
    # 循环体
    addiu $s2, $s2, 1     # 计数器加1
    
    # 条件判断
    bne $s2, $s3, loop_test  # 如果 s2 != s3，继续循环
    
    # 循环结束
    li $s4, 0x8888
    
    # 嵌套循环测试
    li $s5, 0             # 外层计数器
    li $s6, 3             # 外层循环次数
    
outer_loop:
    li $s7, 0             # 内层计数器
    li $t8, 2             # 内层循环次数
    
inner_loop:
    addiu $s7, $s7, 1
    bne $s7, $t8, inner_loop
    
    addiu $s5, $s5, 1
    bne $s5, $s6, outer_loop
    
    # 测试条件组合
    li $k0, 0
    li $k1, 100
    
conditional_test:
    addiu $k0, $k0, 1
    slti $at, $k0, 50
    bne $at, $zero, conditional_test  # 如果 k0 < 50，继续循环
    
    nop
    nop
    nop
    
_halt:
    j _halt

# 测试函数
function_test:
    li $ra, 0x87654321    # 修改返回地址（测试）
    jr $ra                # 返回

function_test_2:
    li $ra, 0x99999999
    jr $ra

.data
    # 数据段
    loop_counter:   .word 0
    test_value:     .word 42
    branch_results: .space 32
