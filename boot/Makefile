include ../config.mak

ASM_SRC = $(wildcard src/*.S)
C_SRC = $(wildcard src/*.c)

OBJ  = $(patsubst src/%.S, obj/%.So, $(ASM_SRC))
OBJ += $(patsubst src/%.c, obj/%.o, $(C_SRC))

CFLAGS = -Wall -Werror -Wextra -Wpedantic -nostdlib -fno-stack-protector -ffreestanding \
	 -march=i386
LDFLAGS = -Tscripts/linker.ld

BOOTCODE = boot.img

DIRS = obj

all: dirs $(OBJ)
	$(LD) -o $(BOOTCODE) $(OBJ) $(LDFLAGS)

dirs:
	mkdir -p $(DIRS)

obj/%.So: src/%.S
	$(AS) -o $@ $< $(ASFLAGS)

.PHONY: all dirs
