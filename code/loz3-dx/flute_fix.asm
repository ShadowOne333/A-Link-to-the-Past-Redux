;*****************************************************************
;* flute_fix.asm
;* (c)2014 Conn
;*
;* https:;www.zeldix.net/t398-cancel-flute-transport
;*
;* Allows the player to cancel the flute call by pressing B on the map screen.
;*****************************************************************

incsrc "snes_utils.inc"

; Game hooks
namespace _flute_fix
	pushpc

	%fseek($0AB78F)
		jml flute_fix_cancel_1
		nop
		nop

	%fseek($0AB7D7)
		nop
		nop

	%fseek($0AB7F6)
		jsl flute_fix_icon

	%fseek($0AB8ED)
		jsl flute_fix_cancel_2
        
	pullpc
namespace off


; Main patch code
namespace flute_fix
	cancel_1:
		lda $F2
		ora $F0
		and #$C0
		bne +
		%jmf($0AB79D)
	+
		inc $0200
		lda $F0
		cmp #$80
		bne ++
		lda #$01
		sta $7F5006
	++
		rtl

	cancel_2:
		lda $7F5006
		cmp #$01
		beq +
		%jsf($02EC39)
	+
		lda #$00
		sta $7F5006
		rtl

	icon:
		sta $0B
		ldx #$10
		lda $1A
		and #$10
		bne +
		lda $11
		cmp #$0A
		bne +
		lda #$7E
		sta $0D
		lda #$38
		sta $0C
		stz $0B
		clc
		lda $0E
		adc #$04
		sta $0E
		clc
		lda $0F
		adc #$04
		sta $0F
	+
		rtl
namespace off
