# MyKernel

A **minimal x86 operating system kernel** built from scratch using **C and Assembly**.
This project demonstrates the fundamentals of **OS development**, including bootloading, memory access, and running a kernel directly on hardware (emulated).

---

## Overview

This project implements a very small **32-bit kernel** that boots using **GRUB**, loads via the **Multiboot specification**, and writes directly to **VGA memory** to display output on the screen.

The kernel runs inside **QEMU**, simulating real hardware.

---

## Features

* Bootable kernel using **GRUB**
* Multiboot-compatible kernel
* Written in **C and x86 Assembly**
* Direct writing to **VGA text buffer**
* Bootable ISO generation
* Runs in a virtual machine using **QEMU**

---

## Project Structure

```
MyKernel/
│
├── boot.s            # Kernel entry point (assembly)
├── linker.ld         # Memory layout linker script
├── build.sh          # Build script
├── kernel/           # Kernel source files
│   ├── kernel.c
│   ├── idt.c
│   ├── isr.c
│
├── iso/              # Bootable ISO structure
│   └── boot/grub/grub.cfg
│
└── kernel.bin        # Compiled kernel binary
```

---

## Boot Flow

The boot process follows this sequence:

```
BIOS
  ↓
GRUB Bootloader
  ↓
Multiboot Loader
  ↓
_start (Assembly entry point)
  ↓
kernel_main()
  ↓
Write to VGA Memory
  ↓
Display text on screen
```

---

## Build Instructions

Requirements:

* GCC
* GRUB tools
* QEMU

Build the kernel:

```
./build.sh
```

Run the kernel:

```
qemu-system-i386 -cdrom mykernel.iso
```

---

## Example Output

```
Hi!
```

This output is printed directly to the **VGA text buffer (0xB8000)** by the kernel.

---

## What I Learned

* Boot process of an x86 system
* How bootloaders load kernels
* Writing low-level code in **C and Assembly**
* Kernel entry points and linking
* Memory-mapped I/O using VGA memory
* Building bootable ISO images

---

## Future Improvements

* Keyboard driver
* Interrupt handling
* Memory management
* Simple shell
* Task scheduling

---

## Author

Built as a learning project while exploring **Operating System Development** and **low-level systems programming**.
