;*****************************************************************
; 		Ocarina Warp Location
;*****************************************************************
; Change the 1st entry of the Ocarina Warps in the Overworld Map to the new location below the Tower

;-------------------------------------
org $0AB763	; 0x053763
	db $70	; X-pos, db $80
	skip 7
	db $07	; db $06
	skip 7
	db $5B	; Y-pos, db $5B
	skip 7
	db $01	; db $03

;-------------------------------------

