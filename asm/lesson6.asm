global _start

section .text
_start:
    mov rdi, 5          ; Put 5 in rdi

    call add_ten        ; Jump to our function (and save our place on the stack!)

    ; The CPU will return exactly to this line right here!
    mov rax, 60         ; sys_exit
    syscall             ; Exit. rdi is now 15!

; --- This is our function ---
add_ten:
    add rdi, 10         ; Add 10 to rdi
    ret                 ; Pop the return address off the stack and jump back
