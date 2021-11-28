;Gabriel Bermejo C01103
section .data 
    ;1st argument image info

section .text
    global WidthCalc
    
WidthCalc:
    mov rax 
    mov byte [rdi+18], [rax+3]
    mov byte [rdi+19], [rax+2]
    mov byte [rdi+20], [rax+1]
    mov byte [rdi+21], [rax]
    ret