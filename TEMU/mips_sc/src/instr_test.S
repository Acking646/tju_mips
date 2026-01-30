.set noreorder
.set noat
.globl entry
.text
entry:
    # ==========================================
    # 1. 常数加载与位运算 (lui, ori, andi, or, xor)
    # ==========================================
    lui   $t0, 0x1234          # $t0 = 0x12340000
    ori   $t0, $t0, 0x5678     # $t0 = 0x12345678
    andi  $t1, $t0, 0xF0F0     # $t1 = 0x00005070
    xor   $t2, $t1, $t1        # $t2 = 0 (验证 xor 自减)
    or    $t3, $t1, $zero      # $t3 = 0x00005070
    
    # ==========================================
    # 2. 算术运算 (addiu, addu, add)
    # ==========================================
    addiu $s0, $zero, 100      # $s0 = 100
    addiu $s1, $zero, -40      # $s1 = -40 (验证立即数符号扩展)
    addu  $s2, $s0, $s1        # $s2 = 60
    add   $s3, $s2, $s2        # $s3 = 120
    
    # 验证计算结果，如果不等于120则跳到失败
    addiu $t4, $zero, 120
    bne   $s3, $t4, label_fail
    nop

    # ==========================================
    # 3. 移位运算 (sll, sllv)
    # ==========================================
    addiu $t5, $zero, 0x01
    sll   $t6, $t5, 4          # $t6 = 0x10 (16)
    
    addiu $t7, $zero, 3        # 移位量为3
    sllv  $s4, $t6, $t7        # $s4 = 0x10 << 3 = 0x80 (128)
    
    # 验证 sllv 结果
    addiu $t8, $zero, 128
    bne   $s4, $t8, label_fail
    nop

    # ==========================================
    # 4. 访存指令 (sw, lw, sb, lb)
    # ==========================================
    # 假设 0xA0000000 是可写内存区
    lui   $s5, 0xA000
    addiu $s6, $zero, 0x1122
    sw    $s6, 0($s5)          # 存入 0x00001122
    lw    $s7, 0($s5)          # 读回
    bne   $s6, $s7, label_fail
    nop

    addiu $t0, $zero, 0x00AF   # 测试字节存储 (负值符号扩展)
    sb    $t0, 4($s5)
    lb    $t1, 4($s5)          # 0xAF 符号扩展后应为 0xFFFFFFAF
    addiu $t2, $zero, -81      # -81 的补码正好是 0xFFFFFFAF
    bne   $t1, $t2, label_fail
    nop

    # ==========================================
    # 5. 分支与跳转 (beq, bgez)
    # ==========================================
    beq   $zero, $zero, test_bgez
    nop
    beq   $zero, $zero, label_fail # 永远不该执行到这
    nop

test_bgez:
    addiu $t3, $zero, 0
    bgez  $t3, label_pass      # 0 >= 0, 应该跳转到成功
    nop

    # ==========================================
    # 结果分支
    # ==========================================
label_pass:
    .word 0x48000000           # 成功：触发 TEMU 退出指令
    nop

label_fail:
    beq   $zero, $zero, label_fail # 失败：陷入死循环
    nop