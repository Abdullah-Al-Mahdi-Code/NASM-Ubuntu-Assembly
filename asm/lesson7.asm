global _start

section .data
my_array dq 10, 20, 30, 40      ; 'dq' means 64-bit numbers (8 bytes each)

section .text
_start:
mov rbx, my_array               ; 1. Get the POINTER to the array

mov r8, [rbx]                   ; 2. DEREFERENCE: r8 is now 10 (1st element)
mov r9, [rbx + 8]               ; 3. ARITHMETIC: r9 is now 20 (2nd element, 8 bytes away)
mov r10, [rbx + 16]             ; 4. ARITHMETIC: r10 is now 30 (3rd element, 16 bytes away)

mov rdi, r10                    ; Put the 3rd element (30) into rdi for our exit code
mov rax, 60                     ; sys_exit
syscall                         ; Exit program
