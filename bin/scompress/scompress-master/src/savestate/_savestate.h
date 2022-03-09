
#ifndef H_PRIVATE_SAVESTATE_H
#define H_PRIVATE_SAVESTATE_H


#include <bits/types/FILE.h>
#include "savestateloader.h"

typedef struct {
    savestate_section   section;
    char*               name;
    unsigned int        start;
    unsigned int        size;
} savestate_section_internal_t;


typedef struct section_list_node_s {
    savestate_section_internal_t section;
    struct section_list_node_s*  next;
} section_list_node_t;

struct section_name_map_entry {
    savestate_section   section;
    char*               name;
};

#define SAVESTATE_SECTION_MAKE_ENTRY(cmd) {cmd, #cmd}

typedef struct savestate_internal_s {
    FILE*               file;
    const char*         source_data;
    unsigned int        source_pos;

    savestate_t*        public;
    section_list_node_t*  sections;

    savestate_section_t* (*get_section)(savestate_section, struct savestate_internal_s*);
} savestate_internal_t;


savestate_section_t* generic_get_section(savestate_section section, savestate_internal_t* internal);
char*   savestate_internal_get_enum_name(savestate_section section);



int     savestate_scanf(savestate_internal_t* savestate, const char* format, unsigned int size_read, ...);
int     savestate_seek(savestate_internal_t* savestate, int seek_pos, int whence);
int     savestate_read(savestate_internal_t* savestate, char* dest, size_t size);
unsigned int     savestate_get_current_position(savestate_internal_t* interntal);

void    print_section(savestate_section_internal_t* section);
#endif
