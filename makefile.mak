#Gabriel Bermejo C01103
all: 
	g++ -c -o main.o main.cpp
	nasm -f elf64 -o assembly.o NegativeCalc.asm HeightCalc.asm WidthCalc.asm BlurCalc.asm
	#nasm -f elf64 -o assembly.o NegativeCalc.asm HeightCalc.asm WidthCalc.asm BlurCalc.asm
	#nasm -f elf64 -o assembly.o HeightCalc.asm
	#nasm -f elf64 -o assembly.o WidthCalc.asm
	#nasm -f elf64 -o assembly.o BlurCalc.asm
	g++ -no-pie -g -o exe main.o assembly.o
clean: 
	rm *.o exe

run:
	./exe