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
	lda fluteStart,x	; BD 69 F5, LDA $F569,x
	skip 3			; STA $122C,y
	lda fluteEnd,x		; BD 79 F5, LDA $F579,x

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
; Boomerang
;----------------------------------------
org $DF1E9	; 0x06F1E9
boomerangStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
boomerangEnd:	; 0x06F1F9, $0DF1F9
	db !Boomerang
;----------------------------------------
; Hookshot
;----------------------------------------
org $DF209	; 0x06F209
hookshotStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
hookshotEnd:	; 0x06F219, $0DF219
	db "H_O_O_K_S_H_O_T_"
;----------------------------------------
; Bomb / Bombs
;----------------------------------------
org $DF229	; 0x06F229
bombStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
bombEnd:	; 0x06F239, $0DF239
	db "B_O_M_B_"
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; Mushroom
;----------------------------------------
org $DF249	; 0x06F249
mushroomStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
mushroomEnd:	; 0x06F259, $0DF259
	db "M_U_S_H_R_O_O_M_"
;----------------------------------------
; Firerod
;----------------------------------------
org $DF269	; 0x06F269
firerodStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
firerodEnd:	; 0x06F279, $0DF279
	db "F_I_R_E_R_O_D_",!Blank
;----------------------------------------
; Icerod
;----------------------------------------
org $DF289	; 0x06F289
icerodStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
icerodEnd:	; 0x06F299, $0DF299
	db "I_C_E_R_O_D_",!Blank,!Blank
;----------------------------------------
; Bombos (Medallion)
;----------------------------------------
org $DF2A9	; 0x06F2A9
bombosStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
bombosEnd:	; 0x06F2B9, $0DF2B9
	db "B_O_M_B_O_S_",!Blank,!Blank
;----------------------------------------
; Ether (Medallion)
;----------------------------------------
org $DF2C9	; 0x06F2C9
etherStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
etherEnd:	; 0x06F2D9, $0DF2D9
	db "E_T_H_E_R_",!Blank,!Blank
;----------------------------------------
; Quake (Medallion)
;----------------------------------------
org $DF2E9	; 0x06F2E9
quakeStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
quakeEnd:	; 0x06F2F9, $0DF2F9
	db "Q_U_A_K_E_",!Blank,!Blank,!Blank
;----------------------------------------
; Lamp
;----------------------------------------
org $DF309	; 0x06F309
lampStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
lampEnd:	; 0x06F319, $0DF319
	db "L_A_M_P_",!Blank,!Blank,!Blank,!Blank
;----------------------------------------
; Magic Hammer
;----------------------------------------
org $DF329	; 0x06F329
hammerStart:
	db "M_A_G_I_C_",!Blank,!Blank,!Blank
hammerEnd:	; 0x06F339, $0DF339
	db !Blank,!Blank,"H_A_M_M_E_R_"
;----------------------------------------
; Shovel
;----------------------------------------
org $DF349	; 0x06F349
shovelStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
shovelEnd:	; 0x06F359, $0DF359
	db "S_H_O_V_E_L_",!Blank,!Blank
;----------------------------------------
; Bug-Catching Net
;----------------------------------------
org $DF369	; 0x06F369
bugStart:
	db $00,$24,$01,$24,$02,$24,$03,$24
	db $04,$24,$05,$24,$06,$24,$07,$24
bugEnd:	; 0x06F379, $0DF379
	db $08,$24,$09,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; Book of Mudora
;----------------------------------------
org $DF389	; 0x06F389
mudoraStart:
	db "B_O_O_K_",!Blank,"O_F_",!Blank
mudoraEnd:	; 0x06F399, $0DF399
	db "M_U_D_O_R_A_",!Blank,!Blank
;----------------------------------------
; Mushroom (2)
;----------------------------------------
org $DF3A9	; 0x06F3A9
mushroom2Start:
	db !Blank,!Blank,!Blank,!Blank
mushroom2End:	; 0x06F3B9, $0DF3B9
	db "M_U_S_H_R_O_O_M_",!Blank
;----------------------------------------
; Cane of Somaria
;----------------------------------------
org $DF3C9	; 0x06F3C9
somariaStart:
	db "C_A_N_E_",!Blank,"O_F_",!Blank
somariaEnd:	; 0x06F3D9, $0DF3D9
	db !Blank,"S_O_M_A_R_I_A_"
;----------------------------------------
; Cane of Byrna
;----------------------------------------
org $DF3E9	; 0x06F3E9
byrnaStart:
	db "C_A_N_E_",!Blank,"O_F_",!Blank
byrnaEnd:	; 0x06F3F9, $0DF3F9
	db !Blank,!Blank,!Blank,"B_Y_R_N_A_"
;----------------------------------------
; Magic Cape
;----------------------------------------
org $DF409	; 0x06F409
capeStart:
	db "M_A_G_I_C_",!Blank,!Blank,!Blank
capeEnd:	; 0x06F419, $0DF419
	db !Blank,!Blank,!Blank,"C_A_P_E_",!Blank
;----------------------------------------
; Blank
;----------------------------------------
org $DF429	; 0x06F429
blankStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
blankEnd:	; 0x06F439, $0DF439
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; Mushroom (3)
;----------------------------------------
org $DF449	; 0x06F449
mushroom3Start:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
mushroom3End:	; 0x06F459, $0DF459
	db "M_U_S_H_R_O_O_M_",!Blank
;----------------------------------------
; Bottle
;----------------------------------------
org $DF469	; 0x06F469
bottleStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
bottleEnd:	; 0x06F479, $0DF479
	db "B_O_T_T_L_E_",!Blank,!Blank
;----------------------------------------
; Life Medicine
;----------------------------------------
org $DF489	; 0x06F489
lifeStart:
	db "L_I_F_E_",!Blank,!Blank,!Blank,!Blank
lifeEnd:	; 0x06F499, $0DF499
	db "M_E_D_I_C_I_N_E_"
;----------------------------------------
; Magic Medicine
;----------------------------------------
org $DF4A9	; 0x06F4A9
magicStart:
	db "M_A_G_I_C_",!Blank,!Blank,!Blank
magicEnd:	; 0x06F4B9, $0DF4B9
	db "M_E_D_I_C_I_N_E_"
;----------------------------------------
; Cure-All Medicine
;----------------------------------------
org $DF4C9	; 0x06F4C9
cureallStart:
	db "C_U_R_E_-_A_L_L_"
cureallEnd:	; 0x06F4D9, $0DF4D9
	db "M_E_D_I_C_I_N_E_"
;----------------------------------------
; Faerie
;----------------------------------------
org $DF4E9	; 0x06F4E9
faerieStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
faerieEnd:	; 0x06F4F9, $0DF4F9
	db "F_A_E_R_I_E_",!Blank,!Blank
;----------------------------------------
; Bee
;----------------------------------------
org $DF509	; 0x06F509
beeStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
beeEnd:	; 0x06F519, $0DF519
	db "B_E_E_",!Blank,!Blank,!Blank,!Blank,!Blank
;----------------------------------------
; Good Bee
;----------------------------------------
org $DF529	; 0x06F529
goodbeeStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
goodbeeEnd:	; 0x06F539, $0DF539
	db "G_O_O_D_",!Blank,"B_E_E_"
;----------------------------------------
; Magic Powder
;----------------------------------------
org $DF549	; 0x06F549
powderStart:
	db "M_A_G_I_C_",!Blank,!Blank,!Blank
powderEnd:	; 0x06F559, $0DF559
	db !Blank,"P_O_W_D_E_R_",!Blank
;----------------------------------------
; Flute / Ocarina (1)
;----------------------------------------
org $DF569	; 0x06F569
flute1Start:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
flute1End:	; 0x06F579, $0DF579
	db "F_L_U_T_E_",!Blank,!Blank,!Blank
;----------------------------------------
; Flute / Ocarina (2)
;----------------------------------------
org $DF589	; 0x06F589
flute2Start:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
flute2End:	; 0x06F599, $0DF599
	db "F_L_U_T_E_",!Blank,!Blank,!Blank
;----------------------------------------
; Mirror
;----------------------------------------
org $DF5A9	; 0x06F5A9
mirrorStart:
	db "M_A_G_I_C_",!Blank,!Blank,!Blank
mirrorEnd:	; 0x06F599, $0DF599
	db !Blank,!Blank,"M_I_R_R_O_R_"
;----------------------------------------
; Bow & Arrows
;----------------------------------------
org $DF5C9	; 0x06F5C9
arrowsStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
arrowsEnd:	; 0x06F5D9, $0DF5D9
	db !Bow,!Ampersand,!Arrows
;----------------------------------------
; Bow 
;----------------------------------------
org $DF5E9	; 0x06F5E9
bowStart:
	db !Blank,!Blank,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
bowEnd:		; 0x06F5F9, $0DF5F9
	db !Bow,!Blank,!Blank
	db !Blank,!Blank,!Blank,!Blank
;----------------------------------------
; Bow & Silver Arrows 
;----------------------------------------
org $DF609	; 0x06F609
silverStart:
	db !Bow,!Blank,!Ampersand,!Blank,!Blank,!Blank
silverEnd:	; 0x06F619, $0DF619
	db !SilverArrows
;----------------------------------------

warnpc $0DF630
