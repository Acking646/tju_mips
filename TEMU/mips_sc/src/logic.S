.set noreorder
.set noat
.globl entry
.text
entry:
    # ==========================================
    # 1. 逻辑与位运算测试 (lui, ori, and, andi, or, xor)
    # ==========================================
    lui $at, 0x1010
    ori $at, $at, 0x1010        # $at = 0x10101010
    lui $v0, 0x0101
    ori $v0, $v0, 0x0001        # $v0 = 0x01010001
    
    and $t0, $at, $v0           # $t0 = 0x00000000 (预期)
    andi $t1, $at, 0x00FF       # $t1 = 0x00000010
    xor  $t2, $at, $at          # $t2 = 0 (测试xor自减)
    or   $t3, $t1, $v0          # $t3 = 0x01010011

    # ==========================================
    # 2. 算术运算测试 (add, addu, addiu)
    # ==========================================
    addiu $s0, $zero, 100       # $s0 = 100
    addiu $s1, $zero, -50       # $s1 = -50 (符号扩展测试)
    addu  $s2, $s0, $s1         # $s2 = 50
    
    lui   $t4, 0x7FFF
    ori   $t4, $t4, 0xFFFF      # $t4 = 最大正数 0x7FFFFFFF
    addiu $t5, $zero, 1
    # 注意：add 会触发溢出异常，实验中如果未实现异常处理，请确保加法不溢出
    add   $s3, $s2, $s2         # $s3 = 100

    # 验证 addu 是否正确 (50 + (-50) = 0)
    addu  $t6, $s2, $s1
    bne   $t6, $zero, label_fail
    nop

    # ==========================================
    # 3. 移位运算测试 (sll, srav)
    # ==========================================
    ori   $t7, $zero, 0x0001
    sll   $t7, $t7, 4           # $t7 = 0x0010 (16)
    
    lui   $t8, 0x8000           # $t8 = 0x80000000 (负数)
    ori   $t9, $zero, 1
    srav  $t8, $t8, $t9         # 算术右移1位: $t8 = 0xC0000000
    
    # 验证 srav (符号位应保留)
    lui   $k0, 0xC000
    bne   $t8, $k0, label_fail
    nop

    # ==========================================
    # 4. 跳转与分支测试 (beq, bne, blez)
    # ==========================================
    beq  $t7, $zero, label_fail # 16 != 0, 不应跳转
    nop
    
    blez $zero, test_blez_ok    # 0 <= 0, 应该跳转
    nop
    j label_fail
    nop

test_blez_ok:
    addiu $t0, $zero, -1
    blez  $t0, test_mem         # -1 <= 0, 应该跳转
    nop
    j label_fail
    nop

    # ==========================================
    # 5. 访存指令测试 (lw, sw, lb, sb)
    # ==========================================
test_mem:
    # 预设一个地址，假设 0x80002000 是可写的 RAM 区域
    lui $s7, 0x8000
    ori $s7, $s7, 0x2000
    
    # sw/lw 测试
    lui $t0, 0x1234
    ori $t0, $t0, 0x5678
    sw  $t0, 0($s7)
    lw  $t1, 0($s7)
    bne $t0, $t1, label_fail    # 写读不一致则失败
    nop
    
    # sb/lb 测试 (负数符号扩展)
    ori $t2, $zero, 0x00FF      # 字节为 0xFF
    sb  $t2, 4($s7)
    lb  $t3, 4($s7)             # 预期 $t3 = 0xFFFFFFFF
    addiu $t4, $zero, -1
    bne $t3, $t4, label_fail
    nop

    # ==========================================
    # 成功退出
    # ==========================================
label_pass:
    .word 0x48000000
    nop

    # ==========================================
    # 失败处理
    # ==========================================
label_fail:
    beq $zero, $zero, label_pass          
    j label_fail
    nop