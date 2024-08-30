.globl _start
.section .data
msg:
    .ascii "Hello world\n"
    msglen = . - msg
.section .text
_start:
    # Write syscall
    movq $1, %rax
    movq $1, %rdi
    mov $msg, %rsi
    mov $msglen, %rdx
    syscall
    movq $60, %rax
    xor %rdi, %rdi
    syscall
