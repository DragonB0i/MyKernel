#!/bin/bash
set -e

mkdir -p iso/boot/grub

gcc -m32 -ffreestanding -c kernel/kernel.c -o kernel.o
as --32 boot.s -o boot.o
ld -m elf_i386 -T linker.ld boot.o kernel.o -o kernel.bin

cp kernel.bin iso/boot/

echo 'set timeout=0
set default=0
menuentry "Mykernel" {
    multiboot /boot/kernel.bin
    boot
}' > iso/boot/grub/grub.cfg

grub-mkrescue -o mykernel.iso iso

echo "Build complete!"

