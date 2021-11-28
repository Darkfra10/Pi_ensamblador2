;Gabriel Bermejo C01103
section .data 
    ;1st argument image info

section .text
    global HeightCalc
    
WidthCalc:
    mov rax 
    mov byte [rdi+22], [rax+3]
    mov byte [rdi+23], [rax+2]
    mov byte [rdi+24], [rax+1]
    mov byte [rdi+25], [rax]
    ret