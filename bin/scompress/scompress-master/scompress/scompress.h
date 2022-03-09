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

#ifndef H_SCOMPRESS_H
#define H_SCOMPRESS_H

#define NB_POINTER_IN_TABLE 223

#define NORMAL_START 0x87000
#define NORMAL_MAX_END 0xC4200

#define POINTER_TABLE_START 0x04F80

#define ZCOMPRESS_FILEALL_SIZE 476 * 1024

#define LINK_SPRITE_LOCATION 0x80000

#define FONT_SPRITE_LOCATION 0x70000

extern char* rom_file;
extern unsigned int header_offset;
extern bool verbose_print;


typedef struct {
    unsigned int    address;
    unsigned char   bpp;
    bool            compression;
    unsigned int    max_length;
    unsigned int    index;
} s_location;

void set_header_offset();

FILE* my_fopen(const char *file, const char *mode);
int rom_fseek(FILE* stream, long offset);
unsigned int    compare_data(const char* data1, const char* data2, const unsigned int length);

char*   convert_3bpp_to_4bpp(char *tiles, unsigned int length, unsigned int* converted_length);
char*   convert_4bpp_to_3bpp(const char* to_convert, unsigned int length, unsigned int* converted_length);
void    print_location(s_location loc);

void    copy_locations(s_location* dest, s_location *src);
void    sort_locations(s_location* tosort, s_location *output);
void    verbose_printf(const char* fmt, ...);

void    show_help();

#endif