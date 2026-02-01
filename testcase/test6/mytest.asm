
build/mytest:     file format elf32-tradlittlemips
build/mytest


Disassembly of section .text:

80000000 <main>:
80000000:	2008ffff 	addi	t0,zero,-1
80000004:	21090001 	addi	t1,t0,1
80000008:	3c0a8000 	lui	t2,0x8000
8000000c:	000a5903 	sra	t3,t2,0x4
80000010:	3c0c8000 	lui	t4,0x8000
80000014:	258c0028 	addiu	t4,t4,40
80000018:	0180f809 	jalr	t4
8000001c:	00000000 	nop
80000020:	10000002 	b	8000002c <fail>
80000024:	00000000 	nop

80000028 <target_func>:
target_func():
80000028:	4a000000 	c2	0x0

8000002c <fail>:
fail():
8000002c:	1000ffff 	b	8000002c <fail>
80000030:	00000000 	nop

Disassembly of section .reginfo:

00000000 <.reginfo>:
   0:	90001f00 	lbu	zero,7936(zero)
	...
