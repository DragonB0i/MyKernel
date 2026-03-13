#include <stdint.h>

void isr0_handler() {
    
    char* video = (char*)0xB8000;

    video[0] = 'E';
    video[1] = 0x07;
    video[2] = 'R';
    video[3] = 0x07;
    video[4] = 'R';
    video[5] = 0x07;
    video[6] = 'O';
    video[7] = 0x07;
    video[8] = 'R';
    video[9] = 0x07;
}
