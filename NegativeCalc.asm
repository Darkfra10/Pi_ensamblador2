;Gabriel Bermejo C01103
section .data 
    ;1st argument rdi image info

section .text
    global NegativeCalc
    
NegativeCalc:
    mov rax, 255
    sub rax, rdi    
    ret