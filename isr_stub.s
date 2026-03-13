global isr0
extern isr0_handler

isr0:
    cli
    call isr0_handler
    hlt
