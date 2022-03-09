/*
Copyright 2017 Sylvain "Skarsnik" Colinet

 This file is part of the sneshackingtools project.

    sneshackingtools is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Foobar is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with sneshackingtools.  If not, see <http://www.gnu.org/licenses/>
    */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <errno.h>
#include <stdarg.h>
#include <sys/stat.h>
#include "tile.h"
#include "scompress.h"


void set_header_offset()
{
    struct stat st;
    stat(rom_file, &st);
    if (st.st_size & 0x200)
    {
        header_offset = 0x200;
        verbose_printf("Rom has header\n");
    }
    else
    {
        header_offset = 0;
        verbose_printf("Rom has no header\n");
    }
}

FILE* my_fopen(const char *file, const char *mode)
{
    FILE* toret = fopen(file, mode);
    if (toret == NULL)
    {
        fprintf(stderr, "Can't open %s file : %s\n", file, strerror(errno));
        exit(1);
    }
    return toret;
}

int rom_fseek(FILE* stream, long offset)
{
    return fseek(stream, offset + header_offset, SEEK_SET);
}

char*   convert_3bpp_to_4bpp(char *tiles, unsigned int length, unsigned int* converted_length)
{
    unsigned int nb_tile = length / 24;
    *converted_length = nb_tile * 32;
    char* converted = (char*) malloc(*converted_length);

    for (unsigned int i = 0; i < nb_tile; i++)
    {
        tile8 tile = unpack_bpp3_tile(tiles, i * 24);
        char *bpp4_str = pack_bpp4_tile(tile);
        memcpy(converted + i * 32, bpp4_str, 32);
        free(bpp4_str);
    }
    return converted;
}

char*   convert_4bpp_to_3bpp(const char* to_convert, unsigned int length, unsigned int* converted_length)
{
    unsigned int nb_tile = length / 32;
    *converted_length = nb_tile * 24;
    char* converted = (char*) malloc(*converted_length);

    for (unsigned int i = 0; i < length / 32; i++)
    {
        tile8 tile = unpack_bpp4_tile(to_convert, i * 32);
        char* tileraw = pack_bpp3_tile(tile);
        memcpy(converted + i * 24, tileraw, 24);
        free(tileraw);
    }
    return converted;
}

unsigned int    compare_data(const char* data1, const char* data2, const unsigned int length)
{
    for (unsigned int i = 0; i < length; i++)
    {
        if (data1[i] == data2[i])
            printf("\033[1;32m%02X\033[0m,", (unsigned char) data1[i]);
        else
        {
            printf("\nData differ at : %d\n", i);
            printf("Data1 : ");
            for (unsigned j = 0; j < 10 && i + j < length; j++)
                printf("\033[1;31m%02X\033[0m,", (unsigned char) data1[i]);
            printf("\nData2 : ");
            for (unsigned j = 0; j < 10 && i + j < length; j++)
                printf("\033[1;31m%02X\033[0m,", (unsigned char) data2[i]);
            printf("\n");
            return i;
        }
    }
    printf("\n");
    return -1;
}

void    copy_locations(s_location* dest, s_location *src)
{
    for (unsigned int i = 0; i < NB_POINTER_IN_TABLE; i++)
        dest[i] = src[i];
}

/* just a dumb bubble sort */
void    sort_locations(s_location* tosort, s_location *output)
{
    copy_locations(output, tosort);
    bool  sorted = false;

    while (!sorted)
    {
        sorted = true;
        for (unsigned int i = 0; i < NB_POINTER_IN_TABLE - 1; i++)
        {
            if (output[i].address > output[i + 1].address)
            {
                s_location tmp;
                tmp = output[i];

                output[i] = output[i + 1];
                output[i + 1] = tmp;
                sorted = false;
            }
        }
    }
}

void   verbose_printf(const char* fmt, ...)
{
    if (!verbose_print)
        return;
    va_list args;
    va_start(args, fmt);
    vprintf(fmt, args);
}

void    print_location(s_location loc)
{
    printf("0x%06X - %d bpp,  %s  - max length: %d\n", loc.address, loc.bpp,
           loc.compression ? "Compressed" : "Uncompressed", loc.max_length);
}


void    show_help()
{
    printf("SCompress is a tool to extract and insert gfx data from Zelda 3 roms. Auto detect header.\n\n");
    printf("Summary : scompress <modes> romfile [extra arguments]\n\n");
    printf("\tThe <modes> arguments take combinaison of letters that specify the main mode and some options.\n");
    printf("\tThere are 3 main modes :\n");
    printf("\t\tl\tlist\tmake scompress list the addresses in the pointer table of the rom.\n");
    printf("\t\te\textract\tExtract the gfx of the rom. if an argument is specified, everything is extracted in one file.\n");
    printf("\t\t\tinject\tthe mode to inject the gfx in the rom. take an optionnal starting location (hexa) and the gfx file to inject as arguments\n");
    printf("\n\tYou can add 2 other 'mode':\n");
    printf("\t\tz\tzcompress\tmake scompress emulate zcompress behavior.\n");
    printf("\t\ts\tsimulation\tassociated with injection, calcuation are done but nothing will be written to the rom.\n");
    printf("\t\tv\tverbose\tmake scompress display more information.\n");
    printf("\n\nExamples:\n");
    printf("\tscompress e Zelda3.smc\t\t\tExtract the 200+ gfx into separate files\n");
    printf("\tscompress e Zelda3.smc allgfx.bin\tExtract the 200+ gfx into the allgfx.bin file\n");
    printf("\tscompress i Zelda3.smc allgfx.bin\tinject the gfx at the default location\n");
    printf("\tscompress i Zelda3.smc 87000 allgfx.bin\tinject the gfx starting at $87000 in the rom file.\n");
    printf("\tscompress izv Zelda3.smc allgfx.bin\tinject the gfx in the rom file following zcompress gfx file disposition while displaying more information.\n");
    exit(1);
}
