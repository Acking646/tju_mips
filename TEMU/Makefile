include mips_sc/src/Makefile.testcase

.PHONY: run clean

ifndef INCLUDE_DIR
INCLUDE_DIR := ./temu/include
endif
ifndef SRC_DIR
SRC_DIR := ./temu/src
endif
ifndef BUILD_DIR
BUILD_DIR := build/
endif
DEBUG := false

# Compilation flags
CC := gcc
# CFLAGS := -I$(INCLUDE_DIR) -I$(INCLUDE_DIR)/cpu -I$(INCLUDE_DIR)/memory -I$(INCLUDE_DIR)/monitor -Wall -Werror -std=c99
# LDFLAGS := -lreadline
CFLAGS := -I$(INCLUDE_DIR) -I$(INCLUDE_DIR)/cpu -I$(INCLUDE_DIR)/memory -I$(INCLUDE_DIR)/monitor -Wall -std=gnu99 -Wno-unused-variable -Wno-unused-function -fms-extensions

# 检查 SDL2 是否可用
SDL2_AVAILABLE := $(shell pkg-config --exists sdl2 2>/dev/null && echo "yes" || echo "no")
SDL2_TTF_AVAILABLE := $(shell pkg-config --exists SDL2_ttf 2>/dev/null && echo "yes" || echo "no")

ifeq ($(SDL2_AVAILABLE),yes)
  ifeq ($(SDL2_TTF_AVAILABLE),yes)
    CFLAGS += -DUSE_SDL2
    LDFLAGS := -lreadline $(shell pkg-config --libs sdl2 SDL2_ttf 2>/dev/null)
  else
    LDFLAGS := -lreadline
    $(warning SDL2_ttf not found, GUI will be disabled)
  endif
else
  LDFLAGS := -lreadline
  $(warning SDL2 not found, GUI will be disabled)
endif

# Files to be compiled
SRCS := $(wildcard $(SRC_DIR)/*.c) $(wildcard $(SRC_DIR)/memory/*.c) $(wildcard $(SRC_DIR)/cpu/*.c) $(wildcard $(SRC_DIR)/monitor/*.c)

TEMU_TARGET := temu

ifeq ($(DEBUG), true)
CFLAGS += -g
endif

export	INCLUDE_DIR
export	SRC_DIR
export	BUILD_DIR


# ********************
# Rules of Compilation
# ********************

$(BUILD_DIR)$(TEMU_TARGET): 
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -o $@ $(SRCS) $(LDFLAGS)

run: $(BUILD_DIR)$(TEMU_TARGET)
	@./$(BUILD_DIR)$(TEMU_TARGET) $(USER_PROGRAM)

clean-temu:
	rm -f -r $(BUILD_DIR)

clean:
	rm -f -r $(BUILD_DIR)
	rm -f -r ./mips_sc/build
	rm -f log.txt
	rm -f *.bin
