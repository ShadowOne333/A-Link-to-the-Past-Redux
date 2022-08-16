;****************************************************************
; 	Mirror on Both Worlds
;****************************************************************

; Make the mirror work in both Light and Dark Worlds (instead of just Dark World)

org $07A951	; 0x03A951
	jmp $A95C	; $4C 5C A9
	nop		; $EA
; Originally AND #$40, BNE $07
