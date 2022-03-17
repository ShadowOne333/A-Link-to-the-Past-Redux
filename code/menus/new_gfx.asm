;****************************************************************
;	Flute fix for 24 Items Menu (by Conn)
;****************************************************************
; Modifying spining hearts in the HUD (when gaining health) to accommodate for New GFX changes (found by PuzzleDude)

org $0DF152 	; 0x06F152
	db $06		; Originally $68

;----------------------------------------

; New HUD position, from 6FB75 to 6FFC0


; * After hex editing = graphics must be changed!, so that the new magic bar is horizontal!       
