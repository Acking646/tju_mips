#include "helper.h"
#include "monitor.h"
#include "reg.h"
#include "memory/memory.h"

extern uint32_t instr;
extern char assembly[80];

/* decode I-type instrucion with unsigned immediate */
static void decode_imm_type(uint32_t instr) {

	op_src1->type = OP_TYPE_REG;
	op_src1->reg = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);
	op_src1->val = reg_w(op_src1->reg);
	
	op_src2->type = OP_TYPE_IMM;
	op_src2->imm = instr & IMM_MASK;
	op_src2->val = op_src2->imm;

	op_dest->type = OP_TYPE_REG;
	op_dest->reg = (instr & RT_MASK) >> (IMM_SIZE);
}

/* lui: 将16位立即数写入寄存器高16位，低16位置0 */
/* 根据MIPS规范3.4.3: LUI rt, imm
 * 操作：GPR[rt] ← (imm || 0^16)
 * 注意：rs字段应该为00000（规范中显示）
 * 例外：无
 */
make_helper(lui) {
    // LUI格式: LUI rt, imm
    int rt = (instr & RT_MASK) >> (IMM_SIZE);  // rt在20-16位
    uint16_t imm = (uint16_t)(instr & IMM_MASK);  // imm在15-0位
    
    // GPR[rt] = (imm << 16) | 0，即高16位为imm，低16位为0
    reg_w(rt) = (uint32_t)imm << 16;
	//trace
	log_golden_trace(cpu.pc,rt,reg_w(rt));
    sprintf(assembly, "lui   %s,   0x%04x", REG_NAME(rt), imm);
}

make_helper(ori) {

	decode_imm_type(instr);
	reg_w(op_dest->reg) = op_src1->val | op_src2->val;
	//trace
	log_golden_trace(cpu.pc,op_dest->reg,reg_w(op_dest->reg));
	sprintf(assembly, "ori   %s,   %s,   0x%04x", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), op_src2->imm);
}

// andi：
make_helper(andi) {
    decode_imm_type(instr);
    reg_w(op_dest->reg) = op_src1->val & op_src2->val;
	//trace
	log_golden_trace(cpu.pc,op_dest->reg,reg_w(op_dest->reg));
    sprintf(assembly, "andi  %s,   %s,   0x%04x", REG_NAME(op_dest->reg), REG_NAME(op_src1->reg), op_src2->imm);
}

//beq：相等则跳转 BEQ rs, rt, offset
make_helper(beq){
	//提取对应位上rs与rt
	int rs=(instr&RS_MASK) >>(RT_SIZE+IMM_SIZE);
	int rt = (instr & RT_MASK) >> (IMM_SIZE);
	//转移目标
	int16_t offset=(int16_t)(instr&IMM_MASK);
	//左移2位
	uint32_t extended_offset=(int32_t)offset<<2;
	//加上pc
	uint32_t target=(cpu.pc+4)+extended_offset;
	//比较与跳转
	if(reg_w(rs)==reg_w(rt)){
		//跳转 主循环会直接+4 故这里-4
		cpu.pc=target-4;
	}
	sprintf(assembly,"beq   %s,   %s,   0x%08x", REG_NAME(rs),REG_NAME(rt),target);
}
//bne：不相等则跳转 BEQ rs, rt, offset
make_helper(bne){
	//提取对应位上rs与rt
	int rs=(instr&RS_MASK) >>(RT_SIZE+IMM_SIZE);
	int rt = (instr & RT_MASK) >> (IMM_SIZE);
	//转移目标
	int16_t offset=(int16_t)(instr&IMM_MASK);
	//左移2位
	uint32_t extended_offset=(int32_t)offset<<2;
	//加上pc
	uint32_t target=(cpu.pc+4)+extended_offset;
	//比较与跳转
	if(reg_w(rs)!=reg_w(rt)){
		//跳转 主循环会直接+4 故这里-4
		cpu.pc=target-4;
	}
	sprintf(assembly,"bne   %s,   %s,   0x%08x", REG_NAME(rs),REG_NAME(rt),target);
}
//bgez:rs 的值大于等于 0 则转移 BGEZ rs, offset
make_helper(bgez){
	int rs=(instr&RS_MASK) >>(RT_SIZE+IMM_SIZE);
	int16_t offset = (int16_t)(instr & IMM_MASK);
    uint32_t extended_offset = (int32_t)offset << 2;
    uint32_t target = (cpu.pc + 4) + extended_offset;
	if ((int32_t)reg_w(rs) >= 0) {
        cpu.pc = target - 4;
    }
	sprintf(assembly, "bgez   %s,   0x%08x", REG_NAME(rs), target);
}
//blez：rs的值小于等于0则跳转 BLEZ rs, offset
make_helper(blez){
	//提取rs
	int rs=(instr&RS_MASK) >>(RT_SIZE+IMM_SIZE);
	//target计算
	int16_t offset=(int16_t)(instr&IMM_MASK);
	//左移2位
	uint32_t extended_offset=(int32_t)offset<<2;
	//加上pc
	uint32_t target=(cpu.pc+4)+extended_offset;
	//比较和跳转
	if((int32_t)reg_w(rs)<=0){
		cpu.pc=target-4;
	}
	sprintf(assembly, "blez  %s,   0x%08x", REG_NAME(rs), target);
}


/* addiu: 立即数加法，立即数需要符号扩展 */
/* 根据MIPS规范3.3.4: ADDIU rt, rs, imm
 * 操作：GPR[rt] ← GPR[rs] + sign_extend(imm)
 * 注意：虽然名字是"unsigned"，但立即数需要符号扩展
 * 例外：无
 */
make_helper(addiu) {
    // ADDIU格式: ADDIU rt, rs, imm
    int rs = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);  // rs在25-21位
    int rt = (instr & RT_MASK) >> (IMM_SIZE);            // rt在20-16位
    int16_t imm = (int16_t)(instr & IMM_MASK);           // imm在15-0位，需要符号扩展
    // 立即数符号扩展后与rs相加
    reg_w(rt) = reg_w(rs) + (int32_t)imm;
	//trace
	log_golden_trace(cpu.pc,rt,reg_w(rt));
    sprintf(assembly, "addiu %s,   %s,   %d", REG_NAME(rt), REG_NAME(rs), imm);
}

// lw: Load Word - lw rt, offset(rs)
// I-type指令，opcode=0x23
// 从内存地址(rs + sign-extended offset)读取32位数据到寄存器rt
make_helper(lw) {
	int rs = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);
	int rt = (instr & RT_MASK) >> IMM_SIZE;
	int16_t offset = (int16_t)(instr & IMM_MASK);
	uint32_t vaddr = reg_w(rs) + offset;
	reg_w(rt) = vaddr_read(vaddr, 4);
	//trace
	log_golden_trace(cpu.pc,rt,reg_w(rt));
	sprintf(assembly, "lw    %s,   %d(%s)", REG_NAME(rt), offset, REG_NAME(rs));
}

// sw: Store Word - sw rt, offset(rs)
// I-type指令，opcode=0x2b
// 将寄存器rt的32位数据写入内存地址(rs + sign-extended offset)
make_helper(sw) {
	int rs = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);
	int rt = (instr & RT_MASK) >> IMM_SIZE;
	int16_t offset = (int16_t)(instr & IMM_MASK);
	uint32_t vaddr = reg_w(rs) + offset;
	vaddr_write(vaddr, 4, reg_w(rt));
	sprintf(assembly, "sw    %s,   %d(%s)", REG_NAME(rt), offset, REG_NAME(rs));
}

// lb: Load Byte - lb rt, offset(rs)
// I-type指令，opcode=0x20
// 从内存地址(rs + sign-extended offset)读取8位数据，符号扩展后写入寄存器rt
make_helper(lb) {
	int rs = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);
	int rt = (instr & RT_MASK) >> IMM_SIZE;
	int16_t offset = (int16_t)(instr & IMM_MASK);
	uint32_t vaddr = reg_w(rs) + offset;
	reg_w(rt) = vaddr_read(vaddr, 1);
	//trace
	log_golden_trace(cpu.pc,rt,reg_w(rt));
	sprintf(assembly, "lb    %s,   %d(%s)", REG_NAME(rt), offset, REG_NAME(rs));
}

// sb: Store Byte - sb rt, offset(rs)
// I-type指令，opcode=0x28
// 将寄存器rt的低8位数据写入内存地址(rs + sign-extended offset)
make_helper(sb) {
	int rs = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);
	int rt = (instr & RT_MASK) >> IMM_SIZE;
	int16_t offset = (int16_t)(instr & IMM_MASK);
	uint32_t vaddr = reg_w(rs) + offset;
	vaddr_write(vaddr, 1, reg_w(rt));
	sprintf(assembly, "sb    %s,   %d(%s)", REG_NAME(rt), offset, REG_NAME(rs));
}

// //andi：ANDI rt, rs, imm
// //寄存器 rs 中的值与 0 扩展至 32 位的立即数 imm 按位逻辑与，结果写入寄存器 rt 中
// make_helper(andi){
// 	int rs = (instr & RS_MASK) >> (RT_SIZE + IMM_SIZE);
//     int rt = (instr & RT_MASK) >> (IMM_SIZE);
// 	uint32_t imm = (instr & IMM_MASK);
// 	//按位与
// 	reg_w(rt) = reg_w(rs) & imm;
// 	//零拓展之后高16位都是0 所以只需要打印低16位
// 	sprintf(assembly, "andi  %s,  %s,  0x%04x", REG_NAME(rt), REG_NAME(rs), imm);
// }
// >>>>>>> 6c82a9b04be6dfd8b7b1803788b64ebeccb1f84a
