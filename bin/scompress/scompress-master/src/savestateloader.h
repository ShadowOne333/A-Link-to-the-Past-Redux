#ifndef H_SAVESTATELOADER_H
#define H_SAVESTATELOADER_H

#include <stdbool.h>

typedef enum {
    CPU,
    REGISTER,
    DMA,
    PPU,
    CGRAM,
    VRAM,
    WRAM,
    SRAM,
    FILLRAM,
    ROM,
    SFX,
    SA1,
    DP1,
    DP2,
    DP3,
    CUSTOM

} savestate_section;

typedef struct {
    char*   emulator_name;
    char*   emulator_version;
    char*   format_version;
    char*   game_name;
    char*   rom_checksum;
    char*   rom_file;
}   savestate_header_t;


typedef struct {
    char*               name;
    savestate_section   section;
    char*               data;
    unsigned int        size;
} savestate_section_t;

typedef struct {
    savestate_header_t      header;
    unsigned    int         section_count;
    void*                   __internals;

}   savestate_t;

bool                    savestate_loader_init(const char* file_path, const char* source_data, savestate_t* statestate_info);
bool                    savestate_loader_get_header(savestate_t* savestate_info);
//bool                savestate_loader_get_all(savestate_t* savestate_info);
savestate_section*      savestate_loader_list_section(savestate_t* savestate_info);
char**                  savestate_loader_list_section_name(savestate_t* savestate_info);

savestate_section_t*                savestate_loader_get(savestate_section section, savestate_t* savestate_info);



#endif
