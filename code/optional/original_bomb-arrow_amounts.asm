;*****************************************************************
; 	Restore the original Bomb & Arrows amounts
;*****************************************************************
;----------------------------------------
org $0DDB40	; 0x06DB40
	; Bomb counter values (in Decimal)
	db $10,$15,$20,$25,$30,$35,$40,$50
	; Bomb upgrade values (In Hex)
	db $0A,$0F,$14,$19,$1E,$23,$28,$32

; $DDB50, 0x06DB50
	; Arrow counter values (in Decimal)
	db $30,$35,$40,$45,$50,$55,$60,$70
	; Arrow upgrade values (In Hex)
	db $1E,$23,$28,$2D,$32,$37,$3C,$46
;----------------------------------------
