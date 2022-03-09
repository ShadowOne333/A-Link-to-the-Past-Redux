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
//#include <stdio.h>

/*
 * LoRoM is quite easy
 */
int	lorom_snes_to_pc(const unsigned int snes_addr, char** info)
{
  unsigned char	bank = snes_addr >> 16;
  unsigned int	offset = snes_addr & 0x00FFFF;
  //printf("snes_addr: %X - Bank: %X - Offset: %X\n", snes_addr, bank, offset);
  
  // 80-FD is a mirror to the start
  if (bank >= 0x80 && bank <= 0xFD)
    bank -= 0x80;
  if (bank >= 0x00 && bank <= 0x3F && offset < 0x8000 && offset >= 0x2000)
  {
    *info = "SNES Reserved";
    return ROMMAPPING_LOCATION_SNES_RESERVED;
  }
  if ((((bank >= 0x70 && bank <= 0x7D) || bank == 0xFE || bank == 0xFF) && offset < 0x8000))
  {
    *info = "SRAM";
    return ROMMAPPING_LOCATION_SRAM;
  }
  if (bank == 0x7E || bank == 0x7F || 
     (bank >= 0x00 && bank <= 0x3F && offset < 0x2000)
  )
  {
    *info = "WRAM section";
    return ROMMAPPING_LOCATION_WRAM;
  }
  
  if (bank >= 0x40 && bank <= 0x6F && offset < 0x8000)
    return bank * 0x8000 + offset;
  if (bank == 0xFE || bank == 0xFF) // this work as if 7E was regular bank
    bank -= 0xFE - 0x7E;
  return bank * 0x8000 + (offset - 0x8000);
}

int	lorom_pc_to_snes(const unsigned int pc_addr)
{
   
   unsigned int bank = pc_addr / 0x8000;
   unsigned int offset = pc_addr % 0x8000 + 0x8000;
   
   //printf("pc_addr: %X - Bank: %X - Offset: %X\n", pc_addr, bank, offset);
   
   return (bank << 16) + offset;
}

int lorom_sram_pc_to_snes(const unsigned int pc_addr)
{   
    int chuck_nb = pc_addr / 0x8000;
    int rest = pc_addr % 0x8000;

    if (chuck_nb <= 0xD)
        return ((0x70 + chuck_nb) << 16) + rest;
    if (chuck_nb == 0xE || chuck_nb == 0xF)
        return ((0xF0 + chuck_nb) << 16) + rest;
    return -1;
}

int lorom_sram_snes_to_pc(const unsigned int snes_addr)
{
    unsigned char	bank = snes_addr >> 16;
    unsigned int	offset = snes_addr & 0x00FFFF;

    // F0-FD are mirror of 70-7D
    if (bank >= 0xF0 && bank <= 0xFD)
        bank -= 0x80;
    if (bank >= 0x70 && bank <= 0x7D && offset < 0x8000)
        return (bank - 0x70) * 0x8000 + offset;
    if ((bank == 0xFE || bank == 0xFF) && offset < 0x8000)
        return ((bank - 0xFE) + 0xE) * 0x8000 + offset;
    return -1;
}
