global _start

section .text
_start:
    mov rbx, 15
    cmp rbx, 20
    jl is_less

is_greater_or_equal:
    mov rdi, 0
    jmp end_program

is_less:
    mov rdi, 1

end_program:
    mov rax, 60
    syscall
