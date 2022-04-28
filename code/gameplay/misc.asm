;*****************************************************************
; 	Miscellaneous assembly hacks for Redux
;*****************************************************************

;----------------------------------------
; Make all fairies restore 8 hearts
org $09F6A8	; 0x04F6A8
	lda #$40		; Originally LDA #$38

;----------------------------------------
; Modify flipper's price to 300 rupees (needs change in text, too)
;org $059A99	; 0x029A99
;	sbc #$012C		; Originally SBC #$01F4

;----------------------------------------
; Make the mirror work in both Light and Dark Worlds (instead of just Dark World)
;org $07A951	; 0x03A951
;	jmp $A95C	; $4C 5C A9
;	nop		; $EA
; Originally AND #$40, BNE $07

;----------------------------------------
; Fix pendant 3 drop location:
org $098C26	; 0x048C26 
	bra $15		; Originally BNE $15

;----------------------------------------

