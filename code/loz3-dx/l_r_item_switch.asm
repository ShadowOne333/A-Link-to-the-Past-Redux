;*****************************************************************
;* l_r_item_switch.asm
;* (c)2016 Kazuto
;*
;* http:;forum.metroidconstruction.com/index.php/topic,3940
;*
;* Allows the player to switch the equipped Y-button item by pressing L/R.
;*****************************************************************

incsrc "snes_utils.inc"

; Game hooks
namespace _l_r_item_switch
	pushpc

	%fseek($0288F9)
		jsl l_r_item_switch_init

	%fseek($02A55A)
		jsl l_r_item_switch_init

	pullpc
namespace off


; Main patch code
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
		lda $0202
		beq RReturn
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
		lda $0202
		beq LReturn
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
namespace off
