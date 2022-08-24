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

!newgfx = 1		; New GFX
!fastrom = 1		; FastROM compilation
!lorom = 1		; LoROM flag
!hirom = 0		; HiROM flag
!exhirom = 0		; ExHiROM flag
!subtitle = 0		; "TRIFORCE OF THE GODS" subtitle
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

if !fastrom == 1
	db $30		; ROM layout / Map mode ($30 for FastROM)
else
	db $20		; ROM layout / Map mode ($20 for SlowROM)
endif
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
org $3FFFFF : db $00

;****************************************
;	ALttP DX changes
;****************************************
incsrc loz3-dx/loz3-dx.asm	; Code of ALttP DX (v1.6)
incsrc fixes/bugfixes.asm	; General bugfixes from Zeldix.net

;****************************************
;	Gameplay changes
;****************************************
incsrc fixes/bunny_palette.asm	; Bunny palette fix (by rainponcho)
incsrc fixes/vc_patches.asm	; Some photosensitivy changes made in the Virtual Console release, modified for Redux
incsrc fixes/title_skip.asm	; Skip the Title sequence by pressing any button (by PowerPanda)
incsrc gameplay/max_consumables.asm 	; Implement "Max Consumables Fix" by Kasuto
incsrc gameplay/misc.asm	; Miscellaneous gameplay changes
incsrc gameplay/shovel_treasures.asm	; Make items appear when digging with the shovel (by PowerPanda)

;****************************************
;	Map changes
;****************************************
if !fastrom == 1
	;incsrc layouts/overworld_layouts.asm	; Layout modifications to the overworld for Redux for FastROM
else
	;incsrc layouts/overworld_layouts_slowrom.asm	; Layout modifications to the overworld for Redux for SlowROM
endif

;****************************************
;	Text changes
;****************************************
; Main Redux script text
incsrc text/vwf.asm			; Variable width font modifications 
incsrc text/dialogue1.asm		; 1st dialogue table
incsrc text/dialogue2.asm		; 2nd dialogue table

; Item names text (Check for items with Old or New GFX)
if !newgfx == 0
	incsrc text/original/items_org.asm
endif

; Credits text
incsrc text/credits.asm

;****************************************
;	Visual changes
;****************************************
; Main Redux palette and color attribute modifications
incsrc gfx/palettes.asm

; 24 Items Menu (New GFX)
if !newgfx == 1
	incsrc code/menus/new_gfx.asm	; Main file for New GFX
endif

;****************************************
;	Optional patches
; Uncomment the desired Optional patches
;****************************************

; Include optional patches
; Uncomment desired patches inside "optional.asm" for them to compile
incsrc code/optional.asm

