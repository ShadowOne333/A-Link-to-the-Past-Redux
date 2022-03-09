#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "quintet1_compression.h"


int main(int argc, char *argv[])
{
    char buffer[50000];
    int start_offset;

    if (argc < 4 && argc > 5)
    {
        printf("Arguments: <op> <file name> <start> <size>\n");
        exit(1);
    }
    FILE* fd = fopen(argv[2], "r");
    if (fd == NULL)
    {
        fprintf(stderr, "Error opening file\n");
        exit(1);
    }
    sscanf(argv[3], "%X", &start_offset);
    fprintf(stderr, "Reading at offset %X\n", start_offset);
    fseek(fd, start_offset, SEEK_CUR);
    fread(&buffer, 50000, 1, fd);
    if (argv[1] == 0)
    {
        unsigned int decomp_size;
        char *uncompressed = quintet1_decompress(buffer, &decomp_size);
        fprintf(stderr, "Size decompressed : %d\n", decomp_size);
        write(1, uncompressed, decomp_size);
    } else {
        unsigned comp_size;
        fprintf(stderr, "Uncomp Size : %s\n", argv[4]);
        fprintf(stderr, "Uncomp Size : %d\n", atoi(argv[4]));
        char* compressed = quintet1_compress(buffer, atoi(argv[4]), &comp_size);
        FILE* ofd = fopen("ccdata.bin", "w");
        fwrite(compressed, 1, comp_size, ofd);
        fclose(ofd);
        free(compressed);
    }
    
    fclose(fd);
}
