//******************************************************************************
//* loz3-dx.asm
//* (c)2016 qwertymodo et al (See Authors listed below)
//*
//* A collection of improvements and bugfixes to Zelda 3 from various sources.
//*
//* USAGE:
//*    bass -d input=loz3.sfc -o loz3-dx.sfc loz3-dx.asm
//*
//* OPTIONS:
//*    -Invoke bass with -d fastrom or uncomment the define fastrom() line below to
//*     enable the FastROM patch
//*
//******************************************************************************

include "snes_utils.inc"

if {defined fastrom} {
include "FastROM-ASM.asm"
}

if {defined houlihan} {
origin $0E4356
    // B   e   n   _   W   h   i   t   m   a   n   .   _
    db $01,$1E,$27,$59,$16,$21,$22,$2D,$26,$1A,$27,$41,$59
}

include "loz3-msu.asm"
include "Kholdstare_shell.asm"
    
fseek($07FB00)
include "ast_dashing.asm"
include "bunny_glove_fix.asm"
include "cane_somaria_fix.asm"
include "cape_fix.asm"
include "collect_items_sword.asm"
include "death_counter.asm"
include "flickering_fix.asm"
include "flute_fix.asm"
include "l_r_item_switch.asm"
include "mothula_l4.asm"
include "pott_l2sword.asm"
include "shield_fix.asm"
