#Gabriel Bermejo C01103
all: 
	g++ -c -o main.o main.cpp
	nasm -f elf64 -o 1.o NegativeCalc.asm 
	nasm -f elf64 -o 2.o BlurCalc.asm
	g++ -no-pie -g -o exe main.o 1.o 2.o 
clean: 
	rm *.o exe

run:
	./exe