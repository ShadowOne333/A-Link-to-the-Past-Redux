;*****************************************************************
; 	Palette and attribute modifications
;*****************************************************************

; Change Agahnim's palette to red & blue (official artwork)
org $1BD5A4	; 0x0DD5A4
	dw $7FFF, $06FD, $7272, $5D8D, $14A5, $219D, $08D7
	; Originally dw $7FFF, $4118, $1636, $3B1D, $14A5, $1F52, $120D


; Modify a thief's palette in Lost Woods to not have such odd colors with the palette changes
org $0DB41D	; 0x06B41D
	db $09		; Originally $0D
