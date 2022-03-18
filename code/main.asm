;****************************************************************
;	Main assembly file for Zelda: A Link to the Past Redux
; All of the assembly files get linked together and compiled here.
;****************************************************************

;****************************************
;	Rom info
;****************************************
arch snes.cpu		; Set processor architecture (SNES)
lorom			; Switch to LoROM mapping mode
;banksize $8000		; Set the size of each bank
;header			; rom has a header

;****************************************
;	Internal ROM Header
;****************************************

org $008000

org $00FFB0	; 0x007FB0-0x007FFF
Internal_Rom_Header:
{
	dw $8D01	; Maker code
	dd $30E20124	; Game code
	db $6B,$FF,$FF	; Fixed value (1)
	dd $FFFFFFFF	; Fixed value (2)
	db $FF		; Expansion RAM size
	db $FF		; Special version
	db $FF		; Cartridge type (Subnumber)

	db "THE LEGEND OF ZELDA  "
	
	db $30		; ROM layout / Map mode ($20 for SlowROM)
	db $02		; Cartridge type
	db $0A		; ROM size
	db $03		; RAM size (SRAM size)
	db $01		; Country code (NTSC here)
	db $01		; Licensee (Nintendo here)
	db $00		; Game / Mask ROM version

; Checksums, not necessary since Asar regenerates them
	;dw $50F2	; Game image checksum
	;dw $AF0D	; Game image inverse checksum
}

warnpc $018000

;****************************************
;	Gameplay changes
;****************************************
incsrc code/fixes/bugfixes.asm	; General bugfixes (most DX code)
incsrc code/fixes/bunny_palette.asm	; Bunny palette fix (by rainponcho)
incsrc code/gameplay/misc.asm	; Miscellaneous gameplay changes
incsrc code/gameplay/move_blocks_infinitely.asm	; Allows movement of blocks several times

;****************************************
;	Text changes
;****************************************
incsrc code/text/dialogue1.asm		; 1st dialogue table
;incsrc code/text/dialogue2.asm		; 2nd dialogue table

;****************************************
;	Visual changes
;****************************************
incsrc code/gfx/palettes.asm		; 
;incsrc code/menus/new_gfx.asm		; 

; 24 Items Menu (New GFX)
incsrc code/fixes/24items_menu_shovel.asm	; Make the shovel a separate item for 24 Item menu
incsrc code/fixes/flute_fix.asm		; Fix flute being digged up constantly for the 24 Items menu

;****************************************
;	Optional patches
; Uncomment the desired Optional patches
;****************************************

; Include optional patches
; Uncomment desired patches inside "optional.asm" for them to compile
;incsrc code/optional.asm

