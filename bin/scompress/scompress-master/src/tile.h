#ifndef H_TILE_H
#define H_TILE_H

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

#ifdef __cplusplus
extern "C" {
#endif


typedef struct 
{
    unsigned int    id;
    char            data[64];
    unsigned int	palette_id;
} tile8;

tile8   unpack_bpp8_tile(const char* data, const unsigned int offset);
tile8	unpack_bpp4_tile(const char* data, const unsigned int offset);
tile8	unpack_bpp3_tile(const char* data, const unsigned int offset);
tile8	unpack_bpp2_tile(const char* data, const unsigned int offset);
tile8   unpack_bpp1_tile(const char* data, const unsigned int offset);

tile8	unpack_bpp_tile(const char* data, const unsigned int offset, const unsigned int bpp);


char*	pack_bpp1_tile(const tile8 tile);
char*	pack_bpp2_tile(const tile8 tile);
char*	pack_bpp3_tile(const tile8 tile);
char*	pack_bpp4_tile(const tile8 tile);
char*   pack_bpp8_tile(const tile8 tile);

char*	pack_bpp_tile(const tile8 tile, const unsigned int bpp, unsigned int *size);

#ifdef __cplusplus
}
#endif


#endif
