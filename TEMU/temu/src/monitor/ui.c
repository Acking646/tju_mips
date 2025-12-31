#include "monitor.h"
#include "watchpoint.h"
#include "expr.h"
#include "temu.h"

#include <stdlib.h>
#include <readline/readline.h>
#include <readline/history.h>

void cpu_exec(uint32_t);

void display_reg();

/* We use the `readline' library to provide more flexibility to read from stdin. */
char *rl_gets()
{
	static char *line_read = NULL;

	if (line_read)
	{
		free(line_read);
		line_read = NULL;
	}

	line_read = readline("(temu) ");

	if (line_read && *line_read)
	{
		add_history(line_read);
	}

	return line_read;
}

static int cmd_c(char *args)
{
	cpu_exec(-1);
	return 0;
}

static int cmd_q(char *args)
{
	return -1;
}

static int cmd_help(char *args);

static int cmd_si(char *args)
{
	int steps = 1;
	if (args != NULL)
	{
		// 如果用户输入了步数，如 "si 10"，则读入 10
		sscanf(args, "%d", &steps);
	}
	// 调用 CPU 执行循环，执行指定步数
	cpu_exec(steps);
	return 0;
}

static int cmd_info(char *args)
{
	if (args == NULL)
	{
		printf("Usage: info r (registers) or info w (watchpoints)\n");
		return 0;
	}

	if (strcmp(args, "r") == 0)
	{
		// 打印寄存器 (Registers)
		// 遍历 32 个通用寄存器
		for (int i = 0; i < 32; i++)
		{
			// regsl 是寄存器名数组，cpu.gpr[i]._32 是寄存器值
			printf("$%s\t0x%08x\n", regsl[i], cpu.gpr[i]._32);
		}
		// 别忘了打印 PC 和 HI/LO 寄存器
		printf("$hi\t0x%08x\n", cpu.hi);
		printf("$lo\t0x%08x\n", cpu.lo);
		printf("$pc\t0x%08x\n", cpu.pc);
	}
	else if (strcmp(args, "w") == 0)
	{
		// 监视点功能 (Watchpoints) - 暂时留空，后面阶段再做
		// list_watchpoints();
		printf("Watchpoints feature not implemented yet.\n");
	}
	return 0;
}

static int cmd_x(char *args)
{
	if (args == NULL)
	{
		printf("Usage: x N ADDR (e.g., x 10 0x80000000)\n");
		return 0;
	}

	int n;
	vaddr_t addr;

	// 使用 sscanf 解析参数：N(数量) 和 ADDR(十六进制地址)
	// 比如输入 "x 10 0x1000"
	if (sscanf(args, "%d %x", &n, &addr) != 2)
	{
		printf("Invalid arguments. Usage: x N ADDR\n");
		return 0;
	}

	printf("Memory dump at 0x%08x:\n", addr);
	for (int i = 0; i < n; i++)
	{
		// swaddr_read 是读取内存的函数，一次读 4 字节
		uint32_t data = swaddr_read(addr + i * 4, 4);
		printf("0x%08x: 0x%08x\n", addr + i * 4, data);
	}
	return 0;
}

static struct
{
	char *name;
	char *description;
	int (*handler)(char *);
} cmd_table[] = {
	{"help", "Display informations about all supported commands", cmd_help},
	{"c", "Continue the execution of the program", cmd_c},
	{"q", "Exit TEMU", cmd_q},

	// --- 新增的命令 ---
	{"si", "Step one instruction exactly", cmd_si},
	{"info", "Generic program information", cmd_info},
	{"x", "Scan memory", cmd_x},
	// ----------------

	/* TODO: Add more commands */
};

#define NR_CMD (sizeof(cmd_table) / sizeof(cmd_table[0]))

static int cmd_help(char *args)
{
	/* extract the first argument */
	char *arg = strtok(NULL, " ");
	int i;

	if (arg == NULL)
	{
		/* no argument given */
		for (i = 0; i < NR_CMD; i++)
		{
			printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
		}
	}
	else
	{
		for (i = 0; i < NR_CMD; i++)
		{
			if (strcmp(arg, cmd_table[i].name) == 0)
			{
				printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
				return 0;
			}
		}
		printf("Unknown command '%s'\n", arg);
	}
	return 0;
}

void ui_mainloop()
{
	while (1)
	{
		char *str = rl_gets();
		char *str_end = str + strlen(str);

		/* extract the first token as the command */
		char *cmd = strtok(str, " ");
		if (cmd == NULL)
		{
			continue;
		}

		/* treat the remaining string as the arguments,
		 * which may need further parsing
		 */
		char *args = cmd + strlen(cmd) + 1;
		if (args >= str_end)
		{
			args = NULL;
		}

		int i;
		for (i = 0; i < NR_CMD; i++)
		{
			if (strcmp(cmd, cmd_table[i].name) == 0)
			{
				if (cmd_table[i].handler(args) < 0)
				{
					return;
				}
				break;
			}
		}

		if (i == NR_CMD)
		{
			printf("Unknown command '%s'\n", cmd);
		}
	}
}
