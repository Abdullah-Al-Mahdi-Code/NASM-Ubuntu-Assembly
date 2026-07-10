global _start

section .text
_start:
    ; Pretend Rust is calling: add_numbers(20, 7)

    mov rdi, 20          ; 1st argument goes in rdi
    mov rsi, 7           ; 2nd argument goes in rsi

    call add_numbers     ; Call the function

    ; When the function finishes, the answer will be in rax!
    ; Let's move the answer from rax to rdi so we can exit and see it.
    mov rdi, rax
    mov rax, 60          ; sys_exit
    syscall

; --- Our Function ---
add_numbers:
    mov rax, rdi         ; Copy the 1st argument (20) into rax
    add rax, rsi         ; Add the 2nd argument (7) to rax. Now rax is 27.
    ret                  ; Return to the caller!
