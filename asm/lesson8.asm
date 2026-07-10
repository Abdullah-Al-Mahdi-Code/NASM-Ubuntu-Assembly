global _start

section .data
    source_val db 77             ; This is our secret number (77)
    dest_val   db 0              ; This is an empty spot in memory

section .text
_start:
    ; 1. Tell the CPU where the source is
    mov rsi, source_val

    ; 2. Tell the CPU where the destination is
    mov rdi, dest_val

    ; 3. The magic shortcut
    movsb                        ; This copies the byte from [rsi] to [rdi]

    ; --- To prove it worked, let's exit with the value of dest_val ---

    mov rbx, dest_val            ; Put the address of dest_val in rbx
    mov rdi, [rbx]               ; Put the VALUE (which should now be 77) into rdi

    mov rax, 60                  ; sys_exit
    syscall
