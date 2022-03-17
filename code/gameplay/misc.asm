;*****************************************************************
; 	Miscellaneous assembly hacks for Redux
;*****************************************************************

;----------------------------------------
; Make all fairies restore 8 hearts
org $09F6A9	; 0x04F6A9
	db $40		; Originally $38

;----------------------------------------
; Modify flipper's price to 300 rupees (needs change in text, too)
;org $0059A9A	; 0x029A9A
;	dw $012C		; Originally $01F4

;----------------------------------------
; Make the mirror work in both Light and Dark Worlds (instead of just Dark World)
;org $07A951	; 0x03A951
;	nop		; $EA
;	jmp $A95C	; $4C 5C A9
; Originally AND #$40, BNE $07

;----------------------------------------
; Fix pendant 3 drop location:
org $098C26	; 0x048C26 
	db $80		; Originally $D0

;----------------------------------------

