;*************************************
; 	Pikit cannot steal shields
;		by Aladore384
;*************************************
; Disable the Pikit enemy from stealing the first two shields.
; The original game only had a check so it doesn't steal the Mirror Shield
org $1E8DB6	; 0x0F0DB6
	lda.l $7EF35A	; Load shield level
	sta  $0E30,x
	beq  $CD	; If no shield, nothing to steal (skip)
	cmp  #$03	; Still runs, but result is now unused
	;beq  $C9	; F0 C9 — branch if equal 55 bytes backward
	bra  $C9	; ALWAYS skip — was BEQ, now unconditional (skip)
	lda  #$00	; A9 00
	sta.l  $7EF35A	; Unreachable — shield is never taken
	rts

;org $1E8DC1	; 0x0F0DC1
	;bra  $C9	; Skip check directly
