#include "rominfo.h"
#include <string.h>
#include <stdlib.h>


struct rom_infos*    get_rom_info(const char* data)
{
    struct rom_infos* toret = (struct rom_infos*) malloc(sizeof(struct rom_infos));
    memcpy(toret->title, data, 21);
    toret->type = LoROM;
    toret->fastrom = (data[21] & 0b00110000) == 0b00110000;
    if (data[21] & 1)
        toret->type = HiROM;
    if ((data[21] & 0b00000111) == 0b00000111)
        toret->type = ExHiROM;
    toret->size = 0x400 << data[23];
    toret->sram_size = 0x400 << data[24];
    toret->creator_id =  (data[26] << 8) | data[25];
    toret->version = data[27];
    toret->checksum_comp = (data[29] << 8) | data[28];
    toret->checksum = (data[31] << 8) | data[30];
    toret->make_sense = false;
    if ((toret->checksum ^ toret->checksum_comp) == 0xFFFF)
        toret->make_sense = true;
    return toret;
}