;****************************************************************
;		New GFX hack
;	Based on 24 Items Menu by Euclid
;****************************************************************

;****************************************
; Include fixes and add-ons for New GFX
;****************************************
incsrc code/menus/24items_menu_shovel.asm	; Make the shovel a separate item for 24 Item menu
incsrc code/menus/flute_fix.asm		; Fix flute being digged up constantly for the 24 Items menu
incsrc "code/menus/LR_item_swap.asm"	; LR item switching (by rainponcho)

;----------------------------------------
; Modifying spining hearts in the HUD (when gaining health) to accommodate for New GFX changes (found by PuzzleDude)

org $0DF151	; 0x06F151
	lda #$06	; Originally LDA #$68

;----------------------------------------

; New HUD position, from 6FB75 to 6FFC0


; * After hex editing = graphics must be changed!, so that the new magic bar is horizontal!       
