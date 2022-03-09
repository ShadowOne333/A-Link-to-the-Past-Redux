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


#include "tile.h"
#include <assert.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>


tile8 unpack_bpp1_tile(const char* data, const unsigned int offset)
{
    return (unpack_bpp_tile(data, offset, 1));
}


tile8 unpack_bpp2_tile(const char* data, const unsigned int offset)
{
    return (unpack_bpp_tile(data, offset, 2));
}

tile8 unpack_bpp3_tile(const char* data, const unsigned int offset)
{
    return (unpack_bpp_tile(data, offset, 3));
}

tile8 unpack_bpp4_tile(const char* data, const unsigned int offset)
{
    return (unpack_bpp_tile(data, offset, 4));
}

tile8 unpack_bpp8_tile(const char* data, const unsigned int offset)
{
    return (unpack_bpp_tile(data, offset, 8));
}

tile8   unpack_mode7_tile(const char* data, const unsigned int offset)
{
    tile8 tile;
    memcpy(tile.data, data + offset, 64);
    return tile;
}


tile8 unpack_bpp_tile(const char *data, const unsigned int offset, const unsigned bpp)
{
    tile8	tile;
    assert(bpp >= 1 && bpp <= 8);
    unsigned int bpp_pos[8]; // More for conveniance and readibility
    for (int col = 0; col < 8; col++)
    {
        for (int row = 0; row < 8; row++)
        {
            if (bpp == 1)
            {
                tile.data[col * 8 + row] = (data[offset + col] >> (7 - row)) & 0x01;
                continue;
            }
            /* SNES bpp format interlace each byte of the first 2 bitplanes.
             * | byte 1 of first bitplane | byte 1 of the second bitplane | byte 2 of first bitplane | byte 2 of second bitplane | ..
             */
            bpp_pos[0] = offset + col * 2;
            bpp_pos[1] = offset + col * 2 + 1;
            char mask = 1 << (7 - row);
            tile.data[col * 8 + row] = (data[bpp_pos[0]] & mask) == mask;
            tile.data[col * 8 + row] |= ((data[bpp_pos[1]] & mask) == mask) << 1;
            if (bpp == 3)
            {
                // When we have 3 bitplanes, the bytes for the third bitplane are after the 16 bytes of the 2 bitplanes.
                bpp_pos[2] = offset + 16 + col;
                tile.data[col * 8 + row] |= ((data[bpp_pos[2]] & mask) == mask) << 2;
            }
            if (bpp >= 4)
            {
                // For 4 bitplanes, the 2 added bitplanes are interlaced like the first two.
                bpp_pos[2] = offset + 16 + col * 2;
                bpp_pos[3] = offset + 16 + col * 2 + 1;
                tile.data[col * 8 + row] |= ((data[bpp_pos[2]] & mask) == mask) << 2;
                tile.data[col * 8 + row] |= ((data[bpp_pos[3]] & mask) == mask) << 3;
            }
            if (bpp == 8)
            {
                bpp_pos[4] = offset + 32 + col * 2;
                bpp_pos[5] = offset + 32 + col * 2 + 1;
                bpp_pos[6] = offset + 48 + col * 2;
                bpp_pos[7] = offset + 48 + col * 2 + 1;
                tile.data[col * 8 + row] |= ((data[bpp_pos[4]] & mask) == mask) << 4;
                tile.data[col * 8 + row] |= ((data[bpp_pos[5]] & mask) == mask) << 5;
                tile.data[col * 8 + row] |= ((data[bpp_pos[6]] & mask) == mask) << 6;
                tile.data[col * 8 + row] |= ((data[bpp_pos[7]] & mask) == mask) << 7;
            }
        }
    }
    return tile;
}


char*	pack_bpp1_tile(const tile8 tile)
{
    unsigned int p = 1;
    return pack_bpp_tile(tile, 1, &p);
}

char*	pack_bpp2_tile(const tile8 tile)
{
    unsigned int p = 1;
    return pack_bpp_tile(tile, 2, &p);
}

char*	pack_bpp3_tile(const tile8 tile)
{
    unsigned int p = 1;
    return pack_bpp_tile(tile, 3, &p);
}

char*	pack_bpp4_tile(const tile8 tile)
{
    unsigned int p = 1;
    return pack_bpp_tile(tile, 4, &p);
}

char*   pack_bpp8_tile(const tile8 tile)
{
    unsigned int p = 1;
    return pack_bpp_tile(tile, 8, &p);
}

//#include <stdio.h>
char*	pack_bpp_tile(tile8 tile, const unsigned int bpp, unsigned int *size)
{
    char* output = (char*) malloc(bpp * 8);
    memset(output, 0, bpp * 8);
    unsigned maxcolor = 2 << bpp;
    *size = 0;

    for (unsigned int col = 0; col < 8; col++)
    {
        for (unsigned int row = 0; row < 8; row++)
        {
            char color = tile.data[col * 8 + row];
            if (color > maxcolor)
                return NULL;

            if (bpp == 1)
                output[col] += (char)( (color & 1) << (7 - row));
            if (bpp >= 2)
            {
                output[col * 2] += (char)( (color & 1) << (7 - row));
                output[col * 2 + 1] += (char)( ((color & 2) == 2) << (7 - row));
            }
            if (bpp == 3)
                output[16 + col] += (char)( ((color & 4) == 4) << (7 - row));
            if (bpp >= 4)
            {
                output[16 + col * 2] += (char)( ((color & 4) == 4) << (7 - row));
                output[16 + col * 2 + 1] += (char)( ((color & 8) == 8) << (7 - row));
            }
            if (bpp == 8)
            {
                output[32 + col * 2] += (char)( ((color & 16) == 16) << (7 - row));
                output[32 + col * 2 + 1] += (char)( ((color & 32) == 32) << (7 - row));
                output[48 + col * 2] += (char)( ((color & 64) == 64) << (7 - row));
                output[48 + col * 2 + 1] += (char)( ((color & 128) == 128) << (7 - row));
            }
        }
    }
    *size = bpp * 8;
    return output;
}
