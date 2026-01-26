#ifndef __WATCHPOINT_H__
#define __WATCHPOINT_H__

#include "common.h"

typedef struct watchpoint {
	int NO;
	struct watchpoint *next;

	/* TODO: Add more members if necessary */
	char expr[128]; //监视的expr
	uint32_t old_val; //上一次计算的值

} WP;

WP* new_wp();
void free_wp(WP *wp);
void delete_wp(int num);
void info_wp();
bool check_wp();
#endif
