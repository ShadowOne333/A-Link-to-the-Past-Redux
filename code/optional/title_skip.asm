;****************************************************************
; 	Title Skip (by PowerPanda)
;****************************************************************

; This CMP blocks input on any screen indexed lower than 8, which includes the spinning triforce, sword, and castle backgrounds. By lowering it to 4, those screen indexes accept inputs.

org $0CC123	; 0x064123
	cmp #$04	; C9 04, Originally CMP #$08
