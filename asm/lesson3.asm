global _start

section .text
_start:
    mov rdi, 10
    add rdi, 5
    sub rdi, 2
    inc rdi

    mov rax, 60
    syscall
