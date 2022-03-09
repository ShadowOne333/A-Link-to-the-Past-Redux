/*
Copyright 2016 Sylvain "Skarsnik" Colinet

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

#ifndef H_NINTENDO_COMPRESS_H
#define H_NINTENDO_COMPRESS_H


#define D_NINTENDO_C_MODE1 0
#define D_NINTENDO_C_MODE2 1

#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

extern bool  std_nintendo_compression_sanity_check;

/* These hold the error string returned by the 2 functions */

extern char* std_nintendo_decompression_error;
extern char* std_nintendo_compression_error;

/*
 * This function decompress the c_data string starting at start and return the decompressed data.
 * returns NULL if an error occured.
 *
 * if max_length is set to 0 the function will stop when reaching the 'compression end' marker (header == 0xFF)
 * otherwise it will stop with an error if max_length is reached.
 *
 * uncompressed_data_size is the resulting size of the decompressed string.
 * compressed_length is the length of the compressed data, meaning the number of bytes read in c_data.
 * mode is the variation of the compression, use one of the define for it: D_NINTENDO_C_MODEX... 1 is is SMW, 2 is zelda3 gfx
 */

char*	std_nintendo_decompress(const char *c_data, const unsigned int start, unsigned int max_length, unsigned int* uncompressed_data_size, unsigned int* compressed_length, char mode);

/*
 * This function compress u_data following the compression format used by Nintendo
 * and return the resulting string or NULL if an error occured.
 *
 * start is the starting offset in u_data to compress.
 * length is the length of u_data to compress
 * compressed_size is the resulting size of the compressed string.
 * mode is the variation of the compression.
 */

char*	std_nintendo_compress(const char* u_data, const unsigned int start, const unsigned int length, unsigned int* compressed_size, char mode);

#ifdef __cplusplus
}
#endif


#endif