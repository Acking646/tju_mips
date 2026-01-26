#ifndef __MEMORY_H__
#define __MEMORY_H__

#include "common.h"

#define HW_MEM_SIZE (128 * 1024 * 1024)

extern uint8_t *hw_mem;

uint32_t mem_read(uint32_t, size_t);
void mem_write(uint32_t, size_t, uint32_t);

/* Virtual address access interfaces with sign extension */
uint32_t vaddr_read(uint32_t vaddr, size_t len);
void vaddr_write(uint32_t vaddr, size_t len, uint32_t data);

#endif
