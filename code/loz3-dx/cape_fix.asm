;*****************************************************************
;* cape_fix.asm
;* (c)2014 Conn
;*
;* https:;www.zeldix.net/t385-original-alttp-bug-fixes
;*
;* Fixes an infinite magic glitch when pulling an object with the Magic Cape.
;*****************************************************************

incsrc "snes_utils.inc"

; Disables grabbing with magic cape and thus having no magic drain when pulling a statue

; Game hooks
namespace _cape_fix
	pushpc

	%fseek($0DAA65)
		jsl cape_fix_init
		nop
        
	pullpc
namespace off


; Main patch code
namespace cape_fix
	init:
		stz $0376
		rep #$30
		lda $0352
		rtl
namespace off
