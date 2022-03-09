#include <stdio.h>
#include <stdlib.h>

#include "savestateloader.h"

char*	hexString(const char* str, const unsigned int size)
{
    char* toret = malloc(size * 3 + 1);

    unsigned int i;
    for (i = 0; i < size; i++)
    {
        sprintf(toret + i * 3, "%02X ", (unsigned char) str[i]);
    }
    toret[size * 3] = 0;
    return toret;
}


int main(int argc, char *argv[])
{
    savestate_t msavestate;
    printf("Hello\n");
    if (savestate_loader_init("/mnt/f/Tmp/usb2snes-testlorom", NULL, &msavestate) == false)
    {
        fprintf(stderr, "Can't init the file\n");
        return 1;
    }
    
    char** section_name = savestate_loader_list_section_name(&msavestate);
    for (unsigned int i = 0; i < msavestate.section_count; i++)
    {
        printf("Section : %s\n", section_name[i]);
    }
    savestate_section_t* wram = savestate_loader_get(WRAM, &msavestate);
    printf("WRAM: \n %s\n", hexString(wram->data, 0x100));
    savestate_section_t* sram = savestate_loader_get(SRAM, &msavestate);
    printf("---------------------\nSRAM: \n %s\n", hexString(sram->data, 0x100));
    return 0;
}
