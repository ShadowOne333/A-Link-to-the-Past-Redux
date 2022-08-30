;****************************************************************
;	Bunny Palette Fix (by rainponcho)
;****************************************************************
; THIS CODE REQUIRES EXPANSION TO 2MB!

;----------------------------------------
;$0E/D6C8 AF 5B F3 7E LDA $7EF35B[$7E:F35B]   A:0304 X:00FE Y:00FE P:envmXdizC
;$0E/D6CC 29 FF 00    AND #$00FF              A:0502 X:00FE Y:00FE P:envmXdizC
;$0E/D6CF 80 17       BRA $17    [$D6E8]      A:0002 X:00FE Y:00FE P:envmXdizC

org $ED6C8	; 0x0756C8
	jsl bunny_palette

;----------------------------------------
;$1B/EDFB AF 5B F3 7E LDA $7EF35B[$7E:F35B]   A:0233 X:00C0 Y:00FF P:envmXdizc
;$1B/EDFF 29 FF 00    AND #$00FF              A:0502 X:00C0 Y:00FF P:envmXdizc

org $1BEDFB	; 0x0DEDFB
	jsl bunny_palette

;----------------------------------------

;$1B/EE1D AF 54 F3 7E LDA $7EF354[$7E:F354]   A:0000 X:0200 Y:FFFF P:envmxdiZc
;$1B/EE21 29 FF 00    AND #$00FF              A:0102 X:0200 Y:FFFF P:envmxdizc

org $1BEE1D	; 0x0DEE1D
	jsl bunny_palette2


;----------------------------------------

; Modify to avoid 2MB ROM!
; Moved from $3FFED0 (0x1FFED0) to $07FFB0 (0x03FFB0)
org $07FFB0	; 0x03FFB0, 0x26 bytes
bunny_palette:
	; Check bunny
	lda $02E0
	ora $56
	and.w #$00FF
	beq bunny_palette_tunic

	lda #$0303
	rtl

bunny_palette_tunic:
	lda $7EF35B
	rtl

bunny_palette2:
	; Check bunny
	lda $2E0
	ora $56
	and.w #$00FF
	beq bunny_palette2_tunic

	lda #$0000
	rtl

bunny_palette2_tunic:
	lda $7EF354
	rtl
