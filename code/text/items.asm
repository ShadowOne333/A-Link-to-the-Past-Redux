;****************************************************************
; 	Zelda 3 Redux - Items menu text data
;****************************************************************

;****************************************
; 	Table file
;****************************************
incsrc "code/text/items.txt"

;****************************************
; 	Pointers for item entries
;****************************************
; Pointer for default text
org $0DECD1	; 0x06ECD1
	lda defaultStart,x	; BD C9 F1, LDA $F1C9,x
	skip 3			; STA $122C,y
	lda defaultEnd,x	; BD D9 F1, LDA $F1D9,x

; Pointer for Bottle text
org $0DEBD6	; 0x06EBD6
	lda bottleStart,x	; BD 49 F4, LDA $F449,x
	skip 3			; STA $122C,y
	lda bottleEnd,x		; BD 59 F4, LDA $F459,x

; Pointer for Magic Powder text
org $0DEC0D	; 0x06EC0D
	lda powderStart,x	; BD 49 F5, LDA $F549,x
	skip 3			; STA $122C,y
	lda powderEnd,x		; BD 59 F5, LDA $F559,x

; Pointer for Flute/Ocarina text
org $0DEC7B	; 0x06EC7B
	lda fluteStart,x	; BD 69 F5, LDA $F569,x
	skip 3			; STA $122C,y
	lda fluteEnd,x		; BD 79 F5, LDA $F579,x

; Pointer for Mirror text
org $0DEC44	; 0x06EC44
	lda mirrorStart,x	; BD A9 F5, LDA $F5A9,x
	skip 3			; STA $122C,y
	lda mirrorEnd,x		; BD B9 F5, LDA $F5B9,x

; Pointer for Bow text
org $0DECB1	; 0x06ECB1
	lda bowStart,x		; BD C9 F5, LDA $F5C9,x
	skip 3			; STA $122C,y
	lda bowEnd,x		; BD D9 F5, LDA $F5D9,x

;****************************************
; 	Main item text
;****************************************

;----------------------------------------
; Default description
;----------------------------------------
; Start of the item's text in the Pause Screen
org $DF1C9	; 0x06F1C9
defaultStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
defaultEnd:	; 0x06F1D9, $0DF1D9
	db $6B,$25,$6C,$25,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; Bottle
;----------------------------------------
org $DF449	; 0x06F449
bottleStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
bottleEnd:	; 0x06F449, $0DF459
	db $6B,$25,$6C,$25,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; Magic Powder
;----------------------------------------
org $DF549	; 0x06F549
powderStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
powderEnd:	; 0x06F559, $0DF559
	db $6B,$25,$6C,$25,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; Flute / Ocarina
;----------------------------------------
org $DF569	; 0x06F569
fluteStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
fluteEnd:	; 0x06F579, $0DF579
	db $6B,$25,$6C,$25,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; Mirror
;----------------------------------------
org $DF5A9	; 0x06F5A9
mirrorStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
mirrorEnd:	; 0x06F5B9, $0DF5B9
	db $6B,$25,$6C,$25,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; Bow
;----------------------------------------
org $DF5C9	; 0x06F5C9
bowStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
bowEnd:		; 0x06F5D9, $0DF5D9
	db $6B,$25,$6C,$25,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; Bomb / Bombs
;----------------------------------------
org $0DF233	; 0x06F233
	db "B_O_M_B_S_"
	db !Blank,!Blank
;----------------------------------------
; Firerod / Fire Rod
;----------------------------------------
org $0DF271	; 0x06F271
	db "F_I_R_E_",!Blank,"R_O_D_"
	db !Blank,!Blank,!Blank
;----------------------------------------
; Icerod / Ice Rod
;----------------------------------------
org $0DF291	; 0x06F291
	db "I_C_E_",!Blank,"R_O_D_"
	db !Blank,!Blank,!Blank
;----------------------------------------
; Lamp / Lantern
;----------------------------------------
org $0DF311	; 0x06F311
	db "L_A_N_T_E_R_N_"
	db !Blank,!Blank,!Blank
;----------------------------------------
; Net / Bug Catching Net
;----------------------------------------
org $0DF369	; 0x06F369
	db "B_U_G_",!Blank,"C_A_T_C_H_I_N_G_",!Blank,"N_E_T_"
	db !Blank,!Blank,!Blank
;----------------------------------------
; Book of Mudora / Tome of Mudora
;----------------------------------------
org $0DF38B	; 0x06F38B
	db "T_O_M_E_",!Blank,"O_F_",!Blank,"M_U_D_O_R_A_"
	db !Blank,!Blank,!Blank
;----------------------------------------
; Cane of Byrna / Cane of Byra
;----------------------------------------
org $0DF3ED	; 0x06F3ED
	db "C_A_N_E_",!Blank,"O_F_",!Blank,"B_Y_R_N_A_"
	db !Blank,!Blank,!Blank
;----------------------------------------
; Life Medicine / Red Potion
;----------------------------------------
org $0DF48F	; 0x06F48F
	db "R_E_D_",!Blank,"P_O_T_I_O_N_"
	db !Blank,!Blank,!Blank,!Blank,!Blank
;----------------------------------------
; Magic Medicine / Green Potion
;----------------------------------------
org $0DF4AD	; 0x06F4AD
	db "G_R_E_E_N_",!Blank,"P_O_T_I_O_N_"
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; Blue Medicine / Blue Potion
;----------------------------------------
org $0DF4CD	; 0x06F4CD
	db "B_L_U_E_",!Blank,"P_O_T_I_O_N_"
	db !Blank,!Blank,!Blank
;----------------------------------------
; Bow / Bow (Fixed position)
;----------------------------------------
org $0DF5F5	; 0x06F5F5
	db "B_O_W_"
	db !Blank,!Blank,!Blank,!Blank,!Blank,!Blank,!Blank,!Blank,!Blank
;----------------------------------------
; Silver Arrows / 
;	(Squished tiles) Bow & Silver Arrows
;----------------------------------------
org $0DF60D	; 0x06F60D
	db !Bow,!Ampersand,!SilverArrows
	db !Blank,!Blank
;----------------------------------------

warnpc $0DF630
