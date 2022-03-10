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
org $00FFC0	; 0x007FC0-0x007FFF

Internal_Rom_Header:
{
	db "THE LEGEND OF ZELDA  "
	
	db $20   ; ROM layout
	db $02   ; Cartridge type
	db $0A   ; ROM size
	db $03   ; RAM size (SRAM size)
	db $01   ; Country code (NTSC here)
	db $01   ; Licensee (Nintendo here)
	db $00   ; Game version

; Checksums, not necessary since Asar regenerates them
	;dw $50F2 ; Game image checksum
	;dw $AF0D ; Game image inverse checksum
}

warnpc $018000

;****************************************
;	Gameplay changes
;****************************************
;incsrc code/gameplay/*.asm	; 

; 24 Items Menu (New GFX)
incsrc code/fixes/24items_menu_shovel.asm	; Make the shovel a separate item for 24 Item menu
incsrc code/fixes/flute_fix.asm		; Fix flute being digged up constantly for the 24 Items menu

;****************************************
;	Text changes
;****************************************
;incsrc code/text/*.asm		; 

;****************************************
;	Visual changes
;****************************************
incsrc code/gfx/palettes.asm		; 

;****************************************
;	Optional patches
; Uncomment the desired Optional patches
;****************************************

; Include optional patches
; Uncomment desired patches inside "optional.asm" for them to compile
;incsrc code/optional.asm

