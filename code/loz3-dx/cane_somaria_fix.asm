;*****************************************************************
;* cane_somaria_fix.asm
;* (c)2014 Conn
;*
;* https://www.zeldix.net/t385-original-alttp-bug-fixes
;*
;* Fixes a magic underflow glitch related to the Cane of Somaria.
;*****************************************************************

incsrc "snes_utils.inc"

; Disables frequent use of the Cane of Somaria that causes bugs

; Game hooks
namespace _cane_somaria_fix
	pushpc

	%fseek($07AED4)
		jmp cane_somaria_fix_init

        pullpc
namespace off

; Main patch code
namespace cane_somaria_fix
	init:
		lda $0C4A,x
		cmp #$2C
		bne +
		jmp $AEE5
	+
		cmp #$01
		bne +
		jmp $AE87
	+
		jmp $AEDB
namespace off
