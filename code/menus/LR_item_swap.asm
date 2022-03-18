;****************************************************************
;	Item Swap with L/R Buttons for New GFX
;		by rainponcho
;****************************************************************

;****************************************
;	Hijacks
;****************************************
; $07/FB79 AD 02 02    LDA $0202  [$07:0202]   A:0200 X:0004 Y:0002 P:envMXdiZc
; $07/FB7C F0 3B       BEQ $3B    [$FBB9]      A:0200 X:0004 Y:0002 P:envMXdiZc

org $07FB79	; 0x03FB79
	jml swap_item_next

;----------------------------------------
; $07/FBBA AD 02 02    LDA $0202  [$07:0202]   A:0200 X:0004 Y:0002 P:envMXdiZc
; $07/FBBD F0 3B       BEQ $3B    [$FBFA]      A:0200 X:0004 Y:0002 P:envMXdiZc

org $07FBBA	; 0x03FBBA
	jml swap_item_prev

;****************************************
;	Main code for LR item switch
;****************************************

org $3FFF40
swap_item_next:
	phx

	; No items
	ldx $0202
	beq swap_item_exit

	; Check bottle flag
	lda $7F5021
	beq swap_item_next_normal

	; Next bottle slot
	lda $7F5020
	tax
	bra swap_item_next_bottle

;----------------------------------------

swap_item_next_wrap:
	ldx #$00

swap_item_next_normal:
	; Check all normal items
	inx
	cpx #$15
	beq swap_item_next_bottle_init

	; No item = continue
	lda $7EF33F,x
	beq swap_item_next_normal

swap_item_normal_found:
	lda #$00

swap_item_bottle_flag:
	sta $7F5021

swap_item_exit:
	jml $07FBFB

;----------------------------------------

swap_item_next_bottle_init:
	ldx #$00

swap_item_next_bottle:
	; Check all bottle items
	inx
	cpx #$05
	beq swap_item_next_wrap

	; Valid bottle
	lda $7EF35B,x
	beq swap_item_next_bottle

swap_item_bottle_found:
	; Bottle 1-4
	txa
	sta $7F5020

	; Item #15-18
	clc
	adc #$14
	tax

	; Set bottle flag
	lda #$01
	bra swap_item_bottle_flag

;----------------------------------------

swap_item_prev:
	phx

	; No items
	ldx $0202
	beq swap_item_exit

	; Check bottle flag
	lda $7F5021
	beq swap_item_prev_normal

	lda $7F5020
	tax
	bra swap_item_prev_bottle

;----------------------------------------

swap_item_prev_wrap:
	ldx #$15

swap_item_prev_normal:
	; Check all normal items
	dex
	beq swap_item_prev_bottle_init

	; No item = continue
	lda $7EF33F,x
	beq swap_item_prev_normal

	bra swap_item_normal_found

;----------------------------------------

swap_item_prev_bottle_init:
	ldx #$05

swap_item_prev_bottle:
	; Check all bottles
	dex
	beq swap_item_prev_wrap

	; Valid bottle
	lda $7EF35B,x
	beq swap_item_prev_bottle

	bra swap_item_bottle_found

;----------------------------------------

warnpc $3FFFF0
