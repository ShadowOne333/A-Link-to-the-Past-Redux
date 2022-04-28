;****************************************************************
;	Item Swap with L/R Buttons for New GFX
;		by rainponcho
;
; Allows the player to switch the equipped Y-button item by pressing L/R.
;****************************************************************
incsrc "code/loz3-dx/snes_utils.inc"
;****************************************
;	Game hooks
;****************************************
; Game hooks
namespace _l_r_item_switch
	pushpc

	%fseek($0288F9)
		jsl l_r_item_switch_init

	%fseek($02A55A)
		jsl l_r_item_switch_init

	pullpc
namespace off

;****************************************
;	Main code for LR item switch
;****************************************
namespace l_r_item_switch
	init:
		jsr LRButtonCode
		lda $F6
		and #$40
		rtl

	LRButtonCode:
		lda $F6
		bit #$10
		beq +
		jmp RCode
	+
		bit #$20
		beq +
		jmp LCode
	+
		rts

	RCode:
		jmp swap_item_next	; lda $0202
	LR_Exit:
		;beq RReturn
		phx
		tax
	RLoop:
		cpx #$0F
		beq RBottle1
		cpx #$10
		beq RBottle2
		cpx #$14
		bne +
		ldx #$00
	+
		inx

	RCheck:
		lda $7EF33F,x
		beq RLoop
	RLRStore:
		jmp LRStore
	RBottle1:
		ldx #$01
		bra RBottleCheck
	RBottle2:
		lda $7EF34F
		tax
	RBottleLoop:
		cpx #$04
		beq RBottleEnd
		inx
	RBottleCheck:
		lda $7EF35B,x
		beq RBottleLoop
		txa
		sta $7EF34F
		ldx #$10
		bra RLRStore
	RBottleEnd:
		ldx #$11
		bra RCheck
	RReturn:
		rts

	LCode:
		jmp swap_item_prev	; lda $0202
		;beq LReturn
		phx
		tax
	LLoop:
		cpx #$11
		beq LBottle1
		cpx #$10
		beq LBottle2
		cpx #$01
		bne +
		ldx #$15
	+
		dex
	LCheck:
		lda $7EF33F,x
		beq LLoop
	LLRStore:
		jmp LRStore
	LBottle1:
		ldx #$04
		bra LBottleCheck
	LBottle2:
		lda $7EF34F
		tax
	LBottleLoop:
		cpx #$01
		beq LBottleEnd
		dex
	LBottleCheck:
		lda $7EF35B,x
		beq LBottleLoop
		txa
		sta $7EF34F
		ldx #$10
		bra LLRStore
	LBottleEnd:
		ldx #$0F
		bra LCheck
	LReturn:
		rts

	LRStore:
		lda #$20	; SFX index
		sta $012F
		stx $0202
		%jsf($0DDB7F)
		plx
		rts

;----------------------------------------
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
		jmp LRStore ; Originally $07FBFB

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
namespace off


;****************************************
;	Old disassembly
;****************************************
;org $07FB79	; 0x03FB79
;	jml swap_item_next	

;----------------------------------------
; $07/FBBA AD 02 02    LDA $0202  [$07:0202]   A:0200 X:0004 Y:0002 P:envMXdiZc
; $07/FBBD F0 3B       BEQ $3B    [$FBFA]      A:0200 X:0004 Y:0002 P:envMXdiZc

;org $07FBBA	; 0x03FBBA
;	jml swap_item_prev

;****************************************
;	Main code for LR item switch
;****************************************

;org $3FFF40	; 0x1FFF40
;swap_item_next:
;	phx

	; No items
;	ldx $0202
;	beq swap_item_exit

	; Check bottle flag
;	lda $7F5021
;	beq swap_item_next_normal

	; Next bottle slot
;	lda $7F5020
;	tax
;	bra swap_item_next_bottle

;----------------------------------------

;swap_item_next_wrap:
;	ldx #$00

;swap_item_next_normal:
	; Check all normal items
;	inx
;	cpx #$15
;	beq swap_item_next_bottle_init

	; No item = continue
;	lda $7EF33F,x
;	beq swap_item_next_normal

;swap_item_normal_found:
;	lda #$00

;swap_item_bottle_flag:
;	sta $7F5021

;swap_item_exit:
;	jml $07FBFB

;----------------------------------------

;swap_item_next_bottle_init:
;	ldx #$00

;swap_item_next_bottle:
	; Check all bottle items
;	inx
;	cpx #$05
;	beq swap_item_next_wrap

	; Valid bottle
;	lda $7EF35B,x
;	beq swap_item_next_bottle

;swap_item_bottle_found:
	; Bottle 1-4
;	txa
;	sta $7F5020

	; Item #15-18
;	clc
;	adc #$14
;	tax

	; Set bottle flag
;	lda #$01
;	bra swap_item_bottle_flag

;----------------------------------------

;swap_item_prev:
;	phx

	; No items
;	ldx $0202
;	beq swap_item_exit

	; Check bottle flag
;	lda $7F5021
;	beq swap_item_prev_normal

;	lda $7F5020
;	tax
;	bra swap_item_prev_bottle

;----------------------------------------

;swap_item_prev_wrap:
;	ldx #$15

;swap_item_prev_normal:
	; Check all normal items
;	dex
;	beq swap_item_prev_bottle_init

	; No item = continue
;	lda $7EF33F,x
;	beq swap_item_prev_normal

;	bra swap_item_normal_found

;----------------------------------------

;swap_item_prev_bottle_init:
;	ldx #$05

;swap_item_prev_bottle:
	; Check all bottles
;	dex
;	beq swap_item_prev_wrap

	; Valid bottle
;	lda $7EF35B,x
;	beq swap_item_prev_bottle

;	bra swap_item_bottle_found

;----------------------------------------

;warnpc $FFFFF0	; 0x3FFFF0
