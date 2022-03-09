#define _GNU_SOURCE
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "CuTest.h"

#include "rominfo.h"


void    testROMInfo(CuTest* cu)
{
    char simple_header[32];
    memset(simple_header, 0, 21);
    memcpy(simple_header, "Test LoROM", strlen("Test LoROM"));
    simple_header[21] = 0b00000000;
    struct rom_infos* tocheck = get_rom_info(simple_header);
    CuAssertStrEquals(cu, "Test LoROM", tocheck->title);
    CuAssertIntEquals(cu, LoROM, tocheck->type);
    CuAssertTrue(cu, !tocheck->fastrom);

    simple_header[21] = 0b00110000;
    tocheck = get_rom_info(simple_header);
    CuAssertIntEquals(cu, LoROM, tocheck->type);
    CuAssertTrue(cu, tocheck->fastrom);

    simple_header[21] = 0b00110001;
    tocheck = get_rom_info(simple_header);
    CuAssertIntEquals(cu, HiROM, tocheck->type);
    CuAssertTrue(cu, tocheck->fastrom);

    simple_header[21] = 0b00110111;
    tocheck = get_rom_info(simple_header);
    CuAssertIntEquals(cu, ExHiROM, tocheck->type);
    
    free(tocheck);
}

CuSuite* StrUtilGetSuite() {
    CuSuite* suite = CuSuiteNew();
    SUITE_ADD_TEST(suite, testROMInfo);
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