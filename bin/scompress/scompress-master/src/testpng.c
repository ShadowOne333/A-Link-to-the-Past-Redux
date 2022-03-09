#include <errno.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include "tilepng.h"

int	main(int ac, char* ag[])
{
  tile8	tile;
  char buffer[24];
  
  int fd = open("test/testsnestilebpp3.tl", O_RDONLY);
  
  if (fd == -1) 
  {
    fprintf(stderr, "Can't open testsnestilebpp3.tl : %s\n", strerror(errno));
    return 1;
  }
  read(fd, buffer, 24);
  tile = unpack_bpp3_tile(buffer, 0);
  
  palette* pal = palette_create(8, 0);
  
  for (unsigned int i = 0; i < 8; i++)
  {
    pal->colors[i].red = i * 30;
    pal->colors[i].blue = i * 30;
    pal->colors[i].green = i * 30;
  }
  export_tile_to_png(tile, *pal, "exportedtile.png");
  return 0;
}