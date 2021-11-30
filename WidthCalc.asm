;Gabriel Bermejo C01103
section .data 
    ;1st argument image info

section .text
    global WidthCalc
    
WidthCalc:
    mov rax, 0  
    ;mov byte [rdi+18], [rax+3]
    ;mov byte [rdi+19], [rax+2]
    ;mov byte [rdi+20], [rax+1]
    ;mov byte [rdi+21], [rax]
    mov rax, 0 
    mov bh, byte [rdi+18]
    mov bl, byte [rdi+19]
    mov ch, byte [rdi+20]
    mov cl, byte [rdi+21]
    mov byte[eax+3], bh
    mov byte[eax+2], bl
    mov byte[eax+1], ch
    mov byte[eax], cl
    ret