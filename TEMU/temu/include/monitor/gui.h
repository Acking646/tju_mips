#ifndef __GUI_H__
#define __GUI_H__

#include "common.h"

/* 命令回调函数类型：执行命令字符串，返回是否成功 */
typedef int (*gui_command_callback_t)(const char *cmd);

/* 初始化图形界面 */
void gui_init(void);

/* 清理图形界面资源 */
void gui_cleanup(void);

/* 更新图形界面显示（刷新寄存器和内存） */
void gui_update(void);

/* 处理 SDL 事件（非阻塞） */
void gui_handle_events(void);

/* 检查 GUI 是否已初始化 */
bool gui_is_initialized(void);

/* 设置命令执行回调函数（由ui.c调用） */
void gui_set_command_callback(gui_command_callback_t callback);

#endif

