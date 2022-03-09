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

#ifndef H_DECOMPRESS_H
#define H_DECOMPRESS_H

#ifdef __cplusplus
extern "C" {
#endif

#define D_MODE_GFX 0
#define D_MODE_OW_DATA 1
#include <stdbool.h>
/* Enable this to force the compression to check if compressed data still match the uncompressed data
 **/  

extern bool  alttp_compression_sanity_check;

/* These hold the error string returned by the 2 functions */

extern char* alttp_decompression_error;
extern char* alttp_compression_error;

/*
 * This function decompress the c_data string starting at start and return the decompressed data.
 * returns NULL if an error occured.
 *
 * if max_length is set to 0 the function will stop when reaching the 'compression end' marker (header == 0xFF)
 * otherwise it will stop with an error if max_length is reached.
 *
 * uncompressed_data_size is the resulting size of the decompressed string.
 * compressed_length is the length of the compressed data, meaning the number of bytes read in c_data.
 */


char*	alttp_decompress_gfx(const char *c_data, const unsigned int start, unsigned int max_length, unsigned int* uncompressed_data_size, unsigned int* compressed_length);
char*	alttp_decompress_overworld(const char *c_data, const unsigned int start, unsigned int max_length, unsigned int* uncompressed_data_size, unsigned int* compressed_length);

char*	alttp_decompress(const char *c_data, const unsigned int start, unsigned int max_length, unsigned int* uncompressed_data_size, unsigned int* compressed_length, char mode);



/*
 * This function compress u_data following the compression format used by Zelda3: a link to the past
 * and return the resulting string or NULL if an error occured.
 *
 * start is the starting offset in u_data to compress.
 * length is the length of u_data to compress
 * compressed_size is the resulting size of the compressed string.
 */
char*	alttp_compress(const char* u_data, const unsigned int start, const unsigned int length, unsigned int* compressed_size, char mode);

char*	alttp_compress_gfx(const char* u_data, const unsigned int start, const unsigned int length, unsigned int* compressed_size);
char*	alttp_compress_overworld(const char* u_data, const unsigned int start, const unsigned int length, unsigned int* compressed_size);

#ifdef __cplusplus
}
#endif


#endif
