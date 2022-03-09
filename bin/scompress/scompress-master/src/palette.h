#ifndef H_PALETTE_H
#define H_PALETTE_H

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

typedef unsigned char uchar;

typedef struct {
  unsigned char red;
  unsigned char green;
  unsigned char blue;
} m_color;

typedef struct {
  unsigned int	id;
  unsigned int	size;
  m_color*	colors;
} r_palette;


r_palette*	palette_create(const unsigned int size, const unsigned int id);
void		palette_free(r_palette* tofree);

r_palette*	palette_extract(const char* data, const unsigned int offset, const unsigned int palette_size);

char*		palette_convert(const r_palette pal);

m_color		convertcolor_snes_to_rgb(const unsigned short snes_color);
unsigned short 	convertcolor_rgb_to_snes(const m_color color);
unsigned short 	convertcolor_rgb_to_snes2(const uchar red, const uchar green, const uchar blue);

#ifdef __cplusplus
}
#endif

#endif
