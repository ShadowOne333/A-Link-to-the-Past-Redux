/*
Copyright 2016 Sylvain "Skarsnik" Colinet

 This file is part of the sneshackingtools project.

    sneshackingtools is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Foobar is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with sneshackingtools.  If not, see <http://www.gnu.org/licenses/>
    */

#ifndef H_ROMMAPPING_H
#define H_ROMMAPPING_H

#define ROMMAPPING_LOCATION_SNES_RESERVED -1
#define ROMMAPPING_LOCATION_SRAM -2
#define ROMMAPPING_LOCATION_WRAM -3
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif


enum rom_type {
  LoROM,
  HiROM,
  ExLoROM,
  ExHiROM
};

extern char *rommapping_error_text;

int	rommapping_snes_to_pc(const unsigned int snes_addr, enum rom_type rom_type, bool header);
int	rommapping_pc_to_snes(const unsigned int pc_addr, enum rom_type rom_type, bool header);

int rommapping_sram_snes_to_pc(const unsigned int snes_addr, enum rom_type rom_type, bool header);
int	rommapping_sram_pc_to_snes(const unsigned int pc_addr, enum rom_type rom_type, bool header);

int	lorom_snes_to_pc(const unsigned int snes_addr, char** info);
int	lorom_sram_snes_to_pc(const unsigned int snes_addr);
int	lorom_pc_to_snes(const unsigned int pc_addr);
int	lorom_sram_pc_to_snes(const unsigned int pc_addr);

int	hirom_snes_to_pc(const unsigned int snes_addr, char** info);
int	hirom_sram_snes_to_pc(const unsigned int snes_addr);
int	hirom_pc_to_snes(const unsigned int pc_addr);
int	hirom_sram_pc_to_snes(const unsigned int pc_addr);

#ifdef __cplusplus
}
#endif


#endif
