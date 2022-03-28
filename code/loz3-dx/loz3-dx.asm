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

if !fastrom = 1 
	incsrc "FastROM-ASM.asm"
endif

if !houlihan
	org $0E4356
	 ;  B   e   n   _   W   h   i   t   m   a   n   .   _
    	db $01,$1E,$27,$59,$16,$21,$22,$2D,$26,$1A,$27,$41,$59
endif

;incsrc "code/dx/loz3-msu.asm"
;incsrc "code/dx/Kholdstare_shell.asm"
    
fseek($07FB00)
;incsrc "code/dx/ast_dashing.asm"
;incsrc "code/dx/bunny_glove_fix.asm"
;incsrc "code/dx/cane_somaria_fix.asm"
;incsrc "code/dx/cape_fix.asm"
;incsrc "code/dx/collect_items_sword.asm"
;incsrc "code/dx/death_counter.asm"
;incsrc "code/dx/flickering_fix.asm"
;incsrc "code/dx/flute_fix.asm"
;incsrc "code/dx/l_r_item_switch.asm"
;incsrc "code/dx/mothula_l4.asm"
;incsrc "code/dx/pott_l2sword.asm"
;incsrc "code/dx/shield_fix.asm"
