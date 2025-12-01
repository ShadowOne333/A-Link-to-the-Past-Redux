;****************************************************************
;	In-game Timer for 24 Items Menu (by Conn)
;****************************************************************
; Apply the patch after you inserted Euclid's code for a 24 items menu (do not apply the Parallel_Worlds_shovel.ips)

;org $0083E7	; 0x00003E7
%fseek($0083E7)
	jsl subroutine1	; $22E700, 22 00 E7 22

%fseek($0CCFDC)	; 0x064FDC
	jsl subroutine2|$800000	; $22E760, 22 60 E7 22
	nop

%fseek($0DDF15)	; 0x06DF15
	jsl subroutine3|$800000	; $22E780, 22 80 E7 22
	nop

%fseek($0DE914)	; 0x06E914
	dw $2C1B
	dw $2C19
	dw $2C19
	dw $2C19
	dw $2C19
	dw $2C19
	dw $2C19
	dw $2C19
	dw $2C19
	dw $6CFC
	dw $2C1C
	dw $2552
	dw $2561
	dw $2568
	dw $2562
	dw $2563
	dw $2550
	dw $255B
	dw $2562

%fseek($0DE9D5)	; 0x06E9D5
	lda #$2C1B
	sta $13AA
	lda #$2C19
	sta $13AE
	sta $13B0
	sta $13B2
	sta $13B4
	sta $13B6
	sta $13B8
	sta $13BA
	sta $13AC
	lda #$255F
	sta $13EC
	lda #$2554
	sta $13EE
	lda #$255D
	sta $13F0
	lda #$2553
	sta $13F2
	lda #$2550
	jsr $FFD0
	nop

%fseek($0DFFD0)	; 0x06FFD0
	sta $13F4
	lda #$255D
	sta $13F6
	lda #$2563
	sta $13F8
	lda #$2562
	sta $13FA
	rts

%fseek($1BB520)	; 0x0DB520
	lda $0303
	cmp #$07
	bne +		; D0 13
	lda $030F
	bne ++		; D0 13
	lda $01
	sec 
	sbc #$40
	bmi +		; 30 07
	lda $01
	sec 
	sbc #$4B
	bmi +++		; 30 05
+
	lda $01
	sta $F0
++
	rtl
+++
	lda #$40
	sta $F0
	stz $26
	stz $27
	bra +		; 80 1E
	rtl

	stz $27
	stz $28
	rtl

	db $FF

	lda $DC55	; B9 55 DC
	sta $6E
	sep #$30
	lda #$01
	sta $8E
	rep #$30
	rtl

	dw $FFFF

	stz $6E
	stz $38
	stz $8E
	rtl
+
	stz $28
	stz $3C
	stz $79
	stz $50
	stz $5E
	rtl

	bcc +		; 90 07
	lda $037A
	and #$10
	bne $02		; D0 02
+
	lda #$00
	rtl

; Modify to avoid 2MB ROM!
; Moved from $3FFF00 (0x1FFF00) to $07FE50 (0x03FE50)
%fseek($07FE50)	; 0x03FE50, 0xED bytes
subroutine1:
	sta $F6
	sty $FA
	rep #$30
	lda $7EE000
	dec
	bne +		; D0 14
	lda $7EF339
	inc
	cmp #$1770
	bcc ++		; 90 03
	lda #$0000
++
	sta $7EF339
	lda #$0E10
+
	sta $7EE000
	sep #$30
	rtl

subroutine2:
	lda #$0E10
	sta $7EE000
	ldy #$0000
	ldx $00
	rtl

subroutine3:
	rep #$30
	ldy #$0000
	lda $7EF339
-
	cmp #$000A
	bcc +		; 90 08
	sec
	sbc #$000A
	iny
	iny
	bra -		; 80 F3
+
	sta $00
	tya
	asl
	asl
	asl
	ora $00
	ldy #$0000
-
	cmp #$0060
	bcc +		; 90 07
	sec
	sbc #$0060
	iny
	bra -		; 80 F4
+
	ldx #$0000
	sta $00
	and #$000F
	asl
	tax
	lda.l timer_table,x	; $22E860,x
	sta $1376
	lda $00
	and #$00F0
	lsr
	lsr
	lsr
	tax
	lda.l timer_table,x	; $22E860,X
	sta $1374
	tya
	ldy #$0000
-
	cmp #$000A
	bcc +		; 90 08
	sec
	sbc #$000A
	iny
	iny
	bra -		; 80 F3
+
	sta $00
	tya
	asl
	asl
	asl
	ora $00
	sta $00
	and #$000F
	asl
	tax
	lda.l timer_table,x	; $22E860,x
	sta $1370
	lda $00
	and #$00F0
	lsr
	lsr
	lsr
	tax
	lda.l timer_table,x	; $22E860,x
	sta $136E
	lda $7E0AE0
	and #$00FF
	cmp #$00C0
	bne +		; D0 05
	lda #$2CF5
	bra ++		; 80 03
+
	lda #$241D
++
	sta $1372
	sep #$30
	inc $0207
	lda $F0
	rtl

timer_table:
	dw $2414,$2415,$2416,$2417
	dw $2418,$2424,$2425,$2426
	dw $2427,$2428


