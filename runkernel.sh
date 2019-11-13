#!/usr/bin/env bash
echo "Compiling..."
gcc -fno-stack-protector -m32 -c kernel.c -o kc.o
echo "Linking..."
ld -m elf_i386 -T link.ld -o kernel kasm.o kc.o
echo "running emulator..."
qemu-system-i386 -kernel kernel