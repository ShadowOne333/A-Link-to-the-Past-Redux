/*
 * Copyright 2016 - Sylvain "Skarsnik" Colinet
 */

#include <stddef.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>
#include "CuTest.h"

#include "compressions/alttpcompression.h"


#define BUILD_HEADER(command, lenght) (command << 5) + (lenght - 1)

unsigned int c_size;

void	testValidCommandDecompress(CuTest* tc)
{
    unsigned int size;

    char simplecopy_i[4] = {BUILD_HEADER(0, 2), 42, 69, 0xFF};
    char simplecopy_o[2] = {42, 69};
    CuAssertDataEquals_Msg(tc, "Simple copy",
                           simplecopy_o, 2, alttp_decompress_gfx(simplecopy_i, 0, 4, &size, &c_size));
    CuAssertIntEquals(tc, 2, size);

    char simpleset_i[4] = {BUILD_HEADER(1, 2), 42, 0xFF};
    char simpleset_o[2] = {42, 42};
    CuAssertDataEquals_Msg(tc, "Simple Set",
                           simpleset_o, 2, alttp_decompress_gfx(simpleset_i, 0, 4, &size, &c_size));
    CuAssertIntEquals(tc, 2, size);

    //Command 2
    char simplecmd2_i[4] = {BUILD_HEADER(2, 6), 42, 69, 0xFF};
    char simplecmd2_o[6] = {42, 69, 42, 69, 42, 69};
    CuAssertDataEquals_Msg(tc, "Simple command 2 (ABAB..)",
                           simplecmd2_o, 6, alttp_decompress_gfx(simplecmd2_i, 0, 4, &size, &c_size));
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
                           simplecmd3_o, 5,alttp_decompress_gfx(simplecmd3_i, 0, 3, &size, &c_size));
    CuAssertIntEquals(tc, 5, size);

    //Command 4
    char simplecmd4_i[9] = {BUILD_HEADER(0, 4), 1, 2, 42, 69, BUILD_HEADER(4, 3), 01, 00, 0xFF};
    char simplecmd4_o[7] = {1, 2, 42, 69, 2, 42, 69};
    CuAssertDataEquals_Msg(tc, "Simple command 4, recopy data from u data",
                           simplecmd4_o, 7, alttp_decompress_gfx(simplecmd4_i, 0, 9, &size, &c_size));
    CuAssertIntEquals(tc, 7, size);
}


void	testMixingCommand(CuTest* tc)
{
    unsigned int size;

    char random1_i[11] = {BUILD_HEADER(1, 3), 42, BUILD_HEADER(0, 4), 1, 2, 3, 4, BUILD_HEADER(2, 2), 11, 22, 0xFF};
    char random1_o[9] = {42, 42, 42, 1, 2, 3, 4, 11, 22};
    CuAssertDataEquals_Msg(tc, "Mixing command (0, 1, 2)",
                           random1_o, 9, alttp_decompress_gfx(random1_i, 0, 11, &size, &c_size));
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
                           extendedcmd_o, 200, alttp_decompress_gfx(extendedcmd_i, 0, 4, &size, &c_size));
    CuAssertIntEquals(tc, 200, size);
    free(extendedcmd_o);

    char extendedcmd2_i[] = {0b11100101, 0x8F, 42, 0xFF};
    extendedcmd_o = malloc(400);
    for (int i = 0; i < 400; i++) {
        extendedcmd_o[i] = 42;
    }
    CuAssertDataEquals_Msg(tc, "Extended header test, test set size 400",
                           extendedcmd_o, 400, alttp_decompress_gfx(extendedcmd2_i, 0, 4, &size, &c_size));

}


void	testCompressionSingle(CuTest* tc)
{
    unsigned int compress_size;
    char single_set[5] = {42, 42, 42, 42, 42};
    char single_set_expected[3] = {BUILD_HEADER(1, 5), 42, 0xFF};

    CuAssertDataEquals_Msg(tc, "Single compression, single set",
                           single_set_expected, 3, alttp_compress_gfx(single_set, 0, 5, &compress_size));
    CuAssertIntEquals(tc, 3, compress_size);

    char single_word[6] = {42, 1, 42, 1, 42, 1};
    char single_word_expected[4] = {BUILD_HEADER(2, 6), 42, 1, 0xFF};
    CuAssertDataEquals_Msg(tc, "Single compression, alternating byte",
                           single_word_expected, 4, alttp_compress_gfx(single_word, 0, 6, &compress_size));

    char single_inc[3] = {1, 2, 3};
    char single_inc_expected[3] = {BUILD_HEADER(3, 3), 1, 0xFF};
    CuAssertDataEquals_Msg(tc, "Single compression, increasing byte",
                           single_inc_expected, 3, alttp_compress_gfx(single_inc, 0, 3, &compress_size));

    char single_copy[4] = {3, 10, 7, 20};
    char single_copy_expected[6] = {BUILD_HEADER(0, 4), 3, 10, 7, 20, 0xFF};
    CuAssertDataEquals_Msg(tc, "Single compression, direct copy",
                           single_copy_expected, 6, alttp_compress_gfx(single_copy, 0, 4, &compress_size));

    char single_copy_repeat[8] = {3, 10, 7, 20, 3, 10, 7, 20};
    char single_copy_repeat_expected[9] = {BUILD_HEADER(0, 4), 3, 10, 7, 20, BUILD_HEADER(4, 4), 0, 0, 0xFF};
    CuAssertDataEquals_Msg(tc, "Single compression, direct copy",
                           single_copy_repeat_expected, 9, alttp_compress_gfx(single_copy_repeat, 0, 8, &compress_size));
    char overflow_inc[4] = {0xFE, 0xFF, 0, 1};
    char overflow_inc_expected[3] = {BUILD_HEADER(3, 4), 0xFE, 0xFF};
    CuAssertDataEquals_Msg(tc, "Inc overflowying",
                           overflow_inc_expected, 3, alttp_compress_gfx(overflow_inc, 0, 4, &compress_size));


}

void	testSimpleMixCompression(CuTest* tc)
{
    unsigned int compress_size;
    char to_compress_string[] = {5, 5, 5, 5, 6, 7, 8, 9, 10, 11, 5, 2, 5, 2, 5, 2, 10, 11, 5, 2, 5, 2, 5, 2, 8, 10, 0, 5};

    char repeat_and_inc_copy_expected[] = {BUILD_HEADER(1, 4), 5, BUILD_HEADER(3, 6), 6, BUILD_HEADER(0, 1), 5, 0xFF};
    CuAssertDataEquals_Msg(tc, "Mixing, repeat, inc, trailing copy",
                           repeat_and_inc_copy_expected, 7, alttp_compress_gfx(to_compress_string, 0, 11, &compress_size));
    char inc_word_intra_copy_expected[] = {BUILD_HEADER(3, 7), 5, BUILD_HEADER(2, 6), 5, 2, BUILD_HEADER(4, 8), 5, 0, 0xFF};
    CuAssertDataEquals_Msg(tc, "Mixing, inc, alternate, intra copy",
                           inc_word_intra_copy_expected, 9, alttp_compress_gfx(to_compress_string, 3, 21, &compress_size));
    char all_expected[] = {BUILD_HEADER(1, 4), 5, BUILD_HEADER(3, 6), 6, BUILD_HEADER(2, 6), 5, 2, BUILD_HEADER(4, 8), 8, 0, BUILD_HEADER(0, 4), 8, 10, 0, 5, 0xFF};
    CuAssertDataEquals_Msg(tc, "Mixing, inc, alternate, intra copy",
                           all_expected, 16, alttp_compress_gfx(to_compress_string, 0, 28, &compress_size));
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
                           extended_lenght_expected_42, 4, alttp_compress_gfx(buffer, 0, 42, &compress_size));
    CuAssertDataEquals_Msg(tc, "Extended lenght, 400 repeat of 5",
                           extended_lenght_expected_400, 4, alttp_compress_gfx(buffer, 0, 400, &compress_size));
    CuAssertDataEquals_Msg(tc, "Extended lenght, 1050 repeat of 5",
                           extended_lenght_expected_1050, 6, alttp_compress_gfx(buffer, 0, 1050, &compress_size));
    CuAssertDataEquals_Msg(tc, "Extended lenght, 2050 repeat of 5",
                           extended_lenght_expected_2050, 9, alttp_compress_gfx(buffer, 0, 2050, &compress_size));

    for (unsigned int i = 0; i < 3000; i += 2)
    {
        buffer[i] = 5;
        buffer[i + 1] = 6;
    }
    char hightlenght_word_1050[] = {0b11101011, 0xFF, 5, 6, BUILD_HEADER(2, 26), 5, 6, 0xFF};
    CuAssertDataEquals_Msg(tc, "Extended word copy",
                           hightlenght_word_1050, 8, alttp_compress_gfx(buffer, 0, 1050, &compress_size));
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
    char *piko = alttp_compress_gfx(buffer, 0, 42, &compressed_size);
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
    char* comdata = alttp_compress_gfx(buffer, 0, 32, &compress_size);
    CuAssertDataEquals_Msg(tc, "Compressing/Uncompress testtilebpp4.tl",
                           buffer, 32, alttp_decompress_gfx(comdata, 0, 0, &compress_size, &c_size));
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
