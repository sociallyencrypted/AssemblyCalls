all: ass.o
	gcc ass.o -no-pie -o ass

ass.o: ass.asm
	nasm -f elf64 -o ass.o ass.asm
