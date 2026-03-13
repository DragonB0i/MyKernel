#include "idt.h"

struct idt_entry idt[256];
struct idt_ptr idtp;

extern void isr0();
extern void idt_load();

void idt_set_gate(int n, uint32_t handler) {
    idt[n].base_low = handler & 0xFFFF;
    idt[n].selector = 0x08;
    idt[n].zero = 0;
    idt[n].flags = 0x8E;
    idt[n].base_high = (handler >> 16) & 0xFFFF;
}
void idt_init() {

    idtp.limit = (sizeof(struct idt_entry) * 256) - 1;
    idtp.base = (uint32_t)&idt;
    idt_set_gate(0, (uint32_t)isr0);
    idt_load();
}
