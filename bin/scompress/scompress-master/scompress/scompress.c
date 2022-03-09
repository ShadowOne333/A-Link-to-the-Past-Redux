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
#include <fcntl.h>
#include <string.h>
#include <stdbool.h>
#include <errno.h>
#include <unistd.h>

#include <sys/stat.h>

#include "tile.h"
#include "rommapping.h"
#include "scompress.h"
#include "compressions/alttpcompression.h"


char* rom_file = "/home/skarsnik/Zelda - A Link to the Past.smc";
unsigned int header_offset = 0x200;
bool	verbose_print = false;

unsigned int gfx_table_pointers[NB_POINTER_IN_TABLE];
unsigned int gfx_table_pc_locations[NB_POINTER_IN_TABLE];

/* zcompress skip some data. Here are all the data :
* 00-DC are extracted from the pointer table
* 00-70  : 3bpp compressed (converted to 4bpp)
* 71, 72 : 2bpp compressed
* 73-7E  : 3bpp uncompressed (converted to 4bpp)
* 7F-D9  : 3bpp compressed (converted to 4bpp)
* DA-DC  : 2bpp compressed
* DD,DE  : 2bpp compressed, not present in zcompress

*/

s_location	 gfx_locations_sorted[NB_POINTER_IN_TABLE];
s_location   gfx_locations[NB_POINTER_IN_TABLE];
s_location   zcompress_gfx_locations[NB_POINTER_IN_TABLE];


/* $4FF3-$528F - indexed (long) table to compressed graphics packets
 * $80000-$86FFF - 4bpp graphics sets for all of Link's animations

************************************

$87000-$8B7FF - 3bpp graphics sets (uncompressed)

 When reinserting, I highly recommend using address 0x87200 since
 that's the address of the original gfx. 0xC4200 (end)
 */


// ROM_DATA[0x04F80 + 446 + i], ROM_DATA[0x04F80 + 223 + i], ROM_DATA[0x04F80 + i]

void	build_gfx_table_pointers()
{
    FILE* rom_stream = my_fopen(rom_file, "r");
    unsigned char e_addr[3];
    for (unsigned int i = 0; i < NB_POINTER_IN_TABLE; i++)
    {
        rom_fseek(rom_stream, POINTER_TABLE_START + i);
        fread(e_addr, 1, 1, rom_stream);
        rom_fseek(rom_stream, POINTER_TABLE_START + 223 + i);
        fread(e_addr + 1, 1, 1, rom_stream);
        rom_fseek(rom_stream, POINTER_TABLE_START + 446 + i);
        fread(e_addr + 2, 1, 1, rom_stream);

        /*char *hex_str = hexString((char*) e_addr, 3);
        printf("Address read : %s\n", hex_str);
        free(hex_str);*/
        gfx_table_pointers[i] = (e_addr[0] << 16) + (e_addr[1] << 8) + e_addr[2];
        char* mapping_error;
        int pc_addr = lorom_snes_to_pc(gfx_table_pointers[i], &mapping_error);
        if (pc_addr < 0)
        {
            fprintf(stderr, "Error while mapping a snes address to pc : %s\n", mapping_error);
            exit(1);
        }
        gfx_table_pc_locations[i] = (unsigned int) pc_addr;
    }
    fclose(rom_stream);
}

void	build_gfx_location()
{
    for (unsigned int i = 0; i < NB_POINTER_IN_TABLE; i++)
    {
        gfx_locations[i].address = gfx_table_pc_locations[i];
        gfx_locations[i].max_length = 0;
        gfx_locations[i].index = i;
        if (i <= 0x70)
        {
            gfx_locations[i].bpp = 3;
            gfx_locations[i].compression = true;
            if (i != 0x70)
                gfx_locations[i].max_length = gfx_table_pc_locations[i + 1] - gfx_locations[i].address;
            else
                gfx_locations[i].max_length = gfx_locations[i - 1].max_length;
        }
        if (i == 0x71 || i == 0x72)
        {
            gfx_locations[i].bpp = 2;
            gfx_locations[i].compression = true;
            if (i == 0x71)
                gfx_locations[i].max_length = gfx_table_pc_locations[i + 1] - gfx_locations[i].address;
            else
                gfx_locations[i].max_length = 2048;
        }
        if (i >= 0x73 && i <= 0x7E)
        {
            gfx_locations[i].bpp = 3;
            gfx_locations[i].compression = false;
            if (i != 0x7E)
                gfx_locations[i].max_length = gfx_table_pc_locations[i + 1] - gfx_locations[i].address;
            else
                gfx_locations[i].max_length = gfx_locations[i - 1].max_length;
        }
        if (i >= 0x7F && i <= 0xD9)
        {
            gfx_locations[i].bpp = 3;
            gfx_locations[i].compression = true;
            if (i != 0xD9)
                gfx_locations[i].max_length = gfx_table_pc_locations[i + 1] - gfx_locations[i].address;
            else
                gfx_locations[i].max_length = gfx_locations[i - 1].max_length;

        }
        if (i >= 0xDA && i <= 0xDE)
        {
            gfx_locations[i].bpp = 2;
            gfx_locations[i].compression = true;
            if (i != 0xDE)
                gfx_locations[i].max_length = gfx_table_pc_locations[i + 1] - gfx_locations[i].address;
            else
                gfx_locations[i].max_length = 2048;
        }
    }
}

void	build_zcompress_gfx_location()
{
    copy_locations(zcompress_gfx_locations, gfx_locations);
    zcompress_gfx_locations[0xDD].address = FONT_SPRITE_LOCATION;
    zcompress_gfx_locations[0xDD].bpp = 2;
    zcompress_gfx_locations[0xDD].compression = false;
    zcompress_gfx_locations[0xDD].max_length = 2048 * 2;
    zcompress_gfx_locations[0xDE].address = LINK_SPRITE_LOCATION;
    zcompress_gfx_locations[0xDE].bpp = 4;
    zcompress_gfx_locations[0xDE].compression = false;
    zcompress_gfx_locations[0xDE].max_length = 28672;
}

// Just list the table
void	list_table_compressed()
{
    printf("Listing graphics address in $04F80 table\n");
    build_gfx_table_pointers();
    for (unsigned int i = 0; i < NB_POINTER_IN_TABLE; i++)
    {
        printf("SNES location 0x%06X", gfx_table_pointers[i]);
        printf(" -> PC : 0x%06X\n", gfx_table_pc_locations[i]);
    }
}

void	print_gfx_location(s_location* locs)
{
    for (unsigned int i = 0; i < NB_POINTER_IN_TABLE; i++)
    {
        printf("%02X  ", i);
        print_location(locs[i]);
    }
}


void	extract_gfx(s_location* locations, bool single_file, const char* allfilename)
{
    char read_buffer[1000000]; //~ 1M should be enought x)
    char filename[20];
    FILE* rom_stream = my_fopen(rom_file, "r");
    FILE* gfx_file;
    unsigned int	compressed_length;
    unsigned int	decompressed_length;
    unsigned int	to_convert_length;
    unsigned int	converted_length;
    char			*data;
    unsigned int    read_length;
    char			*uncompressed;
    char			*to_write;
    unsigned int	write_length;
    s_location		location;

    if (single_file)
        gfx_file = my_fopen(allfilename, "w");

    for (unsigned int i = 0; i < NB_POINTER_IN_TABLE; i++)
    {
        location = locations[i];
        unsigned int pc_location = location.address;

        //printf("==%02X==\n", i);
        //print_location(location);
        rom_fseek(rom_stream, pc_location);
        read_length = fread(read_buffer, 1, location.max_length, rom_stream);
        write_length = read_length;
        to_convert_length = (2048 / 32) * 24;
        data = read_buffer;
        if (location.compression)
        {
            //printf("Compressed\n");
            uncompressed = alttp_decompress_gfx(read_buffer, 0, read_length, &decompressed_length, &compressed_length);
            //printf("Compressed length : %d  - Decompressed length : %d\n", compressed_length, decompressed_length);
            if (read_length < compressed_length)
                fprintf(stderr, "WARNING: compressed length read exceed the expected read length for : %02X\n", i);
            if (uncompressed == NULL)
            {
                fprintf(stderr, "Error while decompressing data for 0x%06X - %s\n", pc_location, alttp_decompression_error);
                exit(1);
            }
            data = uncompressed;
            to_convert_length = decompressed_length;
        }
        if (location.bpp == 3)
        {
            char *converted = convert_3bpp_to_4bpp(data, to_convert_length, &converted_length);
            write_length = converted_length;
            to_write = converted;
        }
        if (location.bpp == 2)
        {
            if (location.compression)
            {
                to_write = (char*) malloc(2048);
                memcpy(to_write, data, decompressed_length);
                if (decompressed_length != 2048)
                    memset(to_write, 0, decompressed_length - 1);
                write_length = 2048;
            } else {
                write_length = location.max_length;
                to_write = (char*) malloc(write_length);
                memcpy(to_write, read_buffer, write_length);
            }
        }
        if (location.bpp == 4)
        {
            write_length = location.max_length;
            to_write = (char*) malloc(write_length);
            memcpy(to_write, read_buffer, write_length);
        }
        if (location.compression)
            free(uncompressed);

        if (single_file)
        {
            fwrite(to_write, 1, write_length, gfx_file);
        } else {
            sprintf(filename, "SGFX%02X.bin", i);
            gfx_file = my_fopen(filename, "w");
            verbose_printf("Creating %s file from index %02X, location : %06X\n", filename, i, location.address);
            fwrite(to_write, 1, write_length, gfx_file);
            fclose(gfx_file);
        }
        free(to_write);
    }
    // Meh solution
    if (locations == gfx_locations)
    {
        rom_fseek(rom_stream, FONT_SPRITE_LOCATION);
        fread(read_buffer, 1, 2048 * 2, rom_stream);
        if (single_file)
            fwrite(read_buffer, 1, 2048 * 2, gfx_file);
        else
        {
            verbose_printf("Creating SGFXFONT.bin from font location (%06X)\n", FONT_SPRITE_LOCATION);
            gfx_file = my_fopen("SGFXFONT.bin", "w");
            fwrite(read_buffer, 1, 2048 * 2, gfx_file);
            fclose(gfx_file);
        }
        rom_fseek(rom_stream, LINK_SPRITE_LOCATION);
        fread(read_buffer, 1, 28672, rom_stream);
        if (single_file)
            fwrite(read_buffer, 1, 28672, gfx_file);
        else
        {
            verbose_printf("Creating SGFXLINK.bin from link sprite location (%06X)\n", LINK_SPRITE_LOCATION);
            gfx_file = my_fopen("SGFXLINK.bin", "w");
            fwrite(read_buffer, 1, 28672, gfx_file);
            fclose(gfx_file);
        }
    }
    if (single_file)
        fclose(gfx_file);
    fclose(rom_stream);
}



unsigned int insertion_size[NB_POINTER_IN_TABLE];

void 	inject_gfx(s_location* locations, const char *inject_file, unsigned int i_start, bool simulation)
{
    s_location location;
    char	read_buffer[500000];
    unsigned int start = 0;
    unsigned int font_link_offset = 2048 * 2; // offset in the gfx file

    FILE* gfx_file = my_fopen(inject_file, "r");
    FILE* rom_stream = my_fopen(rom_file, "r+");
    //std_nintendo_compression_sanity_check = true;

    if (locations == zcompress_gfx_locations)
    {
        start = 2;
        font_link_offset = 0;
    }
    verbose_printf("Injecting font and link GFX first\n");
    fseek(gfx_file, (0xDE + 1) * 2048 + font_link_offset, SEEK_SET);
    fread(read_buffer, 1, 28672, gfx_file);
    rom_fseek(rom_stream, LINK_SPRITE_LOCATION);
    if (!simulation)
        fwrite(read_buffer, 1, 28672, rom_stream);
    fseek(gfx_file, 0xDD * 2048 + font_link_offset, SEEK_SET);
    fread(read_buffer, 1, 2048 * 2, gfx_file);
    rom_fseek(rom_stream, FONT_SPRITE_LOCATION);
    if (!simulation)
        fwrite(read_buffer, 1, 2048 * 2, rom_stream);

    rom_fseek(rom_stream, i_start);
    sort_locations(locations, gfx_locations_sorted);
    verbose_printf("Injecting other GFX\n");
    for (unsigned int i = start; i < NB_POINTER_IN_TABLE; i++)
    {
        char *converted = NULL;
        unsigned int converted_size;
        location = gfx_locations_sorted[i];
        //printf("=====%02X | %02X=====\n", i, location.index);
        //print_location(location);
        if (location.compression)
        {
            unsigned int compressed_length;
            char* compressed;
            fseek(gfx_file, location.index * 2048, SEEK_SET);
            fread(read_buffer, 1, 2048, gfx_file);

            if (location.bpp == 3)
            {
                converted = convert_4bpp_to_3bpp(read_buffer, 2048, &converted_size);
                //printf("Converted size : %d\n", converted_size);
                compressed = alttp_compress_gfx(converted, 0, converted_size, &compressed_length);
            }
            if (location.bpp == 2)
            {
                compressed = alttp_compress_gfx(read_buffer, 0, 2048, &compressed_length);
            }
            if (compressed == NULL)
            {
                fprintf(stderr, "Error with compression\n");
                exit(1);
            }
            unsigned int save_pos = ftell(rom_stream);
            if (0)
            {
                printf("Compressed length :%d\n", compressed_length);
                printf("Before %d\n", save_pos);
                rom_fseek(rom_stream, location.address);
                fread(read_buffer, 1, 2048, rom_stream);
                unsigned int a, b, a2, b2;
                char *piko = alttp_decompress_gfx(read_buffer, 0, 2048, &a, &b);
                if (location.bpp == 3 && memcmp(converted, piko, a) != 0)
                {
                    fprintf(stderr, "Data from rom vs converted gfx not the same\n");
                    exit(1);
                }
                char* piko2 = alttp_decompress_gfx(compressed, 0, 2048, &a2, &b2);
                if (piko == NULL || piko2 == NULL)
                {
                    fprintf(stderr, "Error decompressing something : %s\n", alttp_decompression_error);
                    exit(1);
                }
                printf("Piko : %d vs %d\n", a, a2);
                if (memcmp(piko, piko2, a) != 0)
                {
                    fprintf(stderr, "Compressed data not the same\n");
                    exit(1);
                }
                free(piko);
                free(piko2);
                fseek(rom_stream, save_pos, SEEK_SET);
                printf("After %ld\n", ftell(rom_stream));
            }
            verbose_printf("Writing at %06X, %d compressed bytes written\n", save_pos, compressed_length);
            insertion_size[i] = compressed_length;
            if (!simulation)
                fwrite(compressed, 1, compressed_length, rom_stream);
            free(compressed);
            if (converted != NULL)
                free(converted);
        } else {
            if (location.bpp == 3)
            {
                fseek(gfx_file, location.index * 2048, SEEK_SET);
                fread(read_buffer, 1, 2048, gfx_file);
                converted = convert_4bpp_to_3bpp(read_buffer, 2048, &converted_size);
                verbose_printf("Writing at %06X,  %d uncompressed 3bpp bytes written\n", ftell(rom_stream), converted_size);
                if (!simulation)
                    fwrite(converted, 1, converted_size, rom_stream);
                insertion_size[i] = converted_size;
            }
        }
    }
    fclose(rom_stream);
}

void	create_pointer_table(unsigned int i_start, bool zmode, bool simulation)
{
    static bool first = true;
    unsigned int pc_addr = i_start;
    unsigned int start = 0;
    unsigned int snes_addr = lorom_pc_to_snes(pc_addr);
    if (zmode)
        start = 2;
    FILE* rom_stream = my_fopen(rom_file, "r+");
    for (unsigned int i = start; i < NB_POINTER_IN_TABLE; i++)
    {
        s_location location = gfx_locations_sorted[i];
        unsigned int index = location.index;
        if (i != start)
            pc_addr += insertion_size[i - 1];
        snes_addr = lorom_pc_to_snes(pc_addr);
        //printf("Old addresse : %06X - New addresse : %06X\n", location.address, pc_addr);
        unsigned char p1, p2, p3;
        p3 = (snes_addr & 0xFF);
        p2 = (snes_addr & 0xFF00) >> 8;
        p1 = (snes_addr & 0xFF0000) >> 16;
        //printf("--SNES addr : %06X  Writing at %02X : %02X - %02X : %02X - %02X : %02X\n",  snes_addr,
        //       POINTER_TABLE_START + index, p1, POINTER_TABLE_START + 223 + index, p2, POINTER_TABLE_START + 446 + index, p3);
        if (first && simulation)
            verbose_printf("Writing new entry in the pointer table[%02X] = %06X\n", index, snes_addr);
        if (!simulation)
        {
            rom_fseek(rom_stream, POINTER_TABLE_START + index);
            fwrite(&p1, 1, 1, rom_stream);
            rom_fseek(rom_stream, POINTER_TABLE_START + index + 223);
            fwrite(&p2, 1, 1, rom_stream);
            rom_fseek(rom_stream, POINTER_TABLE_START + index + 446);
            fwrite(&p3, 1, 1, rom_stream);
        }
    }
    if (pc_addr + insertion_size[222] > NORMAL_MAX_END)
    {
        fprintf(stderr, "Trying to write pass maximum\n");
        exit(1);
    }
    //if (!simulation)
    printf("GFX data end at %06X - leaving %d free space\n", pc_addr + insertion_size[222], NORMAL_MAX_END - pc_addr - insertion_size[222]);
    fclose(rom_stream);
    first = false;
}

struct mode_c {
	bool* mode;
	char c;
};

int 	main(int ac, char *ag[])
{
    bool extract, inject, list, simulation, verbose, zmode;
    extract = false;
    inject = false;
    list = false;
    simulation = false;
    verbose = false;
    zmode = false;
    const char *mode;

    if (ac < 3 || ac > 5)
    {
        show_help();
        return 1;
    }
    mode = ag[1];
    unsigned int nb_char_mode = 0;
    struct mode_c tab_mode[6] = {{&extract, 'e'}, {&inject, 'i'}, {&list, 'l'}, {&simulation, 's'}, {&verbose, 'v'}, {&zmode, 'z'}};
    for (unsigned int i = 0; i < 6; i++)
    {
        if (strchr(mode, tab_mode[i].c) != NULL)
        {
            *(tab_mode[i].mode) = true;
            nb_char_mode++;
        }
    }
    if (strlen(mode) != nb_char_mode)
    {
        fprintf(stderr, "Invalid mode specified\n");
        show_help();
    }
    if ((inject && extract) || (inject && list) || (extract && list))
    {
        fprintf(stderr, "You must select etheir extract, inject or list mode\n");
        return 1;
    }
    if (access(ag[2], R_OK) != 0)
    {
        fprintf(stderr, "Error opening/accessing rom file %s : %s\n", ag[2], strerror(errno));
        return 1;
    }
    verbose_print = verbose;
    if (zmode)
        printf("zcompress mode enabled\n");
    rom_file = ag[2];
    set_header_offset();
    build_gfx_table_pointers();
    // == LIST ==
    if (list)
    {
        if (ac != 3)
        {
            fprintf(stderr, "list mode only take the rom file as argument\n");
            return 1;
        }
        list_table_compressed();
        return 0;
    }
    // == EXTRACT ==
    if (extract)
    {
        if (ac > 4 && ac <= 2)
        {
            fprintf(stderr, "Invalid number of arguments for extraction\n");
            return 1;
        }
        if (ac == 4 && access(ag[3], X_OK) == 0 && access(ag[3], W_OK) != 0)
        {
            fprintf(stderr, "Can't access %s : %s\n", ag[3], strerror(errno));
            return 1;
        }
        verbose_printf("Extracting GFX from %s\n", rom_file);
        build_gfx_location();
        s_location* locs = gfx_locations;
        if (zmode)
        {
            build_zcompress_gfx_location();
            locs = zcompress_gfx_locations;
        }
        if (ac == 4)
        {
            extract_gfx(locs, true, ag[3]);
            return 0;
        }
        extract_gfx(locs, false, NULL);
    }
    // == INJECT ==
    if (inject)
    {
        if (ac > 5 && ac < 4)
        {
            fprintf(stderr, "Invalid number of arguments for injection\n");
            return 1;
        }
        unsigned int start = NORMAL_START;
        char *to_inject = NULL;
        build_gfx_location();
        s_location* locs = gfx_locations;
        if (zmode)
        {
            build_zcompress_gfx_location();
            locs = zcompress_gfx_locations;
        }
        if (ac == 4)
            to_inject = ag[3];
        if (ac == 5)
        {
            to_inject = ag[4];
            if (sscanf(ag[3], "%X", &start) == 0)
            {
                fprintf(stderr, "The starting possition for injection is not a valid hexadecimal number\n");
                return 1;
            }
        }
        if (access(to_inject, R_OK) != 0)
        {
            fprintf(stderr, "Can't access %s : %s\n", to_inject, strerror(errno));
            return 1;
        }
        verbose_printf("Injection GFX from %s to %s at %06X\n", to_inject, rom_file, start);
        inject_gfx(locs, ag[3], start, simulation);
        create_pointer_table(start, zmode, true);
        if (!simulation)
            create_pointer_table(start, zmode, false);
    }
    return 0;
}

