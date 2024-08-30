global _start
section .data
message: db "Hello, world!", 10
section .text
_start:
    mov rax, 1 ; write syscall
    mov rdi, 1 ; output file descriptor
    mov rsi, message
    mov rdx, 14
    syscall
    mov rax, 60
    mov ebx, 0
    syscall
