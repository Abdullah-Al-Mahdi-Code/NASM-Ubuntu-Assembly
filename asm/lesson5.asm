global _start

section .text
_start:
    mov rbx, 5          ; Set our counter to 5

my_loop:
    dec rbx             ; Subtract 1 from rbx
    cmp rbx, 0          ; Compare rbx to 0
    jg my_loop          ; If rbx is Greater than 0, jump back up to 'my_loop'

    ; Once rbx hits 0, the 'jg' will NOT jump.
    ; The CPU will just fall down to the exit code.

    mov rdi, rbx        ; Copy rbx (which is now 0) into rdi for our exit code
    mov rax, 60         ; sys_exit
    syscall
