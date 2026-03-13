.section .multiboot
.align 4
.long 0x1BADB002
.long 0x0
.long -(0x1BADB002 + 0x0)

.section .text
.global _start
.extern kernel_main

_start:
    call kernel_main
    cli
hang:
    hlt
    jmp hang
