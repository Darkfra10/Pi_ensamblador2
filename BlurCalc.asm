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
    mov r9, 3 
    mul r9
    mul rcx ;; height
    mov rbx, rax 
    sub rbx, rsi 
    sub rbx, 2
    cmp rdx, rbx
    jg  Bottom

    mov rax, 0 
    mov rcx, rsi
    add rcx, 12 ;;;;; 3 *4

    ;;add rax, [rdi-rcx] ;;top left
    ;;add rax, [rdi-rsi] ;;top mid
    sub rcx, 24 ;;;;;; 6 *4
    ;;add rax, [rdi-rcx] ;;top right 


    mov rbx, rdx
    add rbx, 12
    ;;add eax, dword [rdi+rbx] ;;;;;; 3 *4 mid left
    sub rbx, 24
    add eax, dword [rdi+rdx*4] ;; mid mid
    ;;add eax, dword [rdi+rbx] ;;;;; 3 *4 mid right

    ;;add eax, dword [rdi+rcx] ;;bottom left
    ;add eax, dword [rdi+rsi] ;;bottom mid 
    add ecx, 24 ;;;;; 6 *4
    ;;add eax, dword [rdi+rcx] ;;bottom right

    mov r9, 9
    ;;div r9 ;;average per color

    ret

Top:
    mov rax, 1 ;;temporary
    ret
Bottom:
    mov rax, 0 ;;temporary
    ret