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

;****************************************
; 	Main item text
;****************************************

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
