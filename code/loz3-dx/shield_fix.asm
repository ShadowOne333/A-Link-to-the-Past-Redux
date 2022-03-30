;******************************************************************************
;* shield_fix.asm
;* (c)2014 Conn
;*
;* https:;www.zeldix.net/t385-original-alttp-bug-fixes
;*
;* Fixes a graphical glitch when the Ether Medallion is used when your shield has been stolen by a Pikit.
;******************************************************************************

incsrc "snes_utils.inc"

; If a shield is stolen by a Pikit (that pumpkin monster with the long tongue e.g., in front of ice dungeon) and you use the ether, get the L2 shield back, your shield will have a blue palette.
; This patch restores the normal gold-red palette

; Game hooks
namespace _shield_fix
	pushpc

	%fseek($06D173)
		jsl shield_fix_init

	pullpc
namespace off


; Main patch code
namespace shield_fix
	init:
		phx
		phy
		sta $7EF35A
		%jsf($1BED29)
		ply
		plx
		rtl
namespace off
