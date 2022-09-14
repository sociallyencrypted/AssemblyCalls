all: ass.o
	gcc ass.o -no-pie -o ass

ass.o: ass.asm
	yasm -f elf64 -o ass.o ass.asm
