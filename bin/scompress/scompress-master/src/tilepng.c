
#include <png.h>
#include <stdio.h>
#include <stdlib.h>
#include "tilepng.h"
#include <string.h>

char*	hexString(const char* str, const unsigned int size)
{
    char* toret = malloc(size * 3 + 1);

    unsigned int i;
    for (i = 0; i < size; i++)
    {
        sprintf(toret + i * 3, "%02X ", (unsigned char) str[i]);
    }
    toret[size * 3] = 0;
    return toret;
}

void export_tile_to_png(tile8 rawtile, const r_palette pal, const char* filename)
{
  FILE *fp = fopen(filename, "wb");
  png_structp png_ptr = png_create_write_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
  png_infop info_ptr = png_create_info_struct(png_ptr);
  png_init_io(png_ptr, fp);
  png_set_strip_alpha(png_ptr);
  png_read_update_info(png_ptr, info_ptr);
  
  png_color* png_palette = (png_color*) png_malloc(png_ptr, pal.size * sizeof(png_color));

  for (unsigned int i = 0; i < pal.size; i++)
  {
    png_palette[i].blue = pal.colors[i].blue;
    png_palette[i].green = pal.colors[i].green;
    png_palette[i].red = pal.colors[i].red;
  }
  png_set_IHDR(png_ptr, info_ptr, 8, 8,
         8, PNG_COLOR_TYPE_PALETTE, PNG_INTERLACE_NONE,
         PNG_COMPRESSION_TYPE_BASE, PNG_FILTER_TYPE_BASE);
  png_set_PLTE(png_ptr, info_ptr, png_palette, pal.size);
  
  
  
  png_write_info(png_ptr, info_ptr);
  png_set_packing(png_ptr);
  
  png_byte* row_pointers[8];
  for (unsigned int i = 0; i < 8; i++)
  {
    row_pointers[i] = (png_byte*) png_malloc(png_ptr, sizeof(png_byte));
    memcpy(row_pointers[i], rawtile.data + i * 8, 8);
  }

  png_write_image(png_ptr, row_pointers);
  
  png_write_end(png_ptr, info_ptr);
  png_destroy_write_struct(&png_ptr, &info_ptr);

  png_free(png_ptr, png_palette);
  png_free(png_ptr, row_pointers);
}


