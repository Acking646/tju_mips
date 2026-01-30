.globl entry
.text
entry:
    # 1. 测试 ORI: $t0 = 0 | 0x1234 = 0x1234
    ori $t0, $zero, 0x1234
    
    # 2. 测试 OR:  $t1 = $t0 | 0 = 0x1234
    or  $t1, $t0, $zero
    
    # 3. 测试 ANDI: $t2 = $t0 & 0xFF = 0x34
    andi $t2, $t0, 0x00FF
    
    # 4. 测试 XOR:  $t3 = $t1 ^ $t2 = 0x1234 ^ 0x34 = 0x1200
    xor $t3, $t1, $t2

    # 死循环 (防止跑飞)
loop:
    beq $zero, $zero, loop