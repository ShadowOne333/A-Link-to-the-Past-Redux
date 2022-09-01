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
; Fix pendant 3 drop location:
org $098C26	; 0x048C26 
	bra $15		; Originally BNE $15

;----------------------------------------
; Red and Blue Tunic obtainable in each others' chests

; Edits both armor chets to be Armor 2 with an Alternate of Armor 3. The first one you pick up will always be blue, and the second will always be red. Originally made by qwertymodo

; Original address at $01EAD8 (0x00EAD8), (should be included in map_layouts.ips)
org $01EA69	; 0x00EA69
; Changes the Tower of Ganon chest from a Red Tunic to a Blue Tunic
	db $22	; Originally $23

; Original address at $07B54A (0x03B54A)
; Changes the alt item received for the Blue Tunic from blank (FF) to a Red Tunic (23)
org $07B54A	; 0x03B54A
	db $23   ; Originally $FF

;----------------------------------------
