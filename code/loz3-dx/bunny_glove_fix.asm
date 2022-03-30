;*****************************************************************
;* bunny_glove_fix.asm
;* (c)2014 Conn
;*
;* https:;www.zeldix.net/t385-original-alttp-bug-fixes
;*
;* Fixes various graphical glitches related to the glove palette.
;*****************************************************************

incsrc "snes_utils.inc"

; This fixes the glove palette when wearing ingame reseting to skin color - it happens in native Zelda when:
; * opening the overworld map
; * opening the dungeon map (makes the glove palette to disappear from the moment you visit another room in the dungeon)
; * being electrocuted
; * using Ether
; * being hit by a rabbit beam

; Game hooks
namespace _bunny_glove_fix
	pushpc

	%fseek($0ED73C)
		jsl bunny_glove_fix_init
        
	pullpc
namespace off


; Main patch code
namespace bunny_glove_fix
	init:
		lda $02E0
		and #$FF
		brk #$F0
		ora $E2
		dw $E630	; BMI +$E6
		ora $6B,x
		%jsf($1BEE1D)
		rtl
namespace off
