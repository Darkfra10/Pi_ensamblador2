;Gabriel Bermejo C01103
section .data 
    ;1st argument image info

section .text
    global HeightCalc
    
HeightCalc:
    mov rax, 0 
    mov bh, byte [rdi+22]
    mov bl, byte [rdi+23]
    mov ch, byte [rdi+24]
    mov cl, byte [rdi+25]
    mov byte[eax+3], bh
    mov byte[eax+2], bl
    mov byte[eax+1], ch
    mov byte[eax], cl
    ret