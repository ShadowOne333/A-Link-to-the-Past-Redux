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
#include <string.h>
#include <stdlib.h>

char *rommapping_error_text;

int	rommapping_snes_to_pc(const unsigned int snes_addr, enum rom_type rom_type, bool header)
{
  int	pc_addr;
  char	*info;
  switch (rom_type)
  {
    case LoROM:
      pc_addr = lorom_snes_to_pc(snes_addr, &info);
      break;
    case HiROM:
      pc_addr = hirom_snes_to_pc(snes_addr, &info);
      break;
    default:
      return -1;
  }

  if (pc_addr < 0) {
    rommapping_error_text = (char *) malloc(strlen(info) + 1);
    strcpy(rommapping_error_text, info);
    return pc_addr;
  }
  if (header)
    pc_addr += 0x200;
  return pc_addr;
}

int	rommapping_pc_to_snes(const unsigned int pc_addr, enum rom_type rom_type, bool header)
{
  int snes_addr;
  
  switch (rom_type)
  {
      case LoROM:
        snes_addr = lorom_pc_to_snes(header ? pc_addr - 0x200 : pc_addr);
        break;
      case HiROM:
        snes_addr = hirom_pc_to_snes(header ? pc_addr - 0x200 : pc_addr);
        break;
      default:
        return -1;
  }
  return snes_addr;
}


int rommapping_sram_snes_to_pc(const unsigned int snes_addr, enum rom_type rom_type, bool header)
{
  int pc_addr;
  switch (rom_type)
  {
    case LoROM:
      pc_addr = lorom_sram_snes_to_pc(snes_addr);
      break;
    case HiROM:
      pc_addr = hirom_sram_snes_to_pc(snes_addr);
      break;
    default:
      return -1;
  }
  if (header)
    pc_addr += 0x200;
  return pc_addr;
}

int	rommapping_sram_pc_to_snes(const unsigned int pc_addr, enum rom_type rom_type, bool header)
{
  int snes_addr;
  
  switch (rom_type)
  {
      case LoROM:
        snes_addr = lorom_sram_pc_to_snes(header ? pc_addr - 0x200 : pc_addr);
        break;
      case HiROM:
        snes_addr = hirom_sram_pc_to_snes(header ? pc_addr - 0x200 : pc_addr);
        break;
      default:
        return -1;
  }
  return snes_addr;
}
