;*****************************************************************
;* mothula_l4.asm
;* (c)2014 Conn
;*
;* https:;www.zeldix.net/t385-original-alttp-bug-fixes
;*
;* Fixes Mothula's immunity to the L4 sword and L3 spin slash.
;*****************************************************************

incsrc "snes_utils.inc"

; This patch fixes that the boss Mothula is immune against the Golden Sword and the spin attack from the Tempered Sword.

; Game hooks
namespace _mothula_l4
	pushpc

	%fseek($028136)
		jsl mothula_l4_fix_1

	%fseek($06E83F)
		jsl mothula_l4_fix_2

	pullpc
namespace off


; Main patch code
namespace mothula_l4
	fix_1:
		lda #$01
		sta $7F6884
		sta $7F6885
		%jsf($00893D)
		rtl

	fix_2:
		lda $0E20,x
		cmp #$88
		bne ++
		lda $0EF0
		beq +
		rtl
	+
		lda #$06
		bra +++
	++
		lda #$04
	+++
		%jsf($06ECE0)
		rtl
namespace off
