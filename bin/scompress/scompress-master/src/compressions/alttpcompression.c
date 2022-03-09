/*
Copyright 2016 Sylvain "Skarsnik" Colinet

 This file is part of the SkarAlttp project.

    SkarAlttp is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Foobar is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with SkarAlttp.  If not, see <http://www.gnu.org/licenses/>
    */


#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include "alttpcompression.h"
#include "stdnintendo.h"

char* alttp_decompression_error = NULL;
char* alttp_compression_error = NULL;

static char*   my_asprintf(const char* fmt, ...)
{
    va_list args;
    va_start(args, fmt);

    unsigned int needed = vsnprintf(NULL, 0, fmt, args);
    char  *buffer = malloc(needed + 1);
    vsnprintf(buffer, needed + 1, fmt, args);
    return buffer;
}

char*	alttp_decompress_gfx(const char *c_data, const unsigned int start, unsigned int max_length, unsigned int* uncompressed_data_size, unsigned int* compressed_length)
{
    char *toret = std_nintendo_decompress(c_data, start, max_length, uncompressed_data_size, compressed_length, D_NINTENDO_C_MODE2);
    alttp_decompression_error = std_nintendo_decompression_error;
    return toret;
}


char*	alttp_decompress_overworld(const char *c_data, const unsigned int start, unsigned int max_length, unsigned int* uncompressed_data_size, unsigned int* compressed_length)
{
    char* toret = std_nintendo_decompress(c_data, start, max_length, uncompressed_data_size, compressed_length, D_NINTENDO_C_MODE1);
    alttp_decompression_error = std_nintendo_decompression_error;
    return toret;
}


char*	alttp_compress_gfx(const char* u_data, const unsigned int start, const unsigned int length, unsigned int* compressed_size)
{
    return std_nintendo_compress(u_data, start, length, compressed_size, D_NINTENDO_C_MODE2);
}

char*	alttp_compress_overworld(const char* u_data, const unsigned int start, const unsigned int length, unsigned int* compressed_size)
{
    return std_nintendo_compress(u_data, start, length, compressed_size, D_NINTENDO_C_MODE1);
}
