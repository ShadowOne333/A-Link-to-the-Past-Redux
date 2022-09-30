;*****************************************************************
; 	Restore the original Bomb & Arrows amounts
;*****************************************************************
;----------------------------------------
org $0DDB40	; 0x06DB40
	; Bomb counter values (in Decimal)
	db $20,$30,$40,$50,$60,$70,$80,$99
	; Bomb upgrade values (In Hex)
	db $14,$1E,$28,$32,$3C,$46,$50,$63

; $DDB50, 0x06DB50
	; Arrow counter values (in Decimal)
	db $30,$40,$50,$60,$70,$80,$90,$99
	; Arrow upgrade values (In Hex)
	db $1E,$28,$32,$3C,$46,$50,$5A,$63
;----------------------------------------
