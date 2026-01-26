#include "common.h"

uint32_t dram_read(uint32_t, size_t);
void dram_write(uint32_t, size_t, uint32_t);

/* Memory accessing interfaces */

uint32_t mem_read(uint32_t addr, size_t len) {
#ifdef DEBUG
	assert(len == 1 || len == 2 || len == 4);
#endif
	return dram_read(addr, len) & (~0u >> ((4 - len) << 3));
}

void mem_write(uint32_t addr, size_t len, uint32_t data) {
#ifdef DEBUG
	assert(len == 1 || len == 2 || len == 4);
#endif
	dram_write(addr, len, data);
}

/* Virtual address read with sign extension */
uint32_t vaddr_read(uint32_t vaddr, size_t len) {
#ifdef DEBUG
	assert(len == 1 || len == 2 || len == 4);
#endif
	
	// 1. Virtual address to physical address conversion (clear high 3 bits)
	uint32_t paddr = vaddr & 0x1fffffff;
	
	// 2. Read from physical memory
	uint32_t data = mem_read(paddr, len);
	
	// 3. Sign extension based on length
	switch (len) {
		case 1:  // 8-bit: sign extend to 32-bit
			return (uint32_t)(int32_t)(int8_t)(data & 0xFF);
			
		case 2:  // 16-bit: sign extend to 32-bit
			return (uint32_t)(int32_t)(int16_t)(data & 0xFFFF);
			
		case 4:  // 32-bit: return as is
			return data;
			
		default:
			Assert(0, "Invalid length for vaddr_read: %zu", len);
			return 0;
	}
}

/* Virtual address write */
void vaddr_write(uint32_t vaddr, size_t len, uint32_t data) {
#ifdef DEBUG
	assert(len == 1 || len == 2 || len == 4);
#endif
	
	// 1. Virtual address to physical address conversion
	uint32_t paddr = vaddr & 0x1fffffff;
	
	// 2. Extract data based on length
	uint32_t write_data = data;
	
	switch (len) {
		case 1:  // Write only low 8 bits
			write_data = data & 0xFF;
			break;
			
		case 2:  // Write only low 16 bits
			write_data = data & 0xFFFF;
			break;
			
		case 4:  // Write all 32 bits
			write_data = data;
			break;
			
		default:
			Assert(0, "Invalid length for vaddr_write: %zu", len);
			return;
	}
	
	// 3. Write to physical memory
	mem_write(paddr, len, write_data);
}

