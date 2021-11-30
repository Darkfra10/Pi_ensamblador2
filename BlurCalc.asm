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
    push rdx
    mul r9
    mul rcx ;; height
    mov rbx, rax 
    sub rbx, rsi 
    sub rbx, 2   
    pop rdx 
    cmp rdx, rbx    
    jg  Bottom

    mov r8, rcx


    mov rax, 0 
    
    push rax
    mov rax, rdx
    push rdx
    mov r9, 4
    mul r9
    mov rcx, rax
    pop rdx
    pop rax


    push rax
    mov rax, rsi
    push rdx
    mov r9, 3
    mul r9
    mov r9, 4
    mul r9
    mov rbx, rax
    pop rdx
    pop rax

    sub rcx, rbx

   
    add eax, dword [rdi+rcx] ;;top mid
    sub rcx, 12 ;;;;; 3 *4
    add eax, dword [rdi+rcx] ;;top left
    
    
    add rcx, 24 ;;;;;; 6 *4
    add eax, dword [rdi+rcx] ;;top right

    
    push rax
    mov rax, rdx
    push rdx
    mov r9, 4
    mul r9
    mov rbx, rax
    pop rdx
    pop rax


    add rbx, 12
    add eax, dword [rdi+rbx] ;;;;;; 3 *4 mid right
    sub rbx, 24
    add eax, dword [rdi+rdx*4] ;; mid mid
    add eax, dword [rdi+rbx] ;;;;; 3 *4 mid left
    

    push rax
    mov rax, rdx
    push rdx
    mov r9, 4
    mul r9
    
    mov rcx, rax
    mov rax, rsi
    mul r9
    mov r9, 3
    mul r9
    add rcx, rax
    pop rdx
    pop rax
    
    add eax, dword [rdi+rcx] ;;bottom mid
    sub ecx, 12 
    add eax, dword [rdi+rcx] ;;bottom left
    
    
    
    add ecx, 24 ;;;;; 6 *4
    add eax, dword [rdi+rcx] ;;bottom right
    mov r9, 9

    mov rdx, 0
    div r9 ;;average per color
    ret 

Top:
    mov rax, 1 ;;temporary
    ret
Bottom:
    mov rax, 7 ;;temporary
    ret