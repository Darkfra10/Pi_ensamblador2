#Gabriel Bermejo C01103
all: 
	g++ -c -o main.o main.cpp
	#nasm -f elf64 -o assembly.o NegativeCalc.asm HeightCalc.asm WidthCalc.asm BlurCalc.asm
	nasm -f elf64 -o 1.o NegativeCalc.asm 
	nasm -f elf64 -o 2.o HeightCalc.asm
	nasm -f elf64 -o 3.o WidthCalc.asm
	nasm -f elf64 -o 4.o BlurCalc.asm
	g++ -no-pie -g -o exe main.o 1.o 2.o 3.o 4.o
clean: 
	rm *.o exe

run:
	./exe