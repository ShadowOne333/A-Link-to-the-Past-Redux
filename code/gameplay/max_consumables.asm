;****************************************************************
; 	Max Consumables Fix (by Kasuto)
;****************************************************************

; Table for decimal/hex Bomb/Arrow counters
org $0DDB40	; 0x06DB40
	; Decimal/Hex table
	db $20,$25,$30,$35,$40,$45,$50,$55
	db $60,$65,$70,$75,$80,$85,$90,$99

	; Bomb & Arrow counters
	db $14,$19,$1E,$23,$28,$2D,$32,$37
	db $3C,$41,$46,$4B,$50,$55,$5A,$63

org $06C6A7
	cmp #$0F

org $06C6B2
	lda $0DDB40,x

org $06C72A
	cmp #$0F

org $06C735
	lda $0DDB40,x

org $0DDC30	; 0x06DC30
	cmp $DB50,y

org $0DDC52	; 0x06DC52
	cmp $DB50,y

; Fixes rupees getting "stuck" in the pond
; This "fix" causes issues with the Heart Pieces being deleted upon reaching the max amount and getting the rupees back
;org $06C6CF
;	phb
;	bra $78

;org $06C72C
;	beq $99

; org $06C74A
;	xba
;	lda #$7E
;	pha
;	plb
;	lda $F36A
;	adc #$64
;	rep #$21
;	adc $F360
;	sta $F360
;	stz $F36A
;	plb
;	sep #$30
;	rts
