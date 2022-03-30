;****************************************************************
;	Main assembly file for Zelda: A Link to the Past Redux
; All of the assembly files get linked together and compiled here.
;****************************************************************

;****************************************
;	Rom info
;****************************************
arch snes.cpu		; Set processor architecture (SNES)
lorom			; Switch to LoROM mapping mode

;****************************************
;	Global compilation flags
;****************************************
; This patch is only for A Link to the Past ROM
check title "THE LEGEND OF ZELDA  "

!fastrom = 1		; FastROM compilation
!lorom = 1		; LoROM flag
!hirom = 0		; HiROM flag
!exhirom = 0		; ExHiROM flag
!houlihan = 0		; Change the Houlihan's room name
!_snes_utils_inc = 1	; SNES Utils (by qwertymodo)

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
;	Expand ROM to 2MB
;****************************************
; Hacky method of expansion, could be changed later on
org $3FFFFF
	db $00

;****************************************
;	ALttP DX changes
;****************************************
incsrc loz3-dx/loz3-dx.asm	; Code of ALttP DX (v1.6)
incsrc fixes/bugfixes.asm	; General bugfixes (most DX code)

;****************************************
;	Gameplay changes
;****************************************
incsrc fixes/bunny_palette.asm	; Bunny palette fix (by rainponcho)
incsrc gameplay/max_consumables.asm 	; Implement "Max Consumables Fix" by Kasuto
incsrc gameplay/misc.asm	; Miscellaneous gameplay changes
incsrc gameplay/move_blocks_infinitely.asm	; Allows movement of blocks several times

;****************************************
;	Gameplay changes
;****************************************
incsrc layouts/overworld_layouts.asm	; Layout modifications to the overworld for Redux

;****************************************
;	Text changes
;****************************************
; Main script text
incsrc text/vwf.asm			; Variable width font modifications 
incsrc text/dialogue1.asm		; 1st dialogue table
incsrc text/dialogue2.asm		; 2nd dialogue table
;incsrc text/retranslation/dialogue1.asm	; 1st dialogue for the Retranslation & Sparrow
;incsrc text/retranslation/dialogue2.asm	; 2nd dialogue for the Retranslation by Chiken Knife & Sparrow

; Item names text
incsrc text/items.asm

; Credits text
;incsrc text/credits.asm

;****************************************
;	Visual changes
;****************************************
; Palette and color attribute modifications
incsrc gfx/palettes.asm		; 

; 24 Items Menu (New GFX)
;incsrc code/menus/new_gfx.asm		; Main file for New GFX

;****************************************
;	Optional patches
; Uncomment the desired Optional patches
;****************************************

; Include optional patches
; Uncomment desired patches inside "optional.asm" for them to compile
incsrc code/optional.asm

