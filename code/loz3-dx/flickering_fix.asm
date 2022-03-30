;*****************************************************************
;* flickering_fix.asm
;* (c)2014 Conn
;*
;* https://www.zeldix.net/t385-original-alttp-bug-fixes
;*
;* 
;*****************************************************************

incsrc "snes_utils.inc"

; Fixes the flickering that appears sometimes in the start or select menu

; Game hooks
namespace _flickering_fix
	pushpc

	%fseek($08832D)
		jsl flickering_fix_fix_1
		nop #2

	%fseek($00876B)
		jsl flickering_fix_fix_2
		nop #2

	pullpc
namespace off


; Main patch code
namespace flickering_fix
	fix_1:
		stx $0FA0
		lda $10
		cmp #$0E
		beq +
		lda $0C4A,x
		rtl
	+
		lda $11
		cmp #$01
		beq +
		lda $0C4A,x
		rtl
	+
		lda #$00
   		rtl

	; flickering_fix.asm
	fix_2:
		sta $0AF2
		lda $10
		cmp #$0E
		phd
		beq +
		lda $0AF4
		rtl
	+
		stz $0AF4
        	rtl
namespace off
