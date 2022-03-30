;******************************************************************************
;* pott_l2sword.asm
;* (c)2014 XaserLE, Spane, Conn
;*
;* https:;www.zeldix.net/t401-pots-destroyed-by-l2-l4-sword
;*
;* Allows the player to break pots with the sword.  Modified from the original patch to allow any sword, not just L2-L4.
;******************************************************************************

incsrc "snes_utils.inc"

; Game hooks
namespace _pott_l2sword
	pushpc

	%fseek($01DABD)
		jml pott_l2sword_smash
		nop
		nop
		nop
		nop

	%fseek($01DAFC)
		jml pott_l2sword_post
		nop

	pullpc
namespace off


; Main patch code
namespace pott_l2sword
	smash:
		lda $0301
		and #$0002
		beq +
		%jmf($01DAC5)
	+
		lda $0354
		and #$0027
		bne +
		%jmf($01DAB6)
	+
		lda $7EF359
		and #$00FF
		cmp #$0001
		bra +		; bra: L1+, bne: L2+
		%jmf($01DAB6)
	+
		%jmf($01DAC5)

	post:
		cmp #$4040
		beq +
		sec
		jsl switch
		%jmf($01DB16)
	    +
		lda $0301
		and #$0002
		bne +
		%jmf($01DAB6)
	    +
		%jmf($01DB01)

	switch:
		cmp #$1010
		bne ++
		pha
		lda $5D
		cmp #$1011
		bne +
		lda $2F
		and #$00FF
		cmp #$0002
		bne +
		lda $20
		sbc #$0002
		sta $20
	+
		pla
	++
		rtl
namespace off
