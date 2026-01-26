#ifndef __MONITOR_H__
#define __MONITOR_H__
#include <stdint.h>  
#include <stdio.h>   
enum { STOP, RUNNING, END };
extern int temu_state;
void log_golden_trace(uint32_t pc,int reg_no,uint32_t val);
#endif
