#ifndef H_QUINTET1_COMPRESSION_H
#define H_QUINTET1_COMPRESSION_H


char* quintet1_decompress(const char* data, unsigned int *decomp_size);
char*   quintet1_compress(const char* uncomp_data, unsigned int uncomp_size, unsigned int *comp_size);

#endif
