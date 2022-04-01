;****************************************************************
; 	Zelda 3 Redux - Items menu text data
;****************************************************************

;****************************************
; 	Table file
;****************************************
incsrc "code/text/tbl/items.txt"

;****************************************
; 	Pointers for item entries
;****************************************
; Pointer for default text
org $0DECD1	; 0x06ECD1
	lda defaultStart,x	; BD C9 F1, LDA $F1C9,x
	skip 3			; STA $122C,y
	lda defaultEnd,x	; BD D9 F1, LDA $F1D9,x

; Pointer for Mushroom (3) text
org $0DEBD6	; 0x06EBD6
	lda mushroom3Start,x	; BD 49 F4, LDA $F449,x
	skip 3			; STA $122C,y
	lda mushroom3End,x	; BD 59 F4, LDA $F459,x

; Pointer for Magic Powder text
org $0DEC0D	; 0x06EC0D
	lda powderStart,x	; BD 49 F5, LDA $F549,x
	skip 3			; STA $122C,y
	lda powderEnd,x		; BD 59 F5, LDA $F559,x

; Pointer for Flute/Ocarina text
org $0DEC7B	; 0x06EC7B
	lda flute1Start,x	; BD 69 F5, LDA $F569,x
	skip 3			; STA $122C,y
	lda flute1End,x		; BD 79 F5, LDA $F579,x

; Pointer for Mirror text
org $0DEC44	; 0x06EC44
	lda mirrorStart,x	; BD A9 F5, LDA $F5A9,x
	skip 3			; STA $122C,y
	lda mirrorEnd,x		; BD B9 F5, LDA $F5B9,x

; Pointer for Bow & Arrows text
org $0DECB1	; 0x06ECB1
	lda arrowsStart,x	; BD C9 F5, LDA $F5C9,x
	skip 3			; STA $122C,y
	lda arrowsEnd,x		; BD D9 F5, LDA $F5D9,x

;****************************************
; 	Main item text
;****************************************

;----------------------------------------
; Default description / BOW
;----------------------------------------
; Start of the item's text in the Pause Screen
org $DF1C9	; 0x06F1C9
defaultStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,"B_O_"
defaultEnd:	; 0x06F1D9, $0DF1D9
	db "W_",!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; BOOMERANG
;----------------------------------------
org $DF1E9	; 0x06F1E9
boomerangStart:
	db !Blank,!Blank,!Blank,"B_O_O_M_E_"
boomerangEnd:	; 0x06F1F9, $0DF1F9
	db "R_A_N_G_",!Blank,!Blank,!Blank,!Blank
;----------------------------------------
; HOOKSHOT
;----------------------------------------
org $DF209	; 0x06F209
hookshotStart:
	db !Blank,!Blank,!Blank,!Blank
	db "H_O_O_K_"
hookshotEnd:	; 0x06F219, $0DF219
	db "S_H_O_T_"
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; BOMBS
;----------------------------------------
org $DF229	; 0x06F229
bombStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,"B_O_M_"
bombEnd:	; 0x06F239, $0DF239
	db "B_S_",!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; MUSHROOM
;----------------------------------------
org $DF249	; 0x06F249
mushroomStart:
	db !Blank,!Blank,!Blank,!Blank
	db "M_U_S_H_"
mushroomEnd:	; 0x06F259, $0DF259
	db "R_O_O_M_"
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; FIRE ROD
;----------------------------------------
org $DF269	; 0x06F269
firerodStart:
	db !Blank,!Blank,!Blank,!Blank
	db "F_I_R_E_"
firerodEnd:	; 0x06F279, $0DF279
	db !Blank,"R_O_D_",!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; ICE ROD
;----------------------------------------
org $DF289	; 0x06F289
icerodStart:
	db !Blank,!Blank,!Blank,!Blank
	db "I_C_E_",!Blank
icerodEnd:	; 0x06F299, $0DF299
	db "R_O_D_",!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; BOMBOS (Medallion)
;----------------------------------------
org $DF2A9	; 0x06F2A9
bombosStart:
	;db "B_O_M_B_O_S_",!Blank,"M_"
	;db "E_D_A_L_L_I_O_N"
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,"B_O_M_"
bombosEnd:	; 0x06F2B9, $0DF2B9
	db "B_O_S_",!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; ETHER (Medallion)
;----------------------------------------
org $DF2C9	; 0x06F2C9
etherStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,"E_T_H_"
etherEnd:	; 0x06F2D9, $0DF2D9
	db "E_R_",!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; QUAKE (Medallion)
;----------------------------------------
org $DF2E9	; 0x06F2E9
quakeStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,"Q_U_A_"
quakeEnd:	; 0x06F2F9, $0DF2F9
	db "K_E_",!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; LANTERN
;----------------------------------------
org $DF309	; 0x06F309
lampStart:
	db !Blank,!Blank,!Blank,!Blank
	db "L_A_N_T_"
lampEnd:	; 0x06F319, $0DF319
	db "E_R_N_",!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; MAGIC HAMMER
;----------------------------------------
org $DF329	; 0x06F329
hammerStart:
	db !Blank,!Blank,"M_A_G_I_C_",!Blank
hammerEnd:	; 0x06F339, $0DF339
	db "H_A_M_M_E_R_",!Blank,!Blank
;----------------------------------------
; SHOVEL
;----------------------------------------
org $DF349	; 0x06F349
shovelStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,"S_H_O_"
shovelEnd:	; 0x06F359, $0DF359
	db "V_E_L_",!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; BUG-CATCHING NET
;----------------------------------------
org $DF369	; 0x06F369
bugStart:
	db "B_U_G_-_C_A_T_C_"
bugEnd:		; 0x06F379, $0DF379
	db "H_I_N_G_",!Blank,"N_E_T_"
;----------------------------------------
; TOME OF MUDORA
;----------------------------------------
org $DF389	; 0x06F389
mudoraStart:
	db !Blank,"T_O_M_E_",!Blank,"O_F_"
mudoraEnd:	; 0x06F399, $0DF399
	db !Blank,"M_U_D_O_R_A_",!Blank
;----------------------------------------
; MUSHROOM (2)
;----------------------------------------
org $DF3A9	; 0x06F3A9
mushroom2Start:
	db !Blank,!Blank,!Blank,!Blank
	db "M_U_S_H_"
mushroom2End:	; 0x06F3B9, $0DF3B9
	db "R_O_O_M_"
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; CANE OF SOMARIA
;----------------------------------------
org $DF3C9	; 0x06F3C9
somariaStart:
	db "C_A_N_E_",!Blank,"O_F_",!Blank
somariaEnd:	; 0x06F3D9, $0DF3D9
	db "S_O_M_A_R_I_A_",!Blank
;----------------------------------------
; CANE OF BYRNA
;----------------------------------------
org $DF3E9	; 0x06F3E9
byrnaStart:
	db !Blank,!Blank,"C_A_N_E_",!Blank,"O_"
byrnaEnd:	; 0x06F3F9, $0DF3F9
	db "F_",!Blank,"B_Y_R_N_A_",!Blank
;----------------------------------------
; MAGIC CAPE
;----------------------------------------
org $DF409	; 0x06F409
capeStart:
	db !Blank,!Blank,!Blank,"M_A_G_I_C_"
capeEnd:	; 0x06F419, $0DF419
	db !Blank,"C_A_P_E_",!Blank,!Blank,!Blank
;----------------------------------------
; BLANK
;----------------------------------------
org $DF429	; 0x06F429
blankStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
blankEnd:	; 0x06F439, $0DF439
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; MUSHROOM (3)
;----------------------------------------
org $DF449	; 0x06F449
mushroom3Start:
	db !Blank,!Blank,!Blank,!Blank
	db "M_U_S_H_"
mushroom3End:	; 0x06F459, $0DF459
	db "R_O_O_M_"
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; BOTTLE
;----------------------------------------
org $DF469	; 0x06F469
bottleStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,"B_O_T_"
bottleEnd:	; 0x06F479, $0DF479
	db "T_L_E_",!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; RED POTION
;----------------------------------------
org $DF489	; 0x06F489
lifeStart:
	db !Blank,!Blank,!Blank
	db "R_E_D_",!Blank,"P_"
lifeEnd:	; 0x06F499, $0DF499
	db "O_T_I_O_N_",!Blank,!Blank,!Blank
;----------------------------------------
; GREEN POTION
;----------------------------------------
org $DF4A9	; 0x06F4A9
magicStart:
	db !Blank,!Blank
	db "G_R_E_E_N_",!Blank
magicEnd:	; 0x06F4B9, $0DF4B9
	db "P_O_T_I_O_N_",!Blank,!Blank
;----------------------------------------
; BLUE POTION
;----------------------------------------
org $DF4C9	; 0x06F4C9
cureallStart:
	db !Blank,!Blank
	db "B_L_U_E_",!Blank,"P_"
cureall:	; 0x06F4D9, $0DF4D9
	db "O_T_I_O_N_",!Blank,!Blank,!Blank
;----------------------------------------
; FAIRY
;----------------------------------------
org $DF4E9	; 0x06F4E9
faerieStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,"F_A_I_"
faerieEnd:	; 0x06F4F9, $0DF4F9
	db "R_Y_",!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; BEE
;----------------------------------------
org $DF509	; 0x06F509
beeStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,"B_E_"
beeEnd:	; 0x06F519, $0DF519
	db "E_",!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; GOLDEN BEE
;----------------------------------------
org $DF529	; 0x06F529
goodbeeStart:
	db !Blank,!Blank,!Blank
	db "G_O_L_D_E_"
goodbeeEnd:	; 0x06F539, $0DF539
	db "N_",!Blank,"B_E_E_"
	db !Blank,!Blank,!Blank
;----------------------------------------
; MAGIC POWDER
;----------------------------------------
org $DF549	; 0x06F549
powderStart:
	db !Blank,!Blank,"M_A_G_I_C_",!Blank
powderEnd:	; 0x06F559, $0DF559
	db "P_O_W_D_E_R_",!Blank,!Blank
;----------------------------------------
; OCARINA (1)
;----------------------------------------
org $DF569	; 0x06F569
flute1Start:
	db !Blank,!Blank,!Blank,!Blank
	db "O_C_A_R_"
flute1End:	; 0x06F579, $0DF579
	db "I_N_A_",!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; OCARINA (2)
;----------------------------------------
org $DF589	; 0x06F589
flute2Start:
	db !Blank,!Blank,!Blank,!Blank
	db "O_C_A_R_"
flute2End:	; 0x06F599, $0DF599
	db "I_N_A_",!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; MAGIC MIRROR
;----------------------------------------
org $DF5A9	; 0x06F5A9
mirrorStart:
	db !Blank,!Blank,"M_A_G_I_C_",!Blank
mirrorEnd:	; 0x06F599, $0DF599
	db "M_I_R_R_O_R_",!Blank,!Blank
;----------------------------------------
; BOW AND ARROWS
;----------------------------------------
org $DF5C9	; 0x06F5C9
arrowsStart:
	db !Blank,"B_O_W_"
	db !Blank,"A_N_D_"
arrowsEnd:	; 0x06F5D9, $0DF5D9
	db !Blank,"A_R_R_O_W_S_",!Blank
;----------------------------------------
; BOW 
;----------------------------------------
org $DF5E9	; 0x06F5E9
bowStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,"B_O_"
bowEnd:		; 0x06F5F9, $0DF5F9
	db "W_",!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; BOW & SILVER ARROWS
;----------------------------------------
org $DF609	; 0x06F609
silverStart:
	db !Blank,!Blank,!Bow,!Ampersand
	db !SilverArrows,!Blank,!Blank
org $DF619	; 0x06F619, $0DF619
silverEnd:
	; Portion of the "Silver Arrows" text goes here
;----------------------------------------

warnpc $0DF629
