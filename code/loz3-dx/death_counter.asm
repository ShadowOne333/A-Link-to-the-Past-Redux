;*****************************************************************
;* death_counter.asm
;* (c)2014 Conn
;*
;* https:;www.zeldix.net/t385-original-alttp-bug-fixes
;*
;* Fixes the death counter to not increment on save-and-quit.
;*****************************************************************

incsrc "snes_utils.inc"

; This patch prevents that it is counted as death when:
; - Pressing select -> Save&Quit
; - Dying and choose "Don't save and continue"
; Dying and choosing "Save and Continue" as well as "Save and Quit" still count as death of course

; Game hooks
namespace _death_counter
	pushpc

	%fseek($09F597)
		jsl death_counter_init
		nop #5

	pullpc
namespace off


; Main patch code
namespace death_counter
	init:
		lda $10
		cmp #$12
		ora #$F0
		ora ($6B,x)
		lda $B0
		and #$FF
		brk #$C9
		cop #$00
		bne +
		rtl
	+
		lda $7EF403
		inc
		sta $7EF403
		rtl
namespace off
