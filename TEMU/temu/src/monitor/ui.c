#include "monitor.h"
#include "monitor/gui.h"
#include "temu.h"
#include "watchpoint.h" //添加监视点头文件
#include "memory/memory.h"  // 用于 mem_read

#include <stdlib.h>
#include <string.h>  // 用于 strtok
#include <readline/readline.h>
#include <readline/history.h>

/* readline的全局变量，用于中断readline */
extern int rl_done;
#include <sys/select.h>
#include <sys/time.h>
#include <unistd.h>
#include <fcntl.h>

void cpu_exec(uint32_t);
void display_reg();

extern FILE *golden_trace_fp;

/* GUI命令执行退出标志 */
static bool gui_should_quit = false;
/* 1. 声明 expr 函数，否则下面调用会报错 */
uint32_t expr(char *e, bool *success);  // <--- 新增

/* GUI 事件处理函数（用于 readline hook） */
static int gui_event_hook(void) {
	/* 如果设置了退出标志，设置rl_done以中断readline */
	if (gui_should_quit) {
		rl_done = 1;
		return 0;
	}
	
	if (gui_is_initialized()) {
		gui_handle_events();
	}
	
	/* 再次检查退出标志（可能在gui_handle_events中设置） */
	if (gui_should_quit) {
		rl_done = 1;
		return 0;
	}
	
	return 0;  /* readline hook 需要返回 int */
}

/* We use the `readline' library to provide more flexibility to read from stdin. */
char* rl_gets() {
	static char *line_read = NULL;
	/* rl_event_hook 已经在 readline.h 中声明，直接使用 */

	if (line_read) {
		free(line_read);
		line_read = NULL;
	}

	/* 保存原来的 hook（如果有） */
	rl_hook_func_t *old_hook = rl_event_hook;
	
	/* 设置 readline hook，在等待输入时处理 GUI 事件 */
	rl_event_hook = gui_event_hook;
	
	/* 重置rl_done标志 */
	rl_done = 0;

	line_read = readline("(temu) ");

	/* 恢复原来的 hook */
	rl_event_hook = old_hook;

	if (line_read && *line_read) {
		add_history(line_read);
	}

	return line_read;
}

static int cmd_c(char *args) {
	cpu_exec(-1);
	return 0;
}

static int cmd_q(char *args) {
	//退出之前fclose golden_trace
	if(golden_trace_fp!=NULL){
		fflush(golden_trace_fp);
		fclose(golden_trace_fp);
		golden_trace_fp=NULL;
		//printf
	}
	return -1;
}

static int cmd_help(char *args);
static int cmd_info(char* args);
static int cmd_si(char *args);
static int cmd_w(char* args);
static int cmd_d(char* args);
static int cmd_x(char *args);

/* 2. 实现 p 命令的处理函数 */
static int cmd_p(char *args) {      // <--- 新增整个函数
	bool success;
	if (args == NULL) {
		printf("No expression given.\n");
		return 0;
	}

	// 调用你在 expr.c 里写的函数
	uint32_t val = expr(args, &success);

	if (success) {
		printf("Decimal: %d\n", val);
		printf("Hex:     0x%08x\n", val);
	} else {
		printf("Bad expression.\n");
	}
	return 0;
}

static struct {
	char *name;
	char *description;
	int (*handler) (char *);
} cmd_table [] = {
	{ "help", "Display informations about all supported commands", cmd_help },
	{ "c", "Continue the execution of the program", cmd_c },
	{ "q", "Exit TEMU", cmd_q },
	/* TODO: Add more commands */
	{ "info", "Display information about program status", cmd_info },
	{ "si", "Single step execution", cmd_si },
	
	/* 3. 【新增】在命令表中注册 p */
	{ "p", "Evaluate expression", cmd_p },  // <--- 新增这一行
	
	//添加w监视点 删除d监视点
	{ "w", "Add watchpoint", cmd_w },
	{ "d", "Delete watchpoint",cmd_d },
	{ "x", "Examine memory: x N EXPR", cmd_x },
	
};

#define NR_CMD (sizeof(cmd_table) / sizeof(cmd_table[0]))

/* GUI 命令执行函数（供GUI按钮调用） */
static int gui_execute_command(const char *cmd_str) {
	if (cmd_str == NULL || strlen(cmd_str) == 0) {
		return 0;
	}
	
	/* 在终端显示GUI执行的命令（格式： (temu) <command>） */
	/* 使用换行和回车来确保输出在readline提示符下方显示 */
	fprintf(stdout, "\n(temu) %s\n", cmd_str);
	fflush(stdout);  /* 确保立即输出 */
	
	/* 复制命令字符串（因为strtok会修改原字符串） */
	char *cmd_copy = strdup(cmd_str);
	if (cmd_copy == NULL) {
		return 0;
	}
	
	char *str_end = cmd_copy + strlen(cmd_copy);
	
	/* 提取命令 */
	char *cmd = strtok(cmd_copy, " ");
	if (cmd == NULL) {
		free(cmd_copy);
		return 0;
	}
	
	/* 提取参数 */
	char *args = cmd + strlen(cmd) + 1;
	if (args >= str_end) {
		args = NULL;
	}
	
	/* 执行命令 */
	int i;
	for (i = 0; i < NR_CMD; i++) {
		if (strcmp(cmd, cmd_table[i].name) == 0) {
			int result = cmd_table[i].handler(args);
			
			/* 如果命令返回-1（如q命令），设置退出标志 */
			if (result < 0) {
				gui_should_quit = true;
				free(cmd_copy);
				/* q命令不需要更新GUI，直接返回 */
				return result;
			}
			
			free(cmd_copy);
			
			/* 命令执行后更新GUI */
			if (gui_is_initialized()) {
				gui_handle_events();
				gui_update();
			}
			
			return result;
		}
	}
	
	free(cmd_copy);
	if (i == NR_CMD) {
		printf("Unknown command '%s'\n", cmd);
	}
	return 0;
}

static int cmd_help(char *args) {
	/* extract the first argument */
	char *arg = strtok(NULL, " ");
	int i;

	if(arg == NULL) {
		/* no argument given */
		for(i = 0; i < NR_CMD; i ++) {
			printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
		}
	}
	else {
		for(i = 0; i < NR_CMD; i ++) {
			if(strcmp(arg, cmd_table[i].name) == 0) {
				printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
				return 0;
			}
		}
		printf("Unknown command '%s'\n", arg);
	}
	return 0;
}

/* 注意：ui.c 默认可能看不到 regfile，如果编译报错，
   需要在文件开头加 extern const char *regfile[]; */
extern const char *regfile[]; // 防止 cmd_info 报错

static int cmd_info(char* args){
	if (args == NULL) {
		printf("Usage: info r (registers) or info w (watchpoints)\n");
		return 0;
	}
	//分为r与w
	if(args[0]=='r'){
		//打印所有寄存器的值
		int i;
		for(i=0;i<32;i++){
			// 这里假设 cpu 结构体是全局可见的
			printf("%-5s: 0x%08x  ", regfile[i], cpu.gpr[i]._32);
			if ((i + 1) % 4 == 0) {
                printf("\n");
            }
		}
		//打印当前PC指针
		printf("%-5s: 0x%08x\n", "pc", cpu.pc);
        printf("------------------\n");
	}
	else if(args[0]=='w'){
		//TODO:监视点
		info_wp();
	}
	return 0;
}
static int cmd_si(char* args){
	//char *aim;

	int step=1;
	if(args!=NULL){
		sscanf(args,"%d",&step);
	}
	cpu_exec(step); 
	return 0;
}
static int cmd_w(char* args){
	//添加监视点
	WP* point=NULL;
	bool success;
	point=new_wp();
	strncpy(point->expr,args, sizeof(point->expr)-1);
	point->old_val=expr(args,&success);
	if(!success){
		printf("Wrong args\n");
		return 0;
	}
	printf("watchpoint %d:expression is %s\n", point->NO, args);
	return 0;
}
static int cmd_d(char* args){
	if(args==NULL){
		printf("Wrong args\n");
		return 0;
	}else{
		delete_wp(atoi(args));
		return 0;
	}
}

/* x命令：查看内存内容
 * 格式: x N EXPR
 *   N: 显示的数量（4字节为单位）
 *   EXPR: 地址表达式
 * 示例:
 *   x 10 0x80000000
 *   x 10 $t0 + 4
 */
static int cmd_x(char *args) {
	if (args == NULL || strlen(args) == 0) {
		printf("Usage: x N EXPR\n");
		printf("  N      Number of 4-byte units to display\n");
		printf("  EXPR   Expression for the starting address\n");
		printf("Example: x 10 0x80000000\n");
		printf("         x 10 $t0 + 4\n");
		return 0;
	}
	
	// 解析参数 N
	char *n_str = strtok(args, " ");
	if (n_str == NULL) {
		printf("Missing N argument\n");
		return 0;
	}
	
	char *endptr;
	uint32_t n = strtoul(n_str, &endptr, 10);
	if (*endptr != '\0' || n == 0) {
		printf("Invalid N: %s (must be positive integer)\n", n_str);
		return 0;
	}
	
	// 解析表达式 EXPR
	char *expr_str = strtok(NULL, "");
	if (expr_str == NULL) {
		printf("Missing EXPR argument\n");
		return 0;
	}
	
	// 跳过 expr_str 开头的空格
	while (*expr_str == ' ') expr_str++;
	
	if (*expr_str == '\0') {
		printf("Missing EXPR argument\n");
		return 0;
	}
	
	// 求值得到起始地址
	bool success = true;
	uint32_t vaddr = expr(expr_str, &success);
	if (!success) {
		printf("Invalid expression: %s\n", expr_str);
		return 0;
	}
	
	// 虚拟地址转物理地址（清高三位）
	uint32_t paddr = vaddr & 0x1fffffff;
	
	printf("Memory from 0x%08x (phys: 0x%08x, N=%d):\n", vaddr, paddr, n);
	
	// 显示内存数据（每行显示4个字）
	for (uint32_t i = 0; i < n; i++) {
		if (i % 4 == 0) {
			printf("\n0x%08x: ", vaddr + i * 4);
		}
		
		uint32_t curr_addr = vaddr + i * 4;
		uint32_t curr_paddr = curr_addr & 0x1fffffff;
		uint32_t data = mem_read(curr_paddr, 4);  // 读取4字节
		
		printf("%08x ", data);
	}
	printf("\n");
	
	return 0;
}

void ui_mainloop() {
	/* 初始化图形界面 */
	gui_init();
	if (gui_is_initialized()) {
		printf("GUI initialized successfully.\n");
		/* 设置GUI命令回调函数 */
		gui_set_command_callback(gui_execute_command);
	} else {
		printf("GUI initialization failed or SDL2 not available.\n");
	}
	
	while(1) {
		/* 检查GUI退出标志 */
		if (gui_should_quit) {
			gui_cleanup();
			return;
		}
		
		/* 处理 GUI 事件（非阻塞） */
		if (gui_is_initialized()) {
			gui_handle_events();
		}
		
		/* 再次检查退出标志（可能在gui_handle_events中设置） */
		if (gui_should_quit) {
			gui_cleanup();
			return;
		}
		
		/* rl_gets() 内部会通过 hook 持续处理 GUI 事件 */
		char *str = rl_gets();
		
		/* 检查退出标志（可能在readline hook中设置） */
		if (gui_should_quit) {
			gui_cleanup();
			return;
		}
		
		/* 如果readline返回NULL（EOF或中断），也退出 */
		if (str == NULL) {
			gui_cleanup();
			return;
		}
		
		char *str_end = str + strlen(str);

		/* extract the first token as the command */
		char *cmd = strtok(str, " ");
		if(cmd == NULL) { continue; }

		/* treat the remaining string as the arguments,
		 * which may need further parsing
		 */
		char *args = cmd + strlen(cmd) + 1;
		if(args >= str_end) {
			args = NULL;
		}

		int i;
		for(i = 0; i < NR_CMD; i ++) {
			if(strcmp(cmd, cmd_table[i].name) == 0) {
				if(cmd_table[i].handler(args) < 0) { 
					/* 退出前清理 GUI */
					gui_cleanup();
					return; 
				}
				/* 命令执行后处理 GUI 事件并更新 */
				if (gui_is_initialized()) {
					gui_handle_events();  /* 先处理事件（包括窗口大小改变） */
					gui_update();
				}
				break;
			}
		}

		if(i == NR_CMD) { printf("Unknown command '%s'\n", cmd); }
	}
}