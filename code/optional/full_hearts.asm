;****************************************************************
; 	Start with Full Hearts (by PowerPanda)
;****************************************************************

; This is a data table that uses your heart containers as an index number, and sets your starting health accordingly.
; There is an alternate method to this which eliminates the lookup entirely. However, I felt that this method was cleaner.

org $09F4AC	; 0x04F4AC
	db $18,$18,$18,$18,$20,$28,$30,$38
	db $40,$48,$50,$58,$60,$68,$70,$78
	db $80,$88,$90,$98,$A0

; Original table:
	; db $18,$18,$18,$18,$18,$20,$20,$28
	; db $28,$30,$30,$38,$38,$38,$40,$40
	; db $40,$48,$48,$48,$50


