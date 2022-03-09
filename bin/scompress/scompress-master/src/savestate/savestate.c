
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>
#include "_savestate.h"


struct section_name_map_entry savestate_map_section_enum[] = {
    SAVESTATE_SECTION_MAKE_ENTRY(CPU),
    SAVESTATE_SECTION_MAKE_ENTRY(REGISTER),
    SAVESTATE_SECTION_MAKE_ENTRY(DMA),
    SAVESTATE_SECTION_MAKE_ENTRY(PPU),
    SAVESTATE_SECTION_MAKE_ENTRY(CGRAM),
    SAVESTATE_SECTION_MAKE_ENTRY(VRAM),
    SAVESTATE_SECTION_MAKE_ENTRY(WRAM),
    SAVESTATE_SECTION_MAKE_ENTRY(SRAM),
    SAVESTATE_SECTION_MAKE_ENTRY(FILLRAM),
    SAVESTATE_SECTION_MAKE_ENTRY(ROM),
    SAVESTATE_SECTION_MAKE_ENTRY(SFX),
    SAVESTATE_SECTION_MAKE_ENTRY(SA1),
    SAVESTATE_SECTION_MAKE_ENTRY(DP1),
    SAVESTATE_SECTION_MAKE_ENTRY(DP2),
    SAVESTATE_SECTION_MAKE_ENTRY(DP3),
    {CUSTOM, NULL}
};


savestate_section_t* generic_transform_section(savestate_section_internal_t* section, savestate_internal_t* internal)
{
    savestate_section_t*    toret = (savestate_section_t*) malloc(sizeof(savestate_section_t));
    toret->size = section->size;
    toret->name = (char*) malloc(strlen(section->name) + 1);
    strncpy(toret->name, section->name, strlen(section->name) + 1);
    toret->data = (char*) malloc(section->size);
    if (internal->file != NULL)
    {
        fseek(internal->file, section->start, SEEK_SET);
        fread(toret->data, 1, section->size, internal->file);
    } else {
        memcpy(toret->data, internal->source_data, section->size);
    }
    return toret;
}

savestate_section_t* generic_get_section(savestate_section section, savestate_internal_t* internal)
{
    section_list_node_t*    start = internal->sections;
    //savestate_section_t*    toret = (savestate_section_t*) malloc(sizeof(savestate_section_t));

    while (start != NULL)
    {
        if (section == start->section.section)
            return generic_transform_section(&(start->section), internal);
        start = start->next;
    }
    return NULL;
}

char*   savestate_internal_get_enum_name(savestate_section section)
{
    for (unsigned int i = 0; savestate_map_section_enum[i].section != CUSTOM; i++)
    {
        if (savestate_map_section_enum[i].section == section)
            return savestate_map_section_enum[i].name;
    }
    return NULL;
}


int     savestate_read(savestate_internal_t* savestate, char* dest, size_t size)
{
    if (savestate->file != NULL)
    {
        int readed = fread(dest, 1, size, savestate->file);
        //printf("Readed : %d\n", readed);
        savestate->source_pos += readed;
        return readed;
    }
    memcpy(dest, savestate->source_data + savestate->source_pos, size);
    savestate->source_pos += size;
    return size;
}


int    savestate_scanf(savestate_internal_t* savestate, const char* format, unsigned int size_read, ...)
{
    va_list args;
    va_start(args, size_read);
    savestate->source_pos += size_read;
    if (savestate->file != NULL)
       return vfscanf(savestate->file, format, args);
    int toret = vsscanf(savestate->source_data + savestate->source_pos - size_read, format, args);
    return toret;
}

int     savestate_seek(savestate_internal_t* savestate, int seek_pos, int whence)
{
    savestate->source_pos += seek_pos;
    if (whence == SEEK_SET)
        savestate->source_pos = seek_pos;
    if (savestate->file != NULL)
        return fseek(savestate->file, seek_pos, whence);
    return 0;
}

unsigned int     savestate_get_current_position(savestate_internal_t* internal)
{
    if (internal->file != NULL)
        return ftell(internal->file);
    return internal->source_pos;
}

void    print_section(savestate_section_internal_t* section)
{
    printf("Name : %s - %06X:%d\n", section->name, section->start, section->size);
}
