#ifndef H_TILEPNG_H
#define H_TILEPNG_H

#include "tile.h"
#include "palette.h"

void export_tile_to_png(tile8 rawtile, const r_palette pal, const char* filename);

#endif
