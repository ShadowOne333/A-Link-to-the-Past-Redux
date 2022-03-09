/*
Copyright 2016 Sylvain "Skarsnik" Colinet

 This file is part of the SkarAlttp project.

    SkarAlttp is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Foobar is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with SkarAlttp.  If not, see <http://www.gnu.org/licenses/>
    */

#include "rommapping.h"

int	hirom_snes_to_pc(const unsigned int snes_addr, char **info)
{
  unsigned char	bank = snes_addr >> 16;
  unsigned int	offset = snes_addr & 0x00FFFF;
  
  // 80-FD is a mirror to the start
  if (bank >= 0x80 && bank <= 0xFD)
    bank -= 0x80;
  
  if ((bank >= 0x00 && bank <= 0x1F && offset < 0x8000 && offset >= 0x2000) ||
      (bank >= 0x20 && bank <= 0x3F && offset < 0x6000 && offset >= 0x2000)
  )
  {
    *info = "SNES Reserved";
    return ROMMAPPING_LOCATION_SNES_RESERVED;
  }
  if (bank >= 0x20 && bank <= 0x3F && offset >= 0x6000 && offset < 0x8000)
  {
    *info = "SRAM";
    return ROMMAPPING_LOCATION_SRAM;
  }
  if ((bank == 0x7E || bank == 0x7F) ||
      (bank >= 0x00 && bank <= 0x3F && offset < 0x2000))
  {
    *info = "WRAM Section";
    return ROMMAPPING_LOCATION_WRAM;
  }
/*#include <stdio.h>
  printf("%02X:%04X\n", bank, offset);*/
  if (bank >= 0xFE)
    bank -= 0xFE - 0x3E;
  if (bank >= 0x40 && bank <= 0x7D)
    bank -= 0x40;
  return (bank << 16) + offset;
}

int	hirom_pc_to_snes(const unsigned int pc_addr)
{
  unsigned int bank = pc_addr >> 16;
  unsigned int offset = pc_addr & 0x00FFFF;

  //printf("%02X:%04X\n", bank, offset);
  if (bank <= 0x3F && offset >= 0x8000)
      return pc_addr;
  if (bank <= 0x3D)
      return pc_addr + 0x400000;
  return pc_addr + 0xFE0000;
}

int	hirom_sram_snes_to_pc(const unsigned int snes_addr)
{
    unsigned int bank = snes_addr >> 16;
    unsigned int offset = snes_addr & 0x00FFFF;

    if (bank >= 0x20 && bank <= 0x3F && offset >= 0x6000 && offset < 0x8000)
        return (bank - 0x20) * 0x2000 + (offset - 0x6000);
    return -1;
}

int	hirom_sram_pc_to_snes(const unsigned int pc_addr)
{
    unsigned int chuck_nb = pc_addr / 0x2000;
    unsigned int rest = pc_addr % 0x2000;

    return ((0x20 + chuck_nb) << 16) + 0x6000 + rest;
}

