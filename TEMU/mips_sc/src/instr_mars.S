# ==========================================
# Mars 兼容版指令测试脚本
# 注意：请在 Mars 的 Settings 中勾选 "Branch Delay Slot"
# ==========================================

.globl entry
.text
entry:
    # 1. 逻辑与位运算测试 (lui, ori, and, andi, or, xor)
    lui $at, 0x1010
    ori $at, $at, 0x1010        # $at = 0x10101010
    lui $v0, 0x0101
    ori $v0, $v0, 0x0001        # $v0 = 0x01010001
    
    and $t0, $at, $v0           # $t0 = 0x00000000
    andi $t1, $at, 0x00FF       # $t1 = 0x00000010
    xor  $t2, $at, $at          # $t2 = 0
    or   $t3, $t1, $v0          # $t3 = 0x01010011

    # 2. 算术运算测试 (add, addu, addiu)
    addiu $s0, $zero, 100       
    addiu $s1, $zero, -50       
    addu  $s2, $s0, $s1         # $s2 = 50
    add   $s3, $s2, $s2         # $s3 = 100

    addu  $t6, $s2, $s1         # 50 + (-50) = 0
    bne   $t6, $zero, label_fail
    nop

    # 3. 移位运算测试 (sll, srav)
    ori   $t7, $zero, 0x0001
    sll   $t7, $t7, 4           # $t7 = 0x0010
    
    lui   $t8, 0x8000           # $t8 = 0x80000000
    ori   $t9, $zero, 1
    srav  $t8, $t8, $t9         # $t8 = 0xC0000000 (算术右移保留符号位)
    
    lui   $k0, 0xC000
    bne   $t8, $k0, label_fail
    nop

    # 4. 跳转与分支测试 (beq, bne, blez)
    beq   $t7, $zero, label_fail
    nop
    
    blez  $zero, test_blez_ok   # 应该跳转
    nop
    
    beq   $zero, $zero, label_fail
    nop

test_blez_ok:
    addiu $t0, $zero, -1
    blez  $t0, test_mem         # 应该跳转
    nop
    
    beq   $zero, $zero, label_fail
    nop

    # 5. 访存指令测试 (lw, sw, lb, sb)
test_mem:
    # 在 Mars 中，0x10010000 是静态数据段的起始地址，安全可写
    lui $s7, 0x1001             
    ori $s7, $s7, 0x0000
    
    lui $t0, 0x1234
    ori $t0, $t0, 0x5678
    sw  $t0, 0($s7)
    lw  $t1, 0($s7)
    bne $t0, $t1, label_fail
    nop
    
    ori $t2, $zero, 0x00FF
    sb  $t2, 4($s7)
    lb  $t3, 4($s7)
    addiu $t4, $zero, -1        # 0xFF 符号扩展为 0xFFFFFFFF
    bne $t3, $t4, label_fail
    nop

label_pass:
    # Mars 的标准退出方式：使用 syscall 10
    li $v0, 10
    syscall

label_fail:
    # 如果运行到这里，说明某个逻辑错了，使 $v1 标记为 1
    li $v1, 1
    li $v0, 10
    syscall