;****************************************************************
; 	Max Consumables Fix (by Kasuto)
;****************************************************************
;----------------------------------------
; Table for decimal/hex Bomb/Arrow counters
org $0DDB40	; 0x06DB40
	; Bomb counter values (in Decimal)
	db $20,$25,$30,$35,$40,$45,$50,$60
	; Bomb upgrade values (In Hex)
	db $14,$19,$1E,$23,$28,$2D,$32,$3C

	; Original Max Comsumables table
	;db $20,$25,$30,$35,$40,$45,$50,$55
	;db $60,$65,$70,$75,$80,$85,$90,$99

; $DDB50, 0x06DB50
	; Arrow counter values (in Decimal)
	db $30,$40,$50,$60,$70,$80,$90,$99
	; Arrow upgrade values (In Hex)
	db $1E,$28,$32,$3C,$46,$50,$5A,$63

	; Original Max Comsumables table
	;db $14,$19,$1E,$23,$28,$2D,$32,$37
	;db $3C,$41,$46,$4B,$50,$55,$5A,$63

;----------------------------------------
; No. Check if max amount has been reached for bombs
org $06C6A7	; 0x0346A7
	cmp #$07	; Originally CMP #$0F (#$0F in Max)

; Table from where to check against the above value
org $06C6B2	; 0x0346B2
	lda $0DDB40,x	; Originally LDA $0DDB40,X ($0DDB50 in Max)

; No. Check if max amount has been reached for arrows
org $06C72A	; 0x03472A
	cmp #$07	; Originally CMP #$07 (#$0F in Max)

; Table from where to check against the above value
org $06C735	; 0x034735
	lda $0DDB50,x	; Originally LDA $0DDB40,X ($0DDB50 in Max)

; Table for decimal values for bombs
org $0DDC30	; 0x06DC30
	cmp $DB48,y	; Originally CMP $DB48,y ($DB50 in Max)

; Table for decimal values for arrows
org $0DDC52	; 0x06DC52
	cmp $DB58,y	; Originally CMP $DB58,y ($DB50 in Max)

;----------------------------------------
; Fixes rupees getting "stuck" in the pond
;----------------------------------------
; The original code had a bug that overwrote Heart Pieces if you went over the max amount of rupees while already maxed out in bombs/arrows.  The processor was through rep #$21 in 2 byte mode so stz $F36A also zero'd $F36B, where the pieces are stored. 
; Shifting the STZ $F36A below SEP #$30, where processor is set to 1 byte mode therefore should fix the problem (thanks to Conn for the fix)
org $06C6CF
	phb
	bra $78

org $06C72C
	beq $99

org $06C74A	; 0x3474A
	xba
	lda #$7E
	pha
	plb
	lda $F36A
	adc #$64
	rep #$21
	adc $F360
	sta $F360
	;stz $F36A
	plb
	sep #$30
	stz $F36A	; Originally located before the PLB, moved to fix it overwriting Heart Pieces at $F36B (fix by Conn)
	rts
