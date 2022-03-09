/*
 * Copyright 2016 - Sylvain "Skarsnik" Colinet
 */

#include <stddef.h>
#include <stdio.h>
#include <fcntl.h>
//#include <unistd.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>
#include "CuTest.h"

#include "compressions/stdnintendo.h"

// We use mode 2 (zelda3 gfx)

#define std_nintendo_decompress(a, b, c, d, e) std_nintendo_decompress(a, b, c, d, e, D_NINTENDO_C_MODE2)
#define std_nintendo_compress(a, b, c, d) std_nintendo_compress(a, b, c, d, D_NINTENDO_C_MODE2)

#define BUILD_HEADER(command, lenght) (command << 5) + (lenght - 1)

unsigned int c_size;

void	testValidCommandDecompress(CuTest* tc)
{
    unsigned int size;

    char simplecopy_i[4] = {BUILD_HEADER(0, 2), 42, 69, 0xFF};
    char simplecopy_o[2] = {42, 69};
    CuAssertDataEquals_Msg(tc, "Simple copy",
                           simplecopy_o, 2, std_nintendo_decompress(simplecopy_i, 0, 4, &size, &c_size));
    CuAssertIntEquals(tc, 2, size);

    char simpleset_i[4] = {BUILD_HEADER(1, 2), 42, 0xFF};
    char simpleset_o[2] = {42, 42};
    CuAssertDataEquals_Msg(tc, "Simple Set",
                           simpleset_o, 2, std_nintendo_decompress(simpleset_i, 0, 4, &size, &c_size));
    CuAssertIntEquals(tc, 2, size);

    //Command 2
    char simplecmd2_i[4] = {BUILD_HEADER(2, 6), 42, 69, 0xFF};
    char simplecmd2_o[6] = {42, 69, 42, 69, 42, 69};
    CuAssertDataEquals_Msg(tc, "Simple command 2 (ABAB..)",
                           simplecmd2_o, 6, std_nintendo_decompress(simplecmd2_i, 0, 4, &size, &c_size));
    CuAssertIntEquals(tc, 6, size);

    /* // Command 2 with uneven size
     char simplecmd2_p_i[4] = {BUILD_HEADER(2, 7), 42, 69, 0xFF};
     char simplecmd2_p_o[7] = {42, 69, 42, 69, 42, 69, 42};
     CuAssertDataEquals_Msg(tc, "Simple command 2 uneven size",
                simplecmd2_p_o, 7, alttp_alttp_decompress(simplecmd2_p_i, 0, &size));
     CuAssertIntEquals(tc, 7, size); */

    //Command 3
    char simplecmd3_i[3] = {BUILD_HEADER(3, 5), 42, 0xFF};
    char simplecmd3_o[7] = {42, 43, 44, 45, 46};
    CuAssertDataEquals_Msg(tc, "Simple command 3 inc (A4->ABCD)",
                           simplecmd3_o, 5,std_nintendo_decompress(simplecmd3_i, 0, 3, &size, &c_size));
    CuAssertIntEquals(tc, 5, size);

    //Command 4
    char simplecmd4_i[9] = {BUILD_HEADER(0, 4), 1, 2, 42, 69, BUILD_HEADER(4, 3), 01, 00, 0xFF};
    char simplecmd4_o[7] = {1, 2, 42, 69, 2, 42, 69};
    CuAssertDataEquals_Msg(tc, "Simple command 4, recopy data from u data",
                           simplecmd4_o, 7, std_nintendo_decompress(simplecmd4_i, 0, 9, &size, &c_size));
    CuAssertIntEquals(tc, 7, size);
}


void	testMixingCommand(CuTest* tc)
{
    unsigned int size;

    char random1_i[11] = {BUILD_HEADER(1, 3), 42, BUILD_HEADER(0, 4), 1, 2, 3, 4, BUILD_HEADER(2, 2), 11, 22, 0xFF};
    char random1_o[9] = {42, 42, 42, 1, 2, 3, 4, 11, 22};
    CuAssertDataEquals_Msg(tc, "Mixing command (0, 1, 2)",
                           random1_o, 9, std_nintendo_decompress(random1_i, 0, 11, &size, &c_size));
    CuAssertIntEquals(tc, 9, size);
}

void	testExtendedHeaderDecompress(CuTest* tc)
{
    unsigned int size;
    // Set 200 bytes to 42
    char	extendedcmd_i[4] = {0b11100100, 199, 42, 0xFF};
    char  *extendedcmd_o = malloc(200);
    for (int i = 0; i < 200; i++) {
        extendedcmd_o[i] = 42;
    }
    CuAssertDataEquals_Msg(tc, "Extended header test, test set size 200",
                           extendedcmd_o, 200, std_nintendo_decompress(extendedcmd_i, 0, 4, &size, &c_size));
    CuAssertIntEquals(tc, 200, size);
    free(extendedcmd_o);

    char extendedcmd2_i[] = {0b11100101, 0x8F, 42, 0xFF};
    extendedcmd_o = malloc(400);
    for (int i = 0; i < 400; i++) {
        extendedcmd_o[i] = 42;
    }
    CuAssertDataEquals_Msg(tc, "Extended header test, test set size 400",
                           extendedcmd_o, 400, std_nintendo_decompress(extendedcmd2_i, 0, 4, &size, &c_size));

}


void	testCompressionSingle(CuTest* tc)
{
    unsigned int compress_size;
    char single_set[5] = {42, 42, 42, 42, 42};
    char single_set_expected[3] = {BUILD_HEADER(1, 5), 42, 0xFF};

    CuAssertDataEquals_Msg(tc, "Single compression, single set",
                           single_set_expected, 3, std_nintendo_compress(single_set, 0, 5, &compress_size));
    CuAssertIntEquals(tc, 3, compress_size);

    char single_word[6] = {42, 1, 42, 1, 42, 1};
    char single_word_expected[4] = {BUILD_HEADER(2, 6), 42, 1, 0xFF};
    CuAssertDataEquals_Msg(tc, "Single compression, alternating byte",
                           single_word_expected, 4, std_nintendo_compress(single_word, 0, 6, &compress_size));

    char single_inc[3] = {1, 2, 3};
    char single_inc_expected[3] = {BUILD_HEADER(3, 3), 1, 0xFF};
    CuAssertDataEquals_Msg(tc, "Single compression, increasing byte",
                           single_inc_expected, 3, std_nintendo_compress(single_inc, 0, 3, &compress_size));

    char single_copy[4] = {3, 10, 7, 20};
    char single_copy_expected[6] = {BUILD_HEADER(0, 4), 3, 10, 7, 20, 0xFF};
    CuAssertDataEquals_Msg(tc, "Single compression, direct copy",
                           single_copy_expected, 6, std_nintendo_compress(single_copy, 0, 4, &compress_size));

    char single_copy_repeat[8] = {3, 10, 7, 20, 3, 10, 7, 20};
    char single_copy_repeat_expected[9] = {BUILD_HEADER(0, 4), 3, 10, 7, 20, BUILD_HEADER(4, 4), 0, 0, 0xFF};
    CuAssertDataEquals_Msg(tc, "Single compression, direct copy",
                           single_copy_repeat_expected, 9, std_nintendo_compress(single_copy_repeat, 0, 8, &compress_size));
    char overflow_inc[4] = {0xFE, 0xFF, 0, 1};
    char overflow_inc_expected[3] = {BUILD_HEADER(3, 4), 0xFE, 0xFF};
    CuAssertDataEquals_Msg(tc, "Inc overflowying",
                           overflow_inc_expected, 3, std_nintendo_compress(overflow_inc, 0, 4, &compress_size));


}

void	testSimpleMixCompression(CuTest* tc)
{
    unsigned int compress_size;
    char to_compress_string[] = {5, 5, 5, 5, 6, 7, 8, 9, 10, 11, 5, 2, 5, 2, 5, 2, 10, 11, 5, 2, 5, 2, 5, 2, 8, 10, 0, 5};

    char repeat_and_inc_copy_expected[] = {BUILD_HEADER(1, 4), 5, BUILD_HEADER(3, 6), 6, BUILD_HEADER(0, 1), 5, 0xFF};
    CuAssertDataEquals_Msg(tc, "Mixing, repeat, inc, trailing copy",
                           repeat_and_inc_copy_expected, 7, std_nintendo_compress(to_compress_string, 0, 11, &compress_size));
    char inc_word_intra_copy_expected[] = {BUILD_HEADER(3, 7), 5, BUILD_HEADER(2, 6), 5, 2, BUILD_HEADER(4, 8), 5, 0, 0xFF};
    CuAssertDataEquals_Msg(tc, "Mixing, inc, alternate, intra copy",
                           inc_word_intra_copy_expected, 9, std_nintendo_compress(to_compress_string, 3, 21, &compress_size));
    char all_expected[] = {BUILD_HEADER(1, 4), 5, BUILD_HEADER(3, 6), 6, BUILD_HEADER(2, 6), 5, 2, BUILD_HEADER(4, 8), 8, 0, BUILD_HEADER(0, 4), 8, 10, 0, 5, 0xFF};
    CuAssertDataEquals_Msg(tc, "Mixing, inc, alternate, intra copy",
                           all_expected, 16, std_nintendo_compress(to_compress_string, 0, 28, &compress_size));
}

void	testLenghtBorderCompression(CuTest* tc)
{
    char buffer[3000];
    unsigned int compress_size;

    for (unsigned int i = 0; i < 3000; i++)
        buffer[i] = 5;
    char extended_lenght_expected_42[] =  {0b11100100, 41, 5, 0xFF};
    char extended_lenght_expected_400[] = {0b11100101, 0x8F, 5, 0xFF};
    char extended_lenght_expected_1050[] = {0b11100111, 0xFF, 5, BUILD_HEADER(1, 26), 5, 0xFF};
    char extended_lenght_expected_2050[] = {0b11100111, 0xFF, 5, 0b11100111, 0xFF, 5, BUILD_HEADER(1, 2), 5, 0xFF};
    CuAssertDataEquals_Msg(tc, "Extended lenght, 42 repeat of 5",
                           extended_lenght_expected_42, 4, std_nintendo_compress(buffer, 0, 42, &compress_size));
    CuAssertDataEquals_Msg(tc, "Extended lenght, 400 repeat of 5",
                           extended_lenght_expected_400, 4, std_nintendo_compress(buffer, 0, 400, &compress_size));
    CuAssertDataEquals_Msg(tc, "Extended lenght, 1050 repeat of 5",
                           extended_lenght_expected_1050, 6, std_nintendo_compress(buffer, 0, 1050, &compress_size));
    CuAssertDataEquals_Msg(tc, "Extended lenght, 2050 repeat of 5",
                           extended_lenght_expected_2050, 9, std_nintendo_compress(buffer, 0, 2050, &compress_size));

    for (unsigned int i = 0; i < 3000; i += 2)
    {
        buffer[i] = 5;
        buffer[i + 1] = 6;
    }
    char hightlenght_word_1050[] = {0b11101011, 0xFF, 5, 6, BUILD_HEADER(2, 26), 5, 6, 0xFF};
    CuAssertDataEquals_Msg(tc, "Extended word copy",
                           hightlenght_word_1050, 8, std_nintendo_compress(buffer, 0, 1050, &compress_size));
}


void 	testExtendedheaderCompression(CuTest* tc)
{
    char buffer[100];
    unsigned int compressed_size;

    for (unsigned int i = 0; i < 42; i++)
    {
        buffer[i] = 42 - i;
    }
    char expected[45];
    expected[0] = 0b11100000;
    expected[1] = 41;
    memcpy(expected + 2, buffer, 42);
    expected[44] = 0xFF;
    char *piko = std_nintendo_compress(buffer, 0, 42, &compressed_size);
    CuAssertDataEquals_Msg(tc, "Extended header : a copy of 42",
                           expected, 45, piko);
    free(piko);
}

void	testCompressUncompress(CuTest* tc)
{
    char buffer[32];
    unsigned int compress_size;
    int fd = open("testsnestilebpp4.tl", O_RDONLY);

    if (fd == -1)
    {
        fprintf(stderr, "Can't open testsnestilebpp4.tl : %s\n", strerror(errno));
        return ;
    }
    read(fd, buffer, 32);
    char* comdata = std_nintendo_compress(buffer, 0, 32, &compress_size);
    CuAssertDataEquals_Msg(tc, "Compressing/Uncompress testtilebpp4.tl",
                           buffer, 32, std_nintendo_decompress(comdata, 0, 0, &compress_size, &c_size));
}

void    testDecompOW(CuTest* tc)
{
    char buffer[512];
    unsigned int compress_size;
    int fd = open("decompOW.bin", O_RDONLY);

    if (fd == -1)
    {
        fprintf(stderr, "Can't open decompOPW : %s\n", strerror(errno));
        return ;
    }
    read(fd, buffer, 256);
    std_nintendo_compression_sanity_check = true;
    char *decomp = std_nintendo_compress(buffer, 0, 256, &compress_size);
    printf("Compressing OW stuff : size : %d\n", compress_size);
    CuAssertDataEquals_Msg(tc, "Compress/umcompress overworld data", buffer, 256, std_nintendo_decompress(decomp, 0, 0, &compress_size, &c_size));
}

void    testRandom(CuTest* tc)
{
    char ocd2[] = { 
0x01, 0x08, 0x04, 0x22, 0x08,     0x0C, 0x00, 0x1B, 0x06, 0x00,     0x00, 0x07, 0x00, 0x06, 0x04,     0x03, 0x06, 0x08, 0x04, 0x22,     0x08, 0x0A, 0x06, 0x02, 0x1B,    0x06, 0x00, 0x0C, 0x06, 0x04,  0x04, 0x08, 
0x09, 0x23, 0x08, 0x23, 0x1B, 0x00, 0x06, 0x22, 0x1B, 0x07, 0x04, 0x0C, 0x16, 0x0C, 0x08, 0x08, 0x00, 0x0E, 0x22, 0x03, 0x23, 0x1B, 0x04, 0x05, 0x1B, 0x08, 0x10, 0x07, 0x83, 0x00, 0x22, 0x22, 
0x0A, 0x0B, 0x03, 0x03, 0x1B, 0x0E, 0x06, 0x03, 0x05, 0x08, 0x07, 0x08, 0x14, 0x01, 0x22, 0x1B, 0x0A, 0x15, 0x16, 0x03, 0x03, 0x07, 0x01, 0x08, 0x08, 0x05, 0x07, 0x00, 0x22, 0x1B, 0x23, 0x15, 
0x07, 0x03, 0x02, 0x07, 0x00, 0x02, 0x08, 0x07, 0x09, 0x22, 0x1B, 0x04, 0x0D, 0x1B, 0x16, 0x16, 0x0D, 0x23, 0x1B, 0x06, 0x00, 0x03, 0x05, 0x07, 0x02, 0x1B, 0x0D, 0x23, 0x1B, 0x01, 0x19, 0x03, 
0x43, 0x1B, 0x01, 0x16, 0x03, 0x05, 0x05, 0x00, 0x00, 0x06, 0x01, 0x07, 0x1B, 0x07, 0x07, 0x03, 0x10, 0x06, 0x0B, 0x00, 0x07, 0x07, 0x1B, 0x02, 0x1B, 0x0F, 0x05, 0x83, 0x00, 0x71, 0x07, 0x07, 
0x1B, 0x0B, 0x1B, 0x06, 0x1B, 0x07, 0x0B, 0x24, 0x1B, 0x22, 0x0F, 0x03, 0x1B, 0x19, 0x06, 0x01, 0x22, 0x1B, 0x09, 0x0B, 0x06, 0x06, 0x0F, 0x06, 0x06, 0x1B, 0x01, 0x09, 0x1B, 0x23, 0x02, 0x22, 
0x06, 0x03, 0x03, 0x03, 0x1B, 0x03, 0x24, 0x1B, 0x26, 0x02, 0x07, 0x0F, 0x01, 0x1B, 0x0D, 0x11, 0x15, 0x03, 0x06, 0x22, 0x01, 0x00, 0x0A, 0x22, 0x01, 0x08, 0x0E, 0x01, 0x01, 0x0F, 0x0D, 0x01, 
0x03, 0x02, 0x00, 0x84, 0x00, 0xED, 0x02, 0x0D, 0x01, 0x01, 0xFF, 
};
  printf("\n================\nTest Random\n==========\n");
  unsigned int piko, piko2;
#undef std_nintendo_decompress
#undef std_nintendo_compress
  char *uncompressed = std_nintendo_decompress(ocd2, 0, 0, &piko, &c_size, D_NINTENDO_C_MODE1);
  char *recomp = std_nintendo_compress(uncompressed, 0, piko, &c_size, D_NINTENDO_C_MODE1);
  char *cpiko = std_nintendo_decompress(recomp, 0, 0, &piko2, &c_size, D_NINTENDO_C_MODE1);
  CuAssertDataEquals_Msg(tc, "Random stuff", uncompressed, piko, cpiko);
  
  //256 this compress to a 259 string, weird
  char oversized[] = {
      0x4A,0xC1,0x73,0xBA,0x1D,0x1C,0xBF,0xC0,0xB3,0xB2,0x67,0x0B,0x4E,0xC2,0x55,0xEF,0x39,0xBD,0xAD,0xBE,0xB2,0xC3,0xB6,0x26,0x1D,0x1D,0xC4,0x0C,0x58,0xC5,0x55,0x2C,0xB2,0xC1,0xC2,0xC6,0xB6,0xC7,0x09,0x53,0x61,0x62,0x2D,0xC9,0xFE,0xC8,0x55,0xC9,0xCA,0xEA,0x0E,0xEE,0x09,0xCB,0x0E,0xF6,0x67,0xCC,0x1C,0x39,0x3A,0xCD,0x55,0xC9,0xCE,0xEF,0xA0,0x30,0x0E,0xF6,0xCF,0xB6,0xD0,0x25,0x20,0x91,0x8E,0xD1,0x55,0x2C,0x27,0xEB,0xD9,0x01,0x61,0x62,0xEE,0x09,0x2F,0x99,0x20,0x42,0x43,0xD2,0x55,0xEF,0xE8,0xD3,0x04,0x05,0x67,0xCC,0x30,0x0E,0xF6,0xA8,0xA9,0xD4,0xD5,0xD6,0x55,0xC9,0xEF,0x31,0x0A,0x55,0xDB,0x25,0x23,0xFB,0xAA,0xAC,0xAD,0x39,0xD7,0xD8,0xD9,0x09,0xDA,0xDB,0x49,0x42,0x43,0x44,0x1E,0x74,0xAA,0xB0,0xC2,0xC0,0xB3,0x30,0x07,0xDC,0xF1,0xF8,0xA0,0xDD,0x4E,0xDE,0x7A,0xDF,0x1C,0x9F,0x4B,0x9F,0x4B,0x11,0x30,0x8B,0x00,0x61,0xEB,0x57,0x58,0xE0,0x0B,0x1D,0x61,0x62,0x4B,0x23,0xFB,0xFF,0xA1,0x07,0xEF,0x28,0x29,0xFF,0x61,0x62,0x97,0x98,0x67,0xCC,0xB2,0x1E,0x74,0x9B,0xAA,0xFB,0xDA,0xDB,0x49,0xB2,0x67,0xCC,0xE1,0x2E,0xE2,0xE3,0xAA,0x7A,0xDF,0xBA,0xED,0x41,0xF1,0xE4,0x99,0x84,0xDB,0x25,0x38,0x39,0xBD,0xAD,0xE5,0x1D,0x97,0xE6,0x55,0x2C,0xE7,0xE8,0x43,0x44,0x45,0x43,0x44,0x42,0xDB,0xDA,0x45,0x43,0x44,0xE9,0x55,0x2C,0xF1,0xEA,0x72,0x73,0x4A,0xC1,0x73,0x4A,0xC1,0x73,0x4A,0xC1,0x73,0xEB,0x55,0x2C
  };
  recomp = std_nintendo_compress(oversized, 0, 256, &c_size, D_NINTENDO_C_MODE1);
  printf("Compressed size : %d\n", c_size);
  cpiko = std_nintendo_decompress(recomp, 0, 0, &piko, &c_size, D_NINTENDO_C_MODE1);
  CuAssertDataEquals_Msg(tc, "Oversized compressed", oversized, 256, cpiko);
}

CuSuite* StrUtilGetSuite() {
    CuSuite* suite = CuSuiteNew();
    SUITE_ADD_TEST(suite, testValidCommandDecompress);
    SUITE_ADD_TEST(suite, testExtendedHeaderDecompress);
    SUITE_ADD_TEST(suite, testMixingCommand);
    SUITE_ADD_TEST(suite, testCompressionSingle);
    SUITE_ADD_TEST(suite, testSimpleMixCompression);
    SUITE_ADD_TEST(suite, testLenghtBorderCompression);
    SUITE_ADD_TEST(suite, testExtendedheaderCompression);
    SUITE_ADD_TEST(suite, testCompressUncompress);
    SUITE_ADD_TEST(suite, testDecompOW);
    SUITE_ADD_TEST(suite, testRandom);
    return suite;
}


int	main(int ac, char* ag[])
{
    CuString *output = CuStringNew();
    CuSuite* suite = CuSuiteNew();

    CuSuiteAddSuite(suite, StrUtilGetSuite());
    CuSuiteRun(suite);
    CuSuiteSummary(suite, output);
    CuSuiteDetails(suite, output);
    printf("%s\n", output->buffer);
    return (suite->failCount != 0);
}
