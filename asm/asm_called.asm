bits 64

global calculate_sum

section .text

calculate_sum:
    ; C Calling Convention for x86_64 Linux:
    ; 1st argument (a) is in RDI
    ; 2nd argument (b) is in RSI

    mov rax, rdi    ; Move 'a' into RAX
    add rax, rsi    ; Add 'b' to RAX

    ; The result is now in RAX, which is where C expects the return value.
    ret
