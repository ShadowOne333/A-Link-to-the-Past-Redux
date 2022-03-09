
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "savestateloader.h"
#include "_savestate.h"
#include "snes9x_152.h"


bool                savestate_loader_init(const char* file_path, const char* source_data, savestate_t* savestate_info)
{
    savestate_internal_t* internal = (savestate_internal_t*) malloc(sizeof(savestate_internal_t));
    savestate_info->__internals = (void *) internal;
    internal->source_pos = 0;
    internal->file = NULL;
    internal->source_data = NULL;
    internal->public = savestate_info;
    savestate_info->section_count = 0;
    char data_start[20];
    if (source_data == NULL)
    {
        internal->file = fopen(file_path, "r");
        if (internal->file == NULL)
            return false;
        fread(&data_start, 1, 20, internal->file);
    }
    if (file_path == NULL)
    {
        internal->source_data = source_data;
        memcpy(data_start, source_data, 20);
    }

    if (savestate_snes9x_152_is_valid(data_start, 20))
    {
        savestate_snes9x_152_init(internal);
        internal->get_section = &savestate_snes9x_152_get_section;
    }
    return true;
}

bool                savestate_loader_get_header(savestate_t* savestate_info)
{
    return true;
}

bool                savestate_loader_get_all(savestate_t* savestate_info)
{
    return true;
}

char**              savestate_loader_list_section_name(savestate_t* savestate_info)
{
    char** toret = (char**) malloc(sizeof(char*) * (savestate_info->section_count + 1));
    savestate_internal_t* internal = (savestate_internal_t*) savestate_info->__internals;
    section_list_node_t* list = internal->sections;
    unsigned int i = 0;
    while (list != NULL)
    {
        char* name = (char*) malloc(strlen(list->section.name) + 1);
        strcpy(name, list->section.name);
        toret[i] = name;
        i++;
        list = list->next;
    }
    toret[i] = NULL;
    return toret;
}

savestate_section_t*    savestate_loader_get(savestate_section section, savestate_t* savestate_info)
{
    //savestate_section_t* toret = (savestate_section_t*) malloc(sizeof(savestate_section_t));
    savestate_internal_t* internal = (savestate_internal_t*) savestate_info->__internals;
    return internal->get_section(section, internal);
}
