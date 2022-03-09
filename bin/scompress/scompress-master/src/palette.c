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

#include <stdlib.h>
#include <string.h>
#include "palette.h"

// Inspired/copied from https://wiki.superfamicom.org/snes/show/Palettes

r_palette* palette_create(const unsigned int size, const unsigned int id)
{
  r_palette *new_pal = (r_palette*) malloc(sizeof(r_palette));
  new_pal->colors = (m_color*) malloc(sizeof(m_color) * size);
  new_pal->id = id;
  new_pal->size = size;
  return new_pal;
}

void		palette_free(r_palette* tofree)
{
  free(tofree->colors);
  free(tofree);
}


r_palette *palette_extract(const char* data, const unsigned int offset, const unsigned int palette_size)
{
  r_palette* toret = palette_create(palette_size, 0);
  unsigned colnum = 0;
  for (int i = 0; i < palette_size * 2; i += 2)
  {
    unsigned short snes_color;
    snes_color = ((uchar) data[offset + i + 1]) << 8;
    snes_color = snes_color | ((uchar) data[offset + i]);
    toret->colors[colnum] = convertcolor_snes_to_rgb(snes_color);
    colnum++;
  }
  return toret;
}

char*		palette_convert(const r_palette pal)
{
  char* toret = (char*) malloc(pal.size * 2);
  for (unsigned int i = 0; i < pal.size; i++)
  {
    unsigned short snes_data = convertcolor_rgb_to_snes(pal.colors[i]);
    toret[i * 2] = snes_data & 0xFF;
    toret[i * 2 + 1] = snes_data >> 8;
  }
  return toret;
}

m_color convertcolor_snes_to_rgb(const unsigned short snes_color)
{
  m_color toret;
  
  toret.red = ((snes_color       ) % 32) * 8;
  toret.green = ((snes_color /   32) % 32) * 8;
  toret.blue = ((snes_color / 1024) % 32) * 8;

  toret.red = toret.red + toret.red / 32;
  toret.green = toret.green + toret.green / 32;
  toret.blue = toret.blue + toret.blue / 32;
  return toret;
}

unsigned short 	convertcolor_rgb_to_snes(const m_color color)
{
  return convertcolor_rgb_to_snes2(color.red, color.green, color.blue);
}

unsigned short 	convertcolor_rgb_to_snes2(const uchar red, const uchar green, const uchar blue)
{
  uchar R = red / 8;
  uchar G = green / 8;
  uchar B = blue / 8;

  return B * 1024 + G * 32 + R;
}
