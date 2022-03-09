#define _GNU_SOURCE
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "CuTest.h"
#include "rommapping.h"


#define asprintf my_asprintf

static char*   my_asprintf(const char* fmt, ...)
{
    va_list args;
    va_start(args, fmt);

    unsigned int needed = vsnprintf(NULL, 0, fmt, args);
    char  *buffer = malloc(needed + 1);
    vsnprintf(buffer, needed + 1, fmt, args);
    return buffer;
}

typedef struct {
  int snes_addr;
  int pc_addr;
} addr_test_t;


addr_test_t tab_lorom[] = {
  {0x008200, 0x200},
  {0x2FA451, 0x17A451},
  {0x5B8001, 0x2D8001},
  {0x7D8001, 0x3E8001}
};

addr_test_t tab_lorom_mirror[] = {
  {0x5B0001, 0x2D8001},
  {0x808200, 0x200},
  {0xAFA451, 0x17A451},
  {0xDB8001, 0x2D8001},
  {0xDB0001, 0x2D8001},
  {0xFD8001, 0x3E8001}
};


addr_test_t tab_hirom[] = {
  {0x008200, 0x8200},
  {0x109500, 0x109500},
  {0x24AAAA, 0x24AAAA},
  {0x451111, 0x051111}
};

addr_test_t tab_hirom_mirror[] = {
  {0x808200, 0x8200},
  {0xAFA451, 0x2FA451},
  {0xC10200, 0x010200}
};

void	testLoROMToPC(CuTest* tc)
{
  
  
    for (int i = 0; i < 4; i++)
    {
      char *tmp = NULL;
      asprintf(&tmp, "LoROM: Simple test %02X:%04X -> %X", tab_lorom[i].snes_addr >> 16, tab_lorom[i].snes_addr & 0x00FFFF, tab_lorom[i].pc_addr);
      CuAssertIntEquals_Msg(tc, tmp, tab_lorom[i].pc_addr, rommapping_snes_to_pc(tab_lorom[i].snes_addr, LoROM, false));
    }
    
    for (int i = 0; i < 6; i++)
    {
      char *tmp = NULL;
      asprintf(&tmp, "LoROM: Mirroring test %02X:%04X -> %X", tab_lorom_mirror[i].snes_addr >> 16, tab_lorom_mirror[i].snes_addr & 0x00FFFF, tab_lorom_mirror[i].pc_addr);
      CuAssertIntEquals_Msg(tc, tmp, tab_lorom_mirror[i].pc_addr, rommapping_snes_to_pc(tab_lorom_mirror[i].snes_addr, LoROM, false));
    }

    // Extra

    CuAssertIntEquals_Msg(tc, "LoROM: Special case FF:8001 -> 3F8001",
                          0x3F8001, rommapping_snes_to_pc(0xFF8001, LoROM, false));
    CuAssertIntEquals_Msg(tc, "LoROM: Special case FE:8001 -> 3F0001",
                          0x3F0001, rommapping_snes_to_pc(0xFE8001, LoROM, false));

}

void	testLoROMToPCErrors(CuTest *tc)
{
    CuAssertIntEquals_Msg(tc, "LoROM: Errors 02:0200 -> WRAM",
			  ROMMAPPING_LOCATION_WRAM, rommapping_snes_to_pc(0x020200, LoROM, false));
    CuAssertIntEquals_Msg(tc, "LoROM: Errors 01:4000 -> Reserved",
                          ROMMAPPING_LOCATION_SNES_RESERVED, rommapping_snes_to_pc(0x014000, LoROM, false));
    CuAssertIntEquals_Msg(tc, "LoROM: Errors 08:0000 -> WRAM",
                          ROMMAPPING_LOCATION_WRAM, rommapping_snes_to_pc(0x080000, LoROM, false));
    CuAssertIntEquals_Msg(tc, "LoROM: Errors 71:4000 -> SRAM",
                          ROMMAPPING_LOCATION_SRAM, rommapping_snes_to_pc(0x714000, LoROM, false));
    CuAssertIntEquals_Msg(tc, "LoROM: Errors FE:4000 -> SRAM",
                          ROMMAPPING_LOCATION_SRAM, rommapping_snes_to_pc(0xFE4000, LoROM, false));
    CuAssertIntEquals_Msg(tc, "LoROM: Errors 7E:8000 -> WRAM",
                          ROMMAPPING_LOCATION_WRAM, rommapping_snes_to_pc(0x7E8000, LoROM, false));
}

void	testPCToLoROM(CuTest *tc)
{
  for (int i = 0; i < 4; i++)
    {
      char *tmp = NULL;
      asprintf(&tmp, "Pc to LoROM: Simple test %X -> %02X:%04X", tab_lorom[i].pc_addr, tab_lorom[i].snes_addr >> 16, tab_lorom[i].snes_addr & 0x00FFFF);
      CuAssertIntEquals_Msg(tc, tmp, tab_lorom[i].snes_addr, rommapping_pc_to_snes(tab_lorom[i].pc_addr, LoROM, false));
    }
}

void	testHiROMtoPC(CuTest* tc)
{
  for (int i = 0; i < 4; i++)
    {
      char *tmp = NULL;
      asprintf(&tmp, "HiROM: Simple test %02X:%04X -> %X", tab_hirom[i].snes_addr >> 16, tab_hirom[i].snes_addr & 0x00FFFF, tab_hirom[i].pc_addr);
      CuAssertIntEquals_Msg(tc, tmp, tab_hirom[i].pc_addr, rommapping_snes_to_pc(tab_hirom[i].snes_addr, HiROM, false));
    }
  for (int i = 0; i < 3; i++)
    {
      char *tmp = NULL;
      asprintf(&tmp, "HiROM: Mirroring test %02X:%04X -> %X", tab_hirom_mirror[i].snes_addr >> 16, tab_hirom_mirror[i].snes_addr & 0x00FFFF, tab_hirom_mirror[i].pc_addr);
      CuAssertIntEquals_Msg(tc, tmp, tab_hirom_mirror[i].pc_addr, rommapping_snes_to_pc(tab_hirom_mirror[i].snes_addr, HiROM, false));
    }
}

void	testHiROMtoPCErrors(CuTest* tc)
{
  CuAssertIntEquals_Msg(tc, "HiROM: Errors 02:0200 -> WRAM",
			  ROMMAPPING_LOCATION_WRAM, rommapping_snes_to_pc(0x020200, HiROM, false));
  CuAssertIntEquals_Msg(tc, "HiROM: Errors 01:4000 -> Reserved",
                          ROMMAPPING_LOCATION_SNES_RESERVED, rommapping_snes_to_pc(0x014000, HiROM, false));
  CuAssertIntEquals_Msg(tc, "HiROM: Errors 08:0000 -> WRAM",
                          ROMMAPPING_LOCATION_WRAM, rommapping_snes_to_pc(0x080000, HiROM, false));
  CuAssertIntEquals_Msg(tc, "HiROM: Errors 25:6050 -> SRAM",
                          ROMMAPPING_LOCATION_SRAM, rommapping_snes_to_pc(0x256050, HiROM, false));
  CuAssertIntEquals_Msg(tc, "HiROM: Errors 7E:8000 -> WRAM",
                          ROMMAPPING_LOCATION_WRAM, rommapping_snes_to_pc(0x7E8000, HiROM, false));
}

void    testPCToHiROM(CuTest* tc)
{
  for (int i = 0; i < 4; i++)
    {
      char *tmp = NULL;
      asprintf(&tmp, "Pc to HiROM: Simple test %X -> %02X:%04X", tab_hirom[i].pc_addr, tab_hirom[i].snes_addr >> 16, tab_hirom[i].snes_addr & 0x00FFFF);
      CuAssertIntEquals_Msg(tc, tmp, tab_hirom[i].snes_addr, rommapping_pc_to_snes(tab_hirom[i].pc_addr, HiROM, false));
    }
}

addr_test_t tab_lorom_sram[] = {
    {0x705000, 0x5000},
    {0x716000, 0xE000},
    {0x7D0500, 0x68500},
    {0xFE0550, 0x70550}
};

void    testSRAMLoROMToPC(CuTest* tc)
{
    for (int i = 0; i < 4; i++)
    {
      char *tmp = NULL;
      asprintf(&tmp, "SRAM SNES to PC LoROM: Simple test %02X:%04X -> %X", tab_lorom_sram[i].snes_addr >> 16, tab_lorom_sram[i].snes_addr & 0x00FFFF, tab_lorom_sram[i].pc_addr);
      CuAssertIntEquals_Msg(tc, tmp, tab_lorom_sram[i].pc_addr, rommapping_sram_snes_to_pc(tab_lorom_sram[i].snes_addr, LoROM, false));
    }
}

void    testSRAMPCToLoROM(CuTest* tc)
{
    for (int i = 0; i < 4; i++)
    {
      char *tmp = NULL;
      asprintf(&tmp, "Pc to SRAM LoROM: Simple test %X -> %02X:%04X", tab_lorom_sram[i].pc_addr, tab_lorom_sram[i].snes_addr >> 16, tab_lorom_sram[i].snes_addr & 0x00FFFF);
      CuAssertIntEquals_Msg(tc, tmp, tab_lorom_sram[i].snes_addr, rommapping_sram_pc_to_snes(tab_lorom_sram[i].pc_addr, LoROM, false));
    }
}

addr_test_t tab_hirom_sram[] = {
    {0x206050, 0x50},
    {0x287000, 0x11000}
};

void    testSRAMHiROMToPC(CuTest* tc)
{
    for (int i = 0; i < 2; i++)
    {
      char *tmp = NULL;
      asprintf(&tmp, "SRAM SNES to PC HiROM: Simple test %02X:%04X -> %X", tab_hirom_sram[i].snes_addr >> 16, tab_hirom_sram[i].snes_addr & 0x00FFFF, tab_hirom_sram[i].pc_addr);
      CuAssertIntEquals_Msg(tc, tmp, tab_hirom_sram[i].pc_addr, rommapping_sram_snes_to_pc(tab_hirom_sram[i].snes_addr, HiROM, false));
    }
}


void    testSRAMPCToHiROM(CuTest* tc)
{
    for (int i = 0; i < 2; i++)
    {
      char *tmp = NULL;
      asprintf(&tmp, "Pc to SRAM LoROM: Simple test %X -> %02X:%04X", tab_hirom_sram[i].pc_addr, tab_hirom_sram[i].snes_addr >> 16, tab_hirom_sram[i].snes_addr & 0x00FFFF);
      CuAssertIntEquals_Msg(tc, tmp, tab_hirom_sram[i].snes_addr, rommapping_sram_pc_to_snes(tab_hirom_sram[i].pc_addr, HiROM, false));
    }
}


CuSuite* StrUtilGetSuite() {
    CuSuite* suite = CuSuiteNew();
    SUITE_ADD_TEST(suite, testLoROMToPC);
    SUITE_ADD_TEST(suite, testLoROMToPCErrors);
    SUITE_ADD_TEST(suite, testPCToLoROM);
    SUITE_ADD_TEST(suite, testHiROMtoPC);
    SUITE_ADD_TEST(suite, testHiROMtoPCErrors);
    SUITE_ADD_TEST(suite, testPCToHiROM);
    SUITE_ADD_TEST(suite, testSRAMLoROMToPC);
    SUITE_ADD_TEST(suite, testSRAMPCToLoROM);
    SUITE_ADD_TEST(suite, testSRAMHiROMToPC);
    SUITE_ADD_TEST(suite, testSRAMPCToHiROM);

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
