#include "helper.h"
#include "monitor.h"
#include "reg.h"

extern uint32_t instr;
extern char assembly[80];

/* decode R-type instrucion */
static void decode_r_type(uint32_t instr) {

	op_src1->type = OP_TYPE_REG;
	op_src1->reg = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);
	op_src1->val = reg_w(op_src1->reg);
	
	op_src2->type = OP_TYPE_REG;
	op_src2->imm = (instr & RT_MASK) >> (RD_SIZE + SHAMT_SIZE + FUNC_SIZE);
	op_src2->val = reg_w(op_src2->reg);

	op_dest->type = OP_TYPE_REG;
	op_dest->reg = (instr & RD_MASK) >> (SHAMT_SIZE + FUNC_SIZE);
}

make_helper(and) {

	decode_r_type(instr);
	reg_w(op_dest->reg) = (op_src1->val & op_src2->val);
    //trace
    log_golden_trace(cpu.pc,op_dest->reg,reg_w(op_dest->reg));
	sprintf(assembly, "and   %s,   %s,   %s", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), REG_NAME(op_src2->reg));
}

// 【新增】 Member B 任务: OR
make_helper(or) {
    decode_r_type(instr);
    reg_w(op_dest->reg) = (op_src1->val | op_src2->val);
    //trace
    log_golden_trace(cpu.pc,op_dest->reg,reg_w(op_dest->reg));
    sprintf(assembly, "or    %s,   %s,   %s", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), REG_NAME(op_src2->reg));
}

// 【新增】 Member B 任务: XOR
make_helper(xor) {
    decode_r_type(instr);
    reg_w(op_dest->reg) = (op_src1->val ^ op_src2->val);
    //trace
    log_golden_trace(cpu.pc, op_dest->reg, reg_w(op_dest->reg));
    sprintf(assembly, "xor   %s,   %s,   %s", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), REG_NAME(op_src2->reg));
}

make_helper(nor) {
    decode_r_type(instr);
    reg_w(op_dest->reg) = ~(op_src1->val | op_src2->val);
    //trace
    log_golden_trace(cpu.pc, op_dest->reg, reg_w(op_dest->reg));
    sprintf(assembly, "nor   %s,   %s,   %s", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), REG_NAME(op_src2->reg));
}

/* add: 有符号加法，需要溢出检测 */
/* 根据MIPS规范3.3.1: ADD rd, rs, rt
 * 操作：tmp ← (GPR[rs]31||GPR[rs]31..0) + (GPR[rt]31||GPR[rt]31..0)
 *       if tmp32≠tmp31 then SignalException(IntegerOverflow)
 *       else GPR[rd]←tmp31..0
 * 例外：如果有溢出，则触发整型溢出例外（Ov, ExcCode=0x0c）
 */
make_helper(add) {
    // decode_r_type已经提取了rs、rt、rd：
    // op_src1->reg = rs (在25-21位)
    // op_src2->reg = rt (在20-16位)
    // op_dest->reg = rd (在15-11位)
    decode_r_type(instr);
    
    // 将操作数转换为有符号整数（符号扩展）
    // op_src1->val 是 GPR[rs] 的值
    // op_src2->val 是 GPR[rt] 的值
    int32_t src1_signed = (int32_t)op_src1->val;
    int32_t src2_signed = (int32_t)op_src2->val;
    
    // 检测溢出：根据规范，tmp32≠tmp31表示溢出
    // 这等价于：两个正数相加得到负数或零，或两个负数相加得到正数或零
    if (check_overflow_add(src1_signed, src2_signed)) {
        // 触发整型溢出例外（Ov, ExcCode=0x0c）
        // 根据MIPS规范5.1.6，应该设置Cause.ExcCode=0x0c
        // 在TEMU中，我们使用panic来报告溢出错误
        panic("Integer overflow exception (Ov) at pc = 0x%08x: add %s(0x%08x), %s(0x%08x)\n"
              "The result would be 0x%08x, which causes overflow.",
              cpu.pc, REG_NAME(op_src1->reg), op_src1->val, 
              REG_NAME(op_src2->reg), op_src2->val, 
              (uint32_t)(src1_signed + src2_signed));
    }
    
    // 执行加法（无溢出）
    reg_w(op_dest->reg) = (uint32_t)(src1_signed + src2_signed);
    //trace
    log_golden_trace(cpu.pc, op_dest->reg, reg_w(op_dest->reg));
    sprintf(assembly, "add   %s,   %s,   %s", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), REG_NAME(op_src2->reg));
}

/* addu: 无符号加法，不检测溢出 */
/* 根据MIPS规范3.3.3: ADDU rd, rs, rt
 * 操作：GPR[rd] ← GPR[rs] + GPR[rt]
 * 例外：无
 */
make_helper(addu) {
    // decode_r_type已经提取了rs、rt、rd：
    // op_src1->reg = rs (在25-21位)
    // op_src2->reg = rt (在20-16位)
    // op_dest->reg = rd (在15-11位)
    decode_r_type(instr);
    
    // 无符号加法，直接相加，不检测溢出
    // GPR[rd] = GPR[rs] + GPR[rt]
    reg_w(op_dest->reg) = op_src1->val + op_src2->val;
    //trace
    log_golden_trace(cpu.pc, op_dest->reg, reg_w(op_dest->reg));
    sprintf(assembly, "addu  %s,   %s,   %s", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), REG_NAME(op_src2->reg));
}

/* sll: 逻辑左移，使用立即数sa作为移位量 */
/* 根据MIPS规范3.5.2: SLL rd, rt, sa
 * 操作：s ← sa; GPR[rd] ← GPR[rt](31-s)..0||0s
 * 注意：rs字段应该为00000（规范中显示）
 * 例外：无
 */
make_helper(sll) {
    // SLL格式: SLL rd, rt, sa
    // rs字段(25-21位)应该为00000，但这里不强制检查
    int rt = (instr & RT_MASK) >> (RD_SIZE + SHAMT_SIZE + FUNC_SIZE);  // rt在20-16位
    int rd = (instr & RD_MASK) >> (SHAMT_SIZE + FUNC_SIZE);              // rd在15-11位
    uint32_t sa = (instr & SHAMT_MASK) >> FUNC_SIZE;                    // sa在10-6位
    
    // 逻辑左移：GPR[rd] = GPR[rt] << sa
    reg_w(rd) = reg_w(rt) << sa;
    //trace
    log_golden_trace(cpu.pc, rd, reg_w(rd));
    sprintf(assembly, "sll   %s,   %s,   %d", REG_NAME(rd), REG_NAME(rt), sa);
}
//sllv 逻辑左移，使用rs寄存器的值作为移位量 SLLV rd, rt, rs
make_helper(sllv){
    int rs = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);  // rs在25-21位，作为移位量
    int rt = (instr & RT_MASK) >> (IMM_SIZE);            // rt在20-16位
    int rd = (instr & RD_MASK) >> (SHAMT_SIZE + FUNC_SIZE); // rd在15-11位
    //
    uint32_t s = reg_w(rs) & 0x1f;
    reg_w(rd) = reg_w(rt) << s;
    // trace
    log_golden_trace(cpu.pc, rd, reg_w(rd));
    sprintf(assembly, "sllv   %s,   %s,   %s", REG_NAME(rd), REG_NAME(rt), REG_NAME(rs));
}
/* srav: 算术右移，使用rs寄存器的值作为移位量 */
/* 根据MIPS规范3.5.3: SRAV rd, rt, rs
 * 操作：s ← GPR[rs]4..0; GPR[rd] ← (GPR[rt]31)^s || GPR[rt]31..s
 * 例外：无
 */
make_helper(srav) {
    // SRAV格式: SRAV rd, rt, rs
    int rs = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);  // rs在25-21位，作为移位量
    int rt = (instr & RT_MASK) >> (RD_SIZE + SHAMT_SIZE + FUNC_SIZE);  // rt在20-16位
    int rd = (instr & RD_MASK) >> (SHAMT_SIZE + FUNC_SIZE);            // rd在15-11位
    
    // 移位量s = GPR[rs]的低5位（4..0）
    uint32_t s = reg_w(rs) & 0x1f;
    
    // 算术右移：保持符号位，GPR[rd] = GPR[rt] >> s (算术右移)
    reg_w(rd) = (uint32_t)((int32_t)reg_w(rt) >> s);
    //trace
    log_golden_trace(cpu.pc, rd, reg_w(rd));
    sprintf(assembly, "srav  %s,   %s,   %s", REG_NAME(rd), REG_NAME(rt), REG_NAME(rs));
}

/* 1. 算术右移 sra */
make_helper(sra) {
    int rt = (instr & RT_MASK) >> (RD_SIZE + SHAMT_SIZE + FUNC_SIZE);
    int rd = (instr & RD_MASK) >> (SHAMT_SIZE + FUNC_SIZE);
    int sa = (instr & SHAMT_MASK) >> FUNC_SIZE;

    // 强转 int32_t 进行算术右移(补符号位)
    reg_w(rd) = (int32_t)reg_w(rt) >> sa;
    
    sprintf(assembly, "sra   %s, %s, %d", REG_NAME(rd), REG_NAME(rt), sa);
}

/* 2. 寄存器跳转链接 jalr */
make_helper(jalr) {
    int rs = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);
    int rd = (instr & RD_MASK) >> (SHAMT_SIZE + FUNC_SIZE);
    uint32_t target = reg_w(rs);

    // 保存返回地址 PC+8
    reg_w(rd) = cpu.pc + 8;
    
    // 跳转 (减4是为了抵消主循环的自动+4)
    cpu.pc = target - 4;

    sprintf(assembly, "jalr  %s, %s", REG_NAME(rd), REG_NAME(rs));
}

/* 3. 逻辑右移 srl */
make_helper(srl) {
    int rt = (instr & RT_MASK) >> (RD_SIZE + SHAMT_SIZE + FUNC_SIZE);
    int rd = (instr & RD_MASK) >> (SHAMT_SIZE + FUNC_SIZE);
    int sa = (instr & SHAMT_MASK) >> FUNC_SIZE;

    // 无符号右移(补0)
    reg_w(rd) = reg_w(rt) >> sa;

    sprintf(assembly, "srl   %s, %s, %d", REG_NAME(rd), REG_NAME(rt), sa);
}

/* 4. 变量逻辑右移 srlv */
make_helper(srlv) {
    int rs = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);
    int rt = (instr & RT_MASK) >> IMM_SIZE;
    int rd = (instr & RD_MASK) >> (SHAMT_SIZE + FUNC_SIZE);

    int sa = reg_w(rs) & 0x1F;
    reg_w(rd) = reg_w(rt) >> sa;

    sprintf(assembly, "srlv  %s, %s, %s", REG_NAME(rd), REG_NAME(rt), REG_NAME(rs));
}

/* 5. 寄存器跳转 jr */
make_helper(jr) {
    int rs = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);
    
    // 跳转 (减4是为了抵消主循环的PC+4)
    cpu.pc = reg_w(rs) - 4;

    sprintf(assembly, "jr    %s", REG_NAME(rs));
}
