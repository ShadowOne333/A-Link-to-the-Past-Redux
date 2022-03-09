#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "bitstream.h"


static char*	hexString(const char* str, const unsigned int size)
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

char* quintet1_decompress(const char* data, unsigned int *decomp_size)
{
    const int SEARCH_SIZE = 256;
    char                        sliding_window[SEARCH_SIZE];
    struct bitstream_reader_t   bitreader;
    char*                       decomp_data;

    bitstream_reader_init(&bitreader, data);
    unsigned char sbyte1 = bitstream_reader_read_u8(&bitreader);
    unsigned char sbyte2 = bitstream_reader_read_u8(&bitreader);
    *decomp_size = sbyte1 | (sbyte2 << 8);
    //fprintf(stderr, "Decomp size found : %d\n", *decomp_size);
    decomp_data = (char*) malloc(*decomp_size);
    memset(sliding_window, 0x20, SEARCH_SIZE);
    //fprintf(stderr, "%s\n", hexString(sliding_window, 256));
    unsigned int decomp_pos = 0;
    unsigned int window_pos = 0xEF;
    
    //fprintf(stderr, "Bitstream pos : %d\n", bitstream_reader_tell(&bitreader));
    while (decomp_pos < *decomp_size)
    {
        int cmd = bitstream_reader_read_bit(&bitreader);
        //fprintf(stderr, "cmd : %d\n", cmd);
        if (cmd == 0) //Past copy
        {
            int source_pos = bitstream_reader_read_u8(&bitreader);
            unsigned char lenght = (unsigned char) bitstream_reader_read_u64_bits(&bitreader, 4);
            lenght += 2;
            //fprintf(stderr, "pos : %d - Lenght : %d\n", source_pos, lenght);
            // Weird case with overflow of write
            if ((decomp_pos + lenght) >= *decomp_size) 
                lenght = (*decomp_size) - decomp_pos;
            for (unsigned int i = 0; i < lenght; i++)
            {
                decomp_data[decomp_pos] = sliding_window[source_pos];
                decomp_pos++;
                sliding_window[window_pos] = sliding_window[source_pos];
                window_pos++;
                window_pos %= SEARCH_SIZE;
                source_pos++;
                source_pos %= SEARCH_SIZE;
            }
        }
        if (cmd == 1) // Literal copy
        {
            unsigned char byte = bitstream_reader_read_u8(&bitreader);
            decomp_data[decomp_pos] = byte;
            decomp_pos++;
            sliding_window[window_pos] = byte;
            window_pos++;
            window_pos %= SEARCH_SIZE;
        }
        //fprintf(stderr, "Decomp data : %s\n", hexString(decomp_data, decomp_pos + 1));
    }
    return decomp_data;
}

#define MIN(a,b) ((a) < (b) ? (a) : (b))

char*   quintet1_compress(const char* uncomp_data, unsigned int uncomp_size, unsigned int *comp_size)
{
    
    const int   SEARCH_SIZE = 256;
    const int   search_buffer_size = SEARCH_SIZE + uncomp_size;
    struct      bitstream_writer_t bitwriter;

    unsigned int    data_pos = 0;
    unsigned int    comp_pos = 0;
    char*           comp_data = (char *) malloc(uncomp_size + 2);
    char*           search_buffer = (char*) malloc(search_buffer_size);
    unsigned int    current_index = SEARCH_SIZE;
    

    memset(search_buffer, 0x20, SEARCH_SIZE);
    memcpy(search_buffer + SEARCH_SIZE, uncomp_data, uncomp_size);

    bitstream_writer_init(&bitwriter, comp_data);
    bitstream_writer_write_u8(&bitwriter, uncomp_size & 0xFF);
    bitstream_writer_write_u8(&bitwriter, uncomp_size >> 8);
    
    while (current_index < search_buffer_size)
    {
        unsigned int best_index = 0;
        unsigned int best_lenght = 0;
        
        for (unsigned int i = 0; i < SEARCH_SIZE; i++)
        {
            unsigned int compare_limit =  MIN(15, search_buffer_size - current_index);
            unsigned int current_lenght = 0;
            for (unsigned int j = 0; j < compare_limit; j++)
            {
                if (search_buffer[current_index - SEARCH_SIZE + i + j] == search_buffer[current_index + j])
                    current_lenght++;
                else
                    break;
            }
            if (current_lenght > best_lenght)
            {
                best_index = current_index - SEARCH_SIZE + i;
                best_lenght = current_lenght;
            }
            
        }
        if (best_lenght >= 2)
        {
            best_index = (best_index + 0xEF) & 0xFF;
            bitstream_writer_write_bit(&bitwriter, 0);
            bitstream_writer_write_u64_bits(&bitwriter, best_index, 8);
            bitstream_writer_write_u64_bits(&bitwriter, best_lenght - 2, 4);
            current_index += best_lenght;
        } else {
            bitstream_writer_write_bit(&bitwriter, 1);
            bitstream_writer_write_u8(&bitwriter, search_buffer[current_index]);
            current_index++;
        }
    }
    free(search_buffer);
    *comp_size = bitstream_writer_size_in_bytes(&bitwriter);
    return comp_data;
}
