;*****************************************************************
; 	Palette and attribute modifications
;*****************************************************************

; Change Agahnim's palette to the original Green palette
org $1BD5A4	; 0x0DD5A4
	dw $7FFF, $4118, $1636, $3B1D, $14A5, $1F52, $120D

; Modify a thief's palette in Lost Woods to be the original colours for Green Agahnim
org $0DB41D	; 0x06B41D
	db $0D
