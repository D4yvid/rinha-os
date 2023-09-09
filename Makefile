include ./config.mak

all: boot kernel image

boot:
	$(MAKE) -C boot

kernel:
	$(MAKE) -C kernel

image: boot kernel
	@ 

run:
	@

.PHONY: boot kernel image run all
