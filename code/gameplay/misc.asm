;*****************************************************************
; 	Miscellaneous assembly hacks for Redux
;*****************************************************************

;----------------------------------------
; Restore Dungeon Boss Icon positions in Dungeon Maps when obtaining the Compass
org $0AEE79	; 0x056E79
	dw $FFFF,$FFFF,$0001,$0001
	dw $0006,$00FF,$00FF,$00FF,$00FE,$00F9
	dw $0005,$00FF,$00FD,$0006

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
org $01EA69	; Originally 0x00EA69 with map changes, it can be 0x00EAD8 without map changes, verify in case the Tunics are wrong
; Changes the Tower of Ganon chest from a Red Tunic to a Blue Tunic
	db $22	; Originally $23

; Original address at $07B54A (0x03B54A)
; Changes the alt item received for the Blue Tunic from blank (FF) to a Red Tunic (23)
org $07B54A	; 0x03B54A
	db $23   ; Originally $FF

;----------------------------------------
; Change the direction of the sword when swinging by Zarby89
%fseek($079AC7)    ; 0x039AC7
; Originally STZ $02E3 : LDA $0301 (9C E3 02 AD 01 03)
  	jsl NewSwordCode    ; $3D8000, 22 00 80 3D
	nop #2        ; EA EA

%fseek($07FA60)	; 0x03FA60, changed to free space
; Originally written at org $3D8000 (0x1E8000)
NewSwordCode:
; Prevent sword from changing direction when charging a spin
	lda $3C : and #$0A : bne ++

; Sword swing direction change
	lda $F0 : and #$01 : beq +        ; F0 06
	; Right
	lda #$06 : sta $2F
	bra ++
+
	lda $F0 : and #$02 : beq +
	; Left
	lda #$04 : sta $2F
	bra ++    ; $14
+
	lda $F0 : and #$04 : beq +
	; Down
	lda #$02 : sta $2F
	bra ++    ; $08
+
	lda $F0 : and #$08 : beq ++    ; $02
	; Up
	stz $2F
++
	stz $02E3
	lda $0301
	rtl

;----------------------------------------
