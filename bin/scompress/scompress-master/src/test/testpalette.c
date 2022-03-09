#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "CuTest.h"
#include "palette.h"

//0BBBBBGG GGGRRRRR

#define SNES_RED 0b0000000000011111;
#define SNES_BLUE 0b0111110000000000
#define SNES_GREEN 0b0000001111100000

unsigned int m_convert(m_color col)
{
  unsigned int toret;
  toret = col.red << 16;
  toret += col.green << 8;
  toret += col.blue;
  return toret;
}

void	print_color(m_color col)
{
  printf("%02X, %02X, %02X\n", col.red, col.green, col.blue);
}

void	testSNESColor(CuTest* tc)
{
  unsigned short red =    0b0000000000011111;
  unsigned short blue =   0b0111110000000000;
  unsigned short green =  0b0000001111100000;
  unsigned short purple = 0b0111110000011111;
  m_color	testcolor;

  testcolor = convertcolor_snes_to_rgb(red);
  CuAssertIntEquals_Msg(tc, "Testing red", 0xFF0000, m_convert(testcolor));
  testcolor = convertcolor_snes_to_rgb(green);
  CuAssertIntEquals_Msg(tc, "Testing green", 0x00FF00, m_convert(testcolor));
  testcolor = convertcolor_snes_to_rgb(blue);
  CuAssertIntEquals_Msg(tc, "Testing blue", 0x0000FF, m_convert(testcolor));
  testcolor = convertcolor_snes_to_rgb(purple);
  CuAssertIntEquals_Msg(tc, "Testing purple", 0xFF00FF, m_convert(testcolor));
}

void	testExtraction(CuTest* tc)
{
  // red, blue, green, purple
  char data[8] = {0x1F, 0x00,   0x00, 0x7C,   0xE0, 0x03,   0x1F, 0x7C};
  r_palette* pal = palette_extract(data, 0, 4);
  CuAssertIntEquals_Msg(tc, "Extracting 4 colors", 4, pal->size);
  CuAssertIntEquals_Msg(tc, "Color 1 is red", 0xFF0000, m_convert(pal->colors[0]));
  CuAssertIntEquals_Msg(tc, "Color 2 is blue", 0x0000FF, m_convert(pal->colors[1]));
  CuAssertIntEquals_Msg(tc, "Color 3 is green", 0x00FF00, m_convert(pal->colors[2]));
  CuAssertIntEquals_Msg(tc, "Color 4 is purple", 0xFF00FF, m_convert(pal->colors[3]));
}

void	testConvert(CuTest* tc)
{
  // red, blue, green, purple white
  char data[10] = {0x1F, 0x00,   0x00, 0x7C,   0xE0, 0x03,   0x1F, 0x7C,  0xFF, 0x1F};
  r_palette* pal = palette_extract(data, 0, 5);
  char* snes_string = palette_convert(*pal);
  CuAssertDataEquals_Msg(tc, "Test converting back to snes", 
			 data, 10, snes_string);
  free(snes_string);
}

CuSuite* StrUtilGetSuite() {
    CuSuite* suite = CuSuiteNew();
    SUITE_ADD_TEST(suite, testSNESColor);
    SUITE_ADD_TEST(suite, testExtraction);
    SUITE_ADD_TEST(suite, testConvert);
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