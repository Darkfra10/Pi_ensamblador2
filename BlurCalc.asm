;Gabriel Bermejo C01103
section .data 
    ;1st argument rdi ;;image info
    ;2nd argument rsi ;;width
    ;3rd argument rdx ;;byte to scan
    ;4th argument rcx ;;height

section .text
    global BlurCalc
    
BlurCalc:
    mov rbx, rsi
    add rbx, 2
    cmp rdx, rbx
    jl Top

    mov rbx, rsi
    mov rax, rbx
    mul 3
    mul rcx ;; height
    mov rbx, rax 
    sub rbx, rsi 
    sub rbx, 2
    jg  Bottom


    mov rax, 0 
    mov rcx, rsi
    add rcx, 3
    add rax, [rdi-rcx] ;;top left
    add rax, [rdi-rsi] ;;top mid
    sub rcx, 6
    add rax, [rdi-rcx] ;;top right 

    add rax, [rdi-1] ;; mid left
    add rax, [rdi] ;; mid mid
    add rax, [rdi+1] ;;mid right

    add rax, [rdi+rcx] ;;bottom left
    add rax, [rdi+rsi] ;;bottom mid 
    add rcx, 6
    add rax, [rdi+rcx] ;;bottom right


    div 9 ;;average per color

    ret

Top:
    mov rax, 0 ;;temporary
    ret
Bottom:
    mov rax, 0 ;;temporary
    ret