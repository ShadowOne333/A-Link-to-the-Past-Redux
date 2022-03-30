;*****************************************************************
;* Kholdstare_shell.asm
;* (c)2014 Conn
;*
;* https://www.zeldix.net/t385-original-alttp-bug-fixes
;*
;* Fixes Kholdstare's melting animation palette.
;*****************************************************************

incsrc "snes_utils.inc"

; Additional info: The fade is supposed to occur when the shell is defeated and is meant to simulate melting, probably.
; -Original code: the ice from cold stare disappears in an instant. 
; -New code: the ice disappears slowly. (Amazing what 4 bytes can do)

namespace Kholdstare_shell
	pushpc

	%origin($006C58)	; $00EC58, 0x006C58
		lda $7EC3A0,x	; BF A0 C3 7E
		sta $7EC5A0,x	; 9F A0 C5 7E

	%origin($006CBB)	; $00ECBB, 0x006CBB
		ldx #$00A0	; A2 A0 00
		lda #$00B0	; A9 B0 00
        
	pullpc
namespace off
