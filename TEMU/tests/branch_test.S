# 目标：测试 andi 以及分支指令
.text
.globl _start

_start:
    # --- 1. 使用 ori 和 andi 初始化寄存器 ---
    # 假设 $zero 始终为 0
    ori  $t0, $zero, 0xFFFF   # $t0 = 0x0000FFFF
    andi $t1, $t0, 0x00FF     # $t1 = 0x0000FFFF & 0x00FF = 0x000000FF
    
    # 设置用于比较的寄存器
    ori  $t2, $zero, 0x00FF   # $t2 = 255
    ori  $t3, $zero, 0x0000   # $t3 = 0

    # --- 2. 测试 beq (应该跳转) ---
    beq  $t1, $t2, test_bne   # 0xFF == 0xFF, 应该跳转
    andi $s0, $zero, 0x0000   # 没跳则执行 (可以用 andi 清零作为标记)
    ori  $s0, $zero, 0x0999

test_bne:
    # --- 3. 测试 bne (应该跳转) ---
    bne  $t1, $t3, test_blez  # 0xFF != 0, 应该跳转
    ori  $s1, $zero, 0x0999

test_blez:
    # --- 4. 测试 blez (应该跳转) ---
    # 利用 andi 产生一个 0
    andi $t4, $t1, 0x0000     # $t4 = 0
    blez $t4, success         # 0 <= 0, 应该跳转
    ori  $s2, $zero, 0x0999

success:
    # 如果运行到这里，且 $s0, $s1, $s2 都是 0，说明逻辑正确
    ori  $s3, $zero, 1        # $s3 = 1 表示成功
    #temu_trap
    .word 0x0000006b
    



