#ifndef H_SNES9X_SAVESTATE_H
#define H_SNES9X_SAVESTATE_H

#include <stdbool.h>
#include "_savestate.h"

bool    savestate_snes9x_152_is_valid(const char* start, unsigned int size);
bool    savestate_snes9x_152_init(savestate_internal_t* savestate);

savestate_section_t*    savestate_snes9x_152_get_section(savestate_section section, savestate_internal_t* internal);


#endif
