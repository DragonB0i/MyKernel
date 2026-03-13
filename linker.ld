ENTRY(kernel_main)
SECTIONS
{
   . = 1M;
   .text : {
      *(.multiboot)
      *(.text*)
   }
   .rodata : {
       *(.rodata*)
   }
   .data : {
       *(.rodata*)
   }
   .data : {
       *(.data*)
   }
   .bss : {
       *(.bss*)
   }
} 
