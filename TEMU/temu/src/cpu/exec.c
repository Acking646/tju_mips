#include "helper.h"
#include "all-instr.h"

typedef void (*op_fun)(uint32_t);
static make_helper(_2byte_esc);

/* 声明 helper 函数 */
make_helper(ori);
make_helper(andi);
make_helper(lui);
make_helper(and);
make_helper(or);
make_helper(xor);
make_helper(nor);
make_helper(lw);
make_helper(sw);
make_helper(lb);
make_helper(sb);
make_helper(add);
make_helper(addu);
make_helper(addiu);
make_helper(sll);
make_helper(srav);

Operands ops_decoded;
uint32_t instr;

/* 主 Opcode 表 - 17条指令译码跳转表 */
op_fun opcode_table [64] = {
/* 0x00 */	_2byte_esc, bgez, inv, inv,
/* 0x04 */	beq, bne, blez, inv,     /* beq(0x04), bne(0x05), blez(0x06) */
/* 0x08 */	addi, addiu, inv, inv,    /* addiu(0x09) */
/* 0x0c */	andi, ori, inv, lui,     /* andi(0x0c), ori(0x0d); lui(0x0f) */
/* 0x10 */	inv, inv, temu_trap, inv,
/* 0x14 */	inv, inv, inv, inv,
/* 0x18 */	inv, inv, inv, inv,
/* 0x1c */	inv, inv, inv, inv,
/* 0x20 */	lb, inv, inv, lw,        /* lb(0x20), lw(0x23) */
/* 0x24 */	inv, inv, inv, inv,
/* 0x28 */	sb, inv, inv, sw,        /* sb(0x28), sw(0x2b) */
/* 0x2c */	inv, inv, inv, inv,
/* 0x30 */	inv, inv, inv, inv,
/* 0x34 */	inv, inv, inv, inv,
/* 0x38 */	inv, inv, inv, inv,
/* 0x3c */	inv, inv, inv, inv
};

/* 【关键修改】加上 static，确保只在这个文件内生效，防止跟 special.c 冲突 */
/* R-type 指令的 func 码跳转表 (opcode=0x00) - 17条指令译码跳转表 */
static op_fun _2byte_opcode_table [64] = {
/* 0x00 */	sll, inv, srl, sra,     /* sll(0x00) */
/* 0x04 */	sllv, inv, srlv, srav,    /* srav(0x07) */
/* 0x08 */      jr, jalr, inv, inv, 
/* 0x0c */	inv, inv, inv, inv, 
/* 0x10 */	inv, inv, inv, inv, 
/* 0x14 */	inv, inv, inv, inv, 
/* 0x18 */	inv, inv, inv, inv, 
/* 0x1c */	inv, inv, inv, inv, 
/* 0x20 */	add, addu, inv, inv,    /* add(0x20), addu(0x21) */
/* 0x24 */	and, or, xor, nor,      /* and(0x24), or(0x25), xor(0x26), nor(0x27) */
/* 0x28 */	inv, inv, inv, inv, 
/* 0x2c */	inv, inv, inv, inv, 
/* 0x30 */	inv, inv, inv, inv, 
/* 0x34 */	inv, inv, inv, inv,
/* 0x38 */	inv, inv, inv, inv, 
/* 0x3c */	inv, inv, inv, inv
};

make_helper(exec) {
	instr = instr_fetch(pc, 4);
	ops_decoded.opcode = instr >> 26;
	opcode_table[ ops_decoded.opcode ](pc);
}

static make_helper(_2byte_esc) {
	ops_decoded.func = instr & FUNC_MASK;
	_2byte_opcode_table[ops_decoded.func](pc); 
}
