
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "snes9x_152.h"

#define MY_DEBUG 1
#ifdef MY_DEBUG
#define s_debug(...)  printf(__VA_ARGS__)
#else
#define s_debug(...)
#endif

/* From doc/snapshots.txt
Currently defined blocks (in order) are:

    Essential parts:
      NAM - ROM filename, from Memory.ROMFilename. 0-terminated string.
      CPU - struct SCPUState, CPU internal state variables.
      REG - struct SRegisters, emulated CPU registers.
      PPU - struct SPPU, PPU internal variables. Note that IPPU is never saved.
      DMA - struct SDMA, DMA/HDMA state variables.
      VRA - Memory.VRAM, 0x10000 bytes.
      RAM - Memory.RAM, 0x20000 bytes (WRAM).
      SRA - Memory.SRAM, 0x20000 bytes.
      FIL - Memory.FillRAM, 0x8000 bytes (register backing store).
      SND - All of sound emulated registers and state valiables.
      CTL - struct SControlSnapshot, controller emulation.
      TIM - struct STimings, variables about timings between emulated events.

    Optional parts:
      SFX - struct FxRegs_s, Super FX.
      SA1 - struct SSA1, SA1 internal state variables.
      SAR - struct SSA1Registers, SA1 emulated registers.
      DP1 - struct SDSP1, DSP-1.
      DP2 - struct SDSP2, DSP-2.
      DP4 - struct SDSP4, DSP-4.
      CX4 - Memory.C4RAM, 0x2000 bytes.
      ST0 - struct SST010, ST-010.
      OBC - struct SOBC1, OBC1 internal state variables.
      OBM - Memory.OBC1RAM, 0x2000 byts.
      S71 - struct SSPC7110Snapshot, SPC7110.
      SRT - struct SSRTCSnapshot, S-RTC internal state variables.
      CLK - struct SRTCData, S-RTC emulated registers.
      BSX - struct SBSX, BS-X.
      SHO - rendered SNES screen.
      MOV - struct SnapshotMovieInfo.
      MID - Some block of data the movie subsystem.
*/

typedef struct {
    savestate_section   section;
    char*               block_str;
} map_block_name_entry_t;

static map_block_name_entry_t enums_and_block_tab[] = 
{
    {CPU, "CPU"},
    {REGISTER, "REG"},
    {PPU, "PPU"},
    {DMA, "DMA"},
    {VRAM, "VRA"},
    {WRAM, "RAM"},
    {SRAM, "SRA"},
    {FILLRAM, "FIL"},
    {CUSTOM, NULL}
};

static savestate_section   block_name_to_enum(const char* name)
{
    unsigned int cpt = 0;
    while (enums_and_block_tab[cpt].section != CUSTOM)
    {
        if (strcmp(enums_and_block_tab[cpt].block_str, name) == 0)
            return enums_and_block_tab[cpt].section;
        cpt++;
    }
    return CUSTOM;
}

//  example block desc : NAM:000019:

bool    savestate_snes9x_152_is_valid(const char* start, unsigned int size)
{
    size = size;
    return (strncmp(start, "#!s9xsnp:", strlen("#!s9xsnp:")) == 0);
}

bool    savestate_snes9x_152_init(savestate_internal_t* savestate)
{
    char section_name[4];
    unsigned int    size = 0;

    section_name[3] = 0;
    savestate_seek(savestate, 14, SEEK_SET);
    savestate->sections = NULL;
    section_list_node_t* prev_node = NULL;
    while (savestate_scanf(savestate, "%3c:%06d:", strlen("NAM:000019:"), &section_name, &size) == 2)
    {
        s_debug("Section name : %s - Pos : %06X -- %d\n", section_name, savestate_get_current_position(savestate), size);
        if (strcmp(section_name, "NAM") == 0)
        {
            savestate->public->header.rom_file = (char*) malloc(size + 1);
            savestate_read(savestate, savestate->public->header.rom_file, size);
            continue;
        }
        section_list_node_t* current_node = (section_list_node_t*) malloc(sizeof(section_list_node_t));
        if (savestate->sections == NULL)
            savestate->sections = current_node;
        else
            prev_node->next = current_node;
        current_node->next = NULL;
        current_node->section.section = block_name_to_enum(section_name);
        savestate_section_internal_t* section = &current_node->section;
        if (section->section == CUSTOM)
        {
            section->name = (char*) malloc(4);
            strncpy(section->name, section_name, 4);
        } else {
            const char* name = savestate_internal_get_enum_name(section->section);
            section->name = (char*) malloc(strlen(name) + 1);
            strncpy(section->name, name, strlen(name) + 1);
        }
        section->start = savestate_get_current_position(savestate);
        section->size = size;
        prev_node = current_node;
        print_section(section);
        // OAM and CGRAM are in the PPU section
        if (section->section == PPU)
        {
            
        }
        savestate_seek(savestate, size, SEEK_CUR);
        savestate->public->section_count++;
    }
    return true;
}

savestate_section_t*    savestate_snes9x_152_get_section(savestate_section section, savestate_internal_t* internal)
{
    for (unsigned int i = 0; enums_and_block_tab[i].section != CUSTOM; i++)
    {
        if (section == enums_and_block_tab[i].section)
            return generic_get_section(section, internal);
    }
    return NULL;
}
 
