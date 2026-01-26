#include "monitor/gui.h"
#include "temu.h"
#include "cpu/reg.h"
#include "memory/memory.h"

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#ifdef USE_SDL2
#include <SDL2/SDL.h>
#include <SDL2/SDL_ttf.h>

/* GUI 窗口和渲染器 */
static SDL_Window *window = NULL;
static SDL_Renderer *renderer = NULL;
static TTF_Font *font = NULL;
static bool gui_initialized = false;

/* 命令回调函数指针 */
static gui_command_callback_t command_callback = NULL;

/* 窗口尺寸 */
#define WINDOW_WIDTH 1000
#define WINDOW_HEIGHT 700
#define FONT_SIZE 14
#define LINE_HEIGHT 18
#define REG_COL_WIDTH 200
#define MEM_COL_WIDTH 120

/* 按钮定义 */
#define BUTTON_HEIGHT 35
#define BUTTON_WIDTH 120
#define BUTTON_SPACING 10
#define BUTTON_START_Y 10

/* 按钮结构 */
typedef struct {
	int x, y, w, h;
	const char *label;
	const char *command;
} Button;

/* 按钮列表 */
static Button buttons[] = {
	{0, BUTTON_START_Y, BUTTON_WIDTH, BUTTON_HEIGHT, "Continue (c)", "c"},
	{0, BUTTON_START_Y, BUTTON_WIDTH, BUTTON_HEIGHT, "Step (si 1)", "si 1"},
	{0, BUTTON_START_Y, BUTTON_WIDTH, BUTTON_HEIGHT, "Step 10", "si 10"},
	{0, BUTTON_START_Y, BUTTON_WIDTH, BUTTON_HEIGHT, "Info Reg", "info r"},
	{0, BUTTON_START_Y, BUTTON_WIDTH, BUTTON_HEIGHT, "Memory", "x 10 0x80000000"},
	{0, BUTTON_START_Y, BUTTON_WIDTH, BUTTON_HEIGHT, "Quit (q)", "q"},
};

#define NUM_BUTTONS (sizeof(buttons) / sizeof(buttons[0]))

/* 初始化 SDL 和创建窗口 */
void gui_init(void) {
#ifdef USE_SDL2
	if (gui_initialized) {
		return;
	}

	printf("Initializing GUI (SDL2)...\n");

	/* 初始化 SDL */
	if (SDL_Init(SDL_INIT_VIDEO) < 0) {
		fprintf(stderr, "ERROR: SDL initialization failed: %s\n", SDL_GetError());
		fprintf(stderr, "Hint: In WSL2, you may need to install and run an X11 server (e.g., VcXsrv)\n");
		return;
	}
	printf("SDL initialized successfully.\n");

	/* 初始化 SDL_ttf */
	if (TTF_Init() < 0) {
		fprintf(stderr, "ERROR: TTF initialization failed: %s\n", TTF_GetError());
		SDL_Quit();
		return;
	}
	printf("SDL_ttf initialized successfully.\n");

	/* 创建窗口（支持调整大小和最大化） */
	window = SDL_CreateWindow(
		"TEMU - MIPS Emulator",
		SDL_WINDOWPOS_UNDEFINED,
		SDL_WINDOWPOS_UNDEFINED,
		WINDOW_WIDTH,
		WINDOW_HEIGHT,
		SDL_WINDOW_SHOWN | SDL_WINDOW_RESIZABLE
	);

	if (window == NULL) {
		fprintf(stderr, "ERROR: Window creation failed: %s\n", SDL_GetError());
		fprintf(stderr, "Hint: Check DISPLAY environment variable (current: %s)\n", getenv("DISPLAY") ? getenv("DISPLAY") : "not set");
		fprintf(stderr, "Hint: In WSL2, make sure X11 server is running (e.g., VcXsrv, X410)\n");
		TTF_Quit();
		SDL_Quit();
		return;
	}
	printf("SDL window created successfully.\n");

	/* 创建渲染器（支持窗口大小调整） */
	renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
	if (renderer == NULL) {
		fprintf(stderr, "ERROR: Renderer creation failed: %s\n", SDL_GetError());
		SDL_DestroyWindow(window);
		TTF_Quit();
		SDL_Quit();
		return;
	}
	
	/* 确保视口匹配窗口大小（NULL表示整个窗口） */
	SDL_RenderSetViewport(renderer, NULL);
	
	/* 确保缩放为1.0 */
	SDL_RenderSetScale(renderer, 1.0f, 1.0f);
	
	printf("SDL renderer created successfully.\n");

	/* 尝试加载字体（如果系统有的话） */
	font = TTF_OpenFont("/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf", FONT_SIZE);
	if (font == NULL) {
		/* 尝试其他常见字体路径 */
		font = TTF_OpenFont("/usr/share/fonts/truetype/liberation/LiberationMono-Regular.ttf", FONT_SIZE);
	}
	if (font == NULL) {
		font = TTF_OpenFont("/System/Library/Fonts/Menlo.ttc", FONT_SIZE);
	}
	if (font == NULL) {
		/* 如果找不到字体，使用默认字体 */
		fprintf(stderr, "Warning: Could not load font, using default. Some text may not display correctly.\n");
	}

	gui_initialized = true;
	gui_update();  /* 初始绘制 */
	printf("GUI initialized successfully! Window should be visible now.\n");
#else
	printf("GUI support not compiled in (SDL2 not available during compilation).\n");
#endif
}

/* 清理资源 */
void gui_cleanup(void) {
	if (!gui_initialized) {
		return;
	}

	if (font) {
		TTF_CloseFont(font);
		font = NULL;
	}

	if (renderer) {
		SDL_DestroyRenderer(renderer);
		renderer = NULL;
	}

	if (window) {
		SDL_DestroyWindow(window);
		window = NULL;
	}

	TTF_Quit();
	SDL_Quit();
	gui_initialized = false;
}

/* 渲染文本（使用简单方法，不依赖字体） */
static void render_text_simple(int x, int y, const char *text, SDL_Color color) {
	/* 如果没有字体，使用简单的像素绘制 */
	if (font == NULL) {
		/* 简单实现：在控制台输出位置信息 */
		/* 实际项目中可以使用 SDL 的像素操作或位图字体 */
		return;
	}

	SDL_Surface *text_surface = TTF_RenderText_Solid(font, text, color);
	if (text_surface == NULL) {
		return;
	}

	SDL_Texture *text_texture = SDL_CreateTextureFromSurface(renderer, text_surface);
	if (text_texture == NULL) {
		SDL_FreeSurface(text_surface);
		return;
	}

	SDL_Rect dest_rect = {x, y, text_surface->w, text_surface->h};
	SDL_RenderCopy(renderer, text_texture, NULL, &dest_rect);

	SDL_DestroyTexture(text_texture);
	SDL_FreeSurface(text_surface);
}

/* 使用 SDL 绘制简单文本（使用内置渲染） */
static void draw_text(int x, int y, const char *text) {
	SDL_Color color = {255, 255, 255, 255};  /* 白色 */
	
	if (font != NULL) {
		render_text_simple(x, y, text, color);
	} else {
		/* 如果没有字体，使用简单的矩形表示文本位置 */
		/* 这是一个简化实现，实际应该使用位图字体 */
		SDL_Rect rect = {x, y, strlen(text) * 8, FONT_SIZE};
		SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);
		SDL_RenderFillRect(renderer, &rect);
	}
}

/* 绘制按钮 */
static void draw_button(Button *btn, bool hover) {
	/* 按钮背景颜色 */
	SDL_Color bg_color = hover ? (SDL_Color){60, 100, 150, 255} : (SDL_Color){50, 50, 50, 255};
	SDL_Color border_color = {100, 100, 100, 255};
	SDL_Color text_color = {255, 255, 255, 255};
	
	/* 绘制按钮背景 */
	SDL_Rect rect = {btn->x, btn->y, btn->w, btn->h};
	SDL_SetRenderDrawColor(renderer, bg_color.r, bg_color.g, bg_color.b, bg_color.a);
	SDL_RenderFillRect(renderer, &rect);
	
	/* 绘制按钮边框 */
	SDL_SetRenderDrawColor(renderer, border_color.r, border_color.g, border_color.b, border_color.a);
	SDL_RenderDrawRect(renderer, &rect);
	
	/* 绘制按钮文字（居中） */
	if (font != NULL) {
		/* 计算文字位置（居中） */
		int text_x = btn->x + (btn->w / 2);
		int text_y = btn->y + (btn->h / 2);
		
		/* 获取文字尺寸 */
		int text_w, text_h;
		TTF_SizeText(font, btn->label, &text_w, &text_h);
		
		/* 调整位置使文字居中 */
		text_x -= text_w / 2;
		text_y -= text_h / 2;
		
		render_text_simple(text_x, text_y, btn->label, text_color);
	}
}

/* 检查点是否在按钮内 */
static bool point_in_button(int x, int y, Button *btn) {
	return (x >= btn->x && x < btn->x + btn->w &&
	        y >= btn->y && y < btn->y + btn->h);
}

/* 处理按钮点击 */
static void handle_button_click(int x, int y) {
	for (int i = 0; i < NUM_BUTTONS; i++) {
		if (point_in_button(x, y, &buttons[i])) {
			/* 执行按钮对应的命令 */
			if (command_callback != NULL) {
				command_callback(buttons[i].command);
			}
			break;
		}
	}
}

/* 更新图形界面显示 */
void gui_update(void) {
	if (!gui_initialized || renderer == NULL) {
		return;
	}

	/* 获取实际窗口大小（支持窗口最大化） */
	int window_width, window_height;
	SDL_GetWindowSize(window, &window_width, &window_height);
	
	/* 更新渲染器视口以匹配窗口大小（使用NULL表示整个窗口） */
	SDL_RenderSetViewport(renderer, NULL);
	
	/* 确保缩放为1.0 */
	SDL_RenderSetScale(renderer, 1.0f, 1.0f);

	/* 清空屏幕（黑色背景） */
	SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);
	SDL_RenderClear(renderer);

	/* 计算按钮区域的总宽度和起始位置（居中） */
	int buttons_total_width = NUM_BUTTONS * BUTTON_WIDTH + (NUM_BUTTONS - 1) * BUTTON_SPACING;
	int buttons_start_x = (window_width - buttons_total_width) / 2;
	if (buttons_start_x < 10) buttons_start_x = 10;
	
	/* 更新按钮位置并绘制按钮 */
	for (int i = 0; i < NUM_BUTTONS; i++) {
		buttons[i].x = buttons_start_x + i * (BUTTON_WIDTH + BUTTON_SPACING);
		buttons[i].y = BUTTON_START_Y;
		draw_button(&buttons[i], false);
	}

	int y_pos = BUTTON_START_Y + BUTTON_HEIGHT + 20;
	char buffer[256];

	/* 绘制标题（居中显示） */
	SDL_Color title_color = {0, 255, 0, 255};
	if (font != NULL) {
		/* 估算标题宽度并居中 */
		int title_x = (window_width - 20 * 8) / 2;  /* 粗略估算，20个字符 * 8像素 */
		if (title_x < 10) title_x = 10;
		render_text_simple(title_x, y_pos, "TEMU - MIPS Emulator", title_color);
	}
	y_pos += LINE_HEIGHT * 2;

	/* 绘制分隔线（使用实际窗口宽度） */
	SDL_SetRenderDrawColor(renderer, 100, 100, 100, 255);
	SDL_RenderDrawLine(renderer, 10, y_pos, window_width - 10, y_pos);
	y_pos += LINE_HEIGHT;

	/* 绘制寄存器部分标题（居中显示） */
	if (font != NULL) {
		SDL_Color header_color = {255, 255, 0, 255};
		int reg_total_width = 4 * REG_COL_WIDTH;
		int reg_left_margin = (window_width - reg_total_width) / 2;
		if (reg_left_margin < 10) reg_left_margin = 10;
		render_text_simple(reg_left_margin, y_pos, "Registers (32 GPRs + PC):", header_color);
	}
	y_pos += LINE_HEIGHT * 2;

	/* 绘制32个通用寄存器（居中显示） */
	extern const char *regfile[];
	/* 计算寄存器区域的总宽度（4列） */
	int reg_total_width = 4 * REG_COL_WIDTH;
	/* 计算左边界，使内容居中 */
	int reg_left_margin = (window_width - reg_total_width) / 2;
	if (reg_left_margin < 10) reg_left_margin = 10;  /* 最小边距 */
	
	int col = 0;
	for (int i = 0; i < 32; i++) {
		int x_pos = reg_left_margin + col * REG_COL_WIDTH;
		
		snprintf(buffer, sizeof(buffer), "%-5s: 0x%08x", 
			regfile[i], cpu.gpr[i]._32);
		
		if (font != NULL) {
			SDL_Color reg_color = {200, 200, 255, 255};
			render_text_simple(x_pos, y_pos, buffer, reg_color);
		}

		col++;
		if (col >= 4) {
			col = 0;
			y_pos += LINE_HEIGHT;
		}
	}

	/* 绘制 PC 寄存器（居中显示） */
	y_pos += LINE_HEIGHT;
	snprintf(buffer, sizeof(buffer), "PC   : 0x%08x", cpu.pc);
	if (font != NULL) {
		SDL_Color pc_color = {255, 200, 200, 255};
		/* PC 寄存器也居中显示 */
		render_text_simple(reg_left_margin, y_pos, buffer, pc_color);
	}
	y_pos += LINE_HEIGHT * 2;

	/* 绘制分隔线（使用实际窗口宽度） */
	SDL_SetRenderDrawColor(renderer, 100, 100, 100, 255);
	SDL_RenderDrawLine(renderer, 10, y_pos, window_width - 10, y_pos);
	y_pos += LINE_HEIGHT;

	/* 绘制内存段部分标题（居中显示） */
	if (font != NULL) {
		SDL_Color header_color = {255, 255, 0, 255};
		int mem_line_width = 11 + 4 * 9;
		int mem_left_margin = (window_width - mem_line_width) / 2;
		if (mem_left_margin < 10) mem_left_margin = 10;
		render_text_simple(mem_left_margin, y_pos, "Memory Segment (0x80000000 - 0x80002000):", header_color);
	}
	y_pos += LINE_HEIGHT * 2;

	/* 绘制内存内容（显示从 0x80000000 开始的内存，居中显示） */
	uint32_t mem_start = 0x80000000;
	uint32_t mem_end = 0x80002000;
	int mem_lines = 0;
	int max_mem_lines = (window_height - y_pos - 20) / LINE_HEIGHT;

	/* 估算内存行的宽度（地址 + 4个字） */
	int mem_line_width = 11 + 4 * 9;  /* "0x80000000: " + 4 * "12345678 " */
	/* 计算内存内容的左边界，使内容居中 */
	int mem_left_margin = (window_width - mem_line_width) / 2;
	if (mem_left_margin < 10) mem_left_margin = 10;  /* 最小边距 */

	for (uint32_t addr = mem_start; addr < mem_end && mem_lines < max_mem_lines; addr += 16) {
		snprintf(buffer, sizeof(buffer), "0x%08x: ", addr);
		
		/* 读取16字节（4个字） */
		for (int i = 0; i < 4; i++) {
			uint32_t curr_addr = addr + i * 4;
			uint32_t paddr = curr_addr & 0x1fffffff;
			uint32_t data = mem_read(paddr, 4);
			
			char word_buf[16];
			snprintf(word_buf, sizeof(word_buf), "%08x ", data);
			strcat(buffer, word_buf);
		}

		if (font != NULL) {
			SDL_Color mem_color = {200, 255, 200, 255};
			render_text_simple(mem_left_margin, y_pos, buffer, mem_color);
		}

		y_pos += LINE_HEIGHT;
		mem_lines++;
	}

	/* 显示到屏幕 */
	SDL_RenderPresent(renderer);
}

/* 处理 SDL 事件（非阻塞） */
void gui_handle_events(void) {
	if (!gui_initialized) {
		return;
	}

	SDL_Event event;
	while (SDL_PollEvent(&event)) {
		switch (event.type) {
			case SDL_QUIT:
				/* 用户关闭窗口，但不退出程序（命令行仍可用） */
				/* 可以选择隐藏窗口或忽略 */
				break;
			case SDL_WINDOWEVENT:
				if (event.window.event == SDL_WINDOWEVENT_EXPOSED ||
				    event.window.event == SDL_WINDOWEVENT_RESIZED ||
				    event.window.event == SDL_WINDOWEVENT_SIZE_CHANGED) {
					/* 窗口被暴露、调整大小或大小改变，更新视口并重绘 */
					/* 更新视口（NULL表示整个窗口） */
					SDL_RenderSetViewport(renderer, NULL);
					/* 确保缩放为1.0 */
					SDL_RenderSetScale(renderer, 1.0f, 1.0f);
					/* 立即重绘 */
					gui_update();
				}
				break;
			case SDL_MOUSEBUTTONDOWN:
				if (event.button.button == SDL_BUTTON_LEFT) {
					/* 处理按钮点击 */
					handle_button_click(event.button.x, event.button.y);
					/* 点击后更新显示 */
					gui_update();
				}
				break;
			default:
				break;
		}
	}
}

/* 检查 GUI 是否已初始化 */
bool gui_is_initialized(void) {
	return gui_initialized;
}

/* 设置命令执行回调函数 */
void gui_set_command_callback(gui_command_callback_t callback) {
	command_callback = callback;
}

#else  /* USE_SDL2 not defined */

/* 没有 SDL2 时的空实现 */
static bool gui_initialized = false;

void gui_init(void) {
	/* GUI 不可用 */
	gui_initialized = false;
}

void gui_cleanup(void) {
	/* 无操作 */
}

void gui_update(void) {
	/* 无操作 */
}

void gui_handle_events(void) {
	/* 无操作 */
}

bool gui_is_initialized(void) {
	return false;
}

void gui_set_command_callback(gui_command_callback_t callback) {
	/* 无操作 */
}

#endif  /* USE_SDL2 */
