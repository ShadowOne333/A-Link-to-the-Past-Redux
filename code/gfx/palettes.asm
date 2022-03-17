;*****************************************************************
; 	Palette and sprite attributes modifications
;*****************************************************************

;----------------------------------------
; Change Link's hair colour to match his official artwork
org $1BD308	; 0x0DD308
	dw $7FFF, $237E, $11B7, $369E, $14A5, $065E, $1078, $06FE, $3647, $3B68, $0A4A, $12EF, $2A5C, $1571, $7A18
	; Originally $7FFF, $237E, $11B7, $369E, $14A5, $065E, $1078, $599D, $3647, $3B68, $0A4A, $12EF, $2A5C, $1571, $7A18

;----------------------------------------
; Change the King of Hyrule's tunic to Red (to match official depictions of him from subsequent games)
org $0E9E90	; 0x071E90
	db $37		; Originally $3B (Thanks, Conn!)

; Modify a thief's palette in Lost Woods to not have such odd colors with the palette changes
org $0DB41D	; 0x06B41D
	db $09		; Originally $0D

;----------------------------------------

