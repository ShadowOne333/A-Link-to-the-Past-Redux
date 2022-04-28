;*****************************************************************
;* loz3-dx.asm
;* (c)2016 qwertymodo et al (See Authors listed below)
;*
;* A collection of improvements and bugfixes to Zelda 3 from various sources.
;*
;* USAGE:
;*    bass -d input=loz3.sfc -o loz3-dx.sfc loz3-dx.asm
;*
;* OPTIONS:
;*    -Invoke bass with -d fastrom or uncomment the define fastrom() line below to
;*     enable the FastROM patch
;*
;*****************************************************************

incsrc "snes_utils.inc"

if !fastrom == 1
	incsrc "FastROM-ASM.asm"
endif

if !houlihan == 1
	;org $0E4356
	dialogue1_table1.message_099:
	db "My na!{me} !{is} "
	;   B   e   n   _   W   h   i   t   m   a   n   .   _
	db $01,$1E,$27,$59,$16,$21,$22,$2D,$26,$1A,$27,$41,$59
endif

incsrc "loz3-msu.asm"
incsrc "Kholdstare_shell.asm"

%fseek($07FB00)
incsrc "ast_dashing.asm"
incsrc "bunny_glove_fix.asm"
incsrc "cane_somaria_fix.asm"
incsrc "cape_fix.asm"
incsrc "collect_items_sword.asm"
incsrc "death_counter.asm"
incsrc "flickering_fix.asm"
incsrc "flute_fix.asm"

if !newgfx == 1
	incsrc "code/menus/l_r_item_switch_24items.asm"
else
	incsrc "l_r_item_switch.asm"
endif

incsrc "mothula_l4.asm"
incsrc "pott_l2sword.asm"
incsrc "shield_fix.asm"
