;*****************************************************************
; 	Enable the FMV for MSU-1
;*****************************************************************

;----------------------------------------
%fseek($0082E2)	; 0x0002E2
	jsl $23F640
	nop

;----------------------------------------
%fseek($0CCF7F)	; 0x064F7F
	jml $23F680

;----------------------------------------
; Modify to avoid 2MB ROM!
%fseek($23F000)	; 0x11F000
	sep #$20
	pha
	lda $4210
	pla
	rtl

	sep #$20
	pha
	lda $4211
	lda #$01
	sta $0012
	pla
	rtl

	sep #$20
	stz $4200
	jsr $F043
	jsr $F0A4
	jsr $F193
	nop #3

	lda #$01
	sta $420D
	jsr $F0BB
	jsr $F0B3
	jsr $F700
	jsr $F159

	sep #$20
	jsr $F416
	cli
	jsr $F44D
	jmp $F600
;----------------------------------------
	stz $420B
	stz $420C
	stz $4310
	stz $4311
	stz $4312
	stz $4313
	stz $4314
	stz $4320
	stz $4321
	stz $4322
	stz $4323
	stz $4324
	stz $4330
	stz $4331
	stz $4332
	stz $4333
	stz $4334
	stz $4340
	stz $4341
	stz $4342
	stz $4343
	stz $4344
	stz $4350
	stz $4351
	stz $4352
	stz $4353
	stz $4354
	stz $4360
	stz $4361
	stz $4362
	stz $4363
	stz $4364
	rts
-
	lda $4212
	and #$80
	bne -		; BNE $F9
-
	lda $4212
	and #$80
	beq -		; BEQ $F9
	rts

	sep #$20
	rep #$10
	stz $2130
	rts
;----------------------------------------
	sep #$20
	rep #$10
	stz $4200
	stz $420B
	stz $420C
	ldx #$0000
	stx $2116
	lda #$09
	sta $0010
	ldx #$F286
	lda #$23
	stx $000B
	sta $000A
	ldx #$0000
	stx $000E
	lda #$18
	sta $000D
	jsr $F6D8
	ldx #$3F80
	stx $2116
	lda #$01
	sta $0010
	ldx #$F2C8
	lda #$23
	stx $000B
	sta $000A
	ldx #$0100
	stx $000E
	lda #$18
	sta $000D
	jsr $F6D8
	ldx #$7F80
	stx $2116
	lda #$01
	sta $0010
	ldx #$F3C8
	lda #$23
	stx $000B
	sta $000A
	ldx #$0020
	stx $000E
	lda #$18
	sta $000D
	jsr $F6D8
	ldx #$0000
	stx $2102
	lda #$08
	sta $0010
	ldx #$F286
	lda #$23
	stx $000B
	sta $000A
	ldx #$0220
	stx $000E
	lda #$04
	sta $000D
	jsr $F6D8
	rts

	sep #$20
	rep #$10
	lda #$13
	sta $2105
	lda #$3C
	sta $2107
	lda #$00
	sta $210B
	lda #$01
	sta $212C
	lda #$01
	sta $212D
	lda #$20
	sta $2125
	lda #$10
	sta $2126
	lda #$EF
	sta $2127
	lda #$40
	sta $2130
	stz $2121
	lda #$0F
	sta $2100
	rts

	sep #$20
	rep #$10
	stz $4200
	lda #$FF
	sta $4201
	stz $4202
	stz $4203
	stz $4204
	stz $4205
	stz $4206
	stz $4207
	stz $4208
	stz $4209
	stz $420A
	stz $420B
	stz $420C
	stz $420D
;----------------------------------------
	lda #$8F
	sta $2100
	stz $2101
	stz $2102
	stz $2103
	stz $2105
	stz $2106
	stz $2107
	stz $2108
	stz $2109
	stz $210A
	stz $210B
	stz $210C
	stz $210D
	stz $210D
	stz $210E
	stz $210E
	stz $210F
	stz $210F
	stz $2110
	stz $2110
	stz $2111
	stz $2111
	stz $2112
	stz $2112
	stz $2113
	stz $2113
	stz $2114
	stz $2114

	lda #$80
	sta $2115
	stz $2116
	stz $2117
	stz $211A
	stz $211B

	lda #$01
	sta $211B
	stz $211C
	stz $211C
	stz $211D
	stz $211D
	stz $211E
	sta $211E
	stz $211F
	stz $211F
	stz $2120
	stz $2120
	stz $2121
	stz $2123
	stz $2124
	stz $2125
	stz $2126
	stz $2127
	stz $2128
	stz $2129
	stz $212A
	stz $212B
	stz $212C
	stz $212D
	stz $212E
	stz $212F
	stz $2130
	stz $2131

	lda #$E0
	sta $2132
	stz $2133
	rts

;----------------------------------------
; Some table of sorts... ?
;%fseek($23F286)	; 0x11F286
l_F286:
	db $00,$00,$28,$8F,$7F,$0F,$11,$0F
	db $01,$8F,$00,$38,$00,$00,$97,$01
	db $10,$00,$01,$87,$01,$10,$00,$00
	db $87,$01,$10,$00,$01,$77,$01,$10
	db $00,$00,$77,$01,$10,$00,$01,$67
	db $01,$10,$00,$00,$67,$01,$10,$00
	db $01,$57,$01,$10,$00,$00,$17,$01
	db $00,$28,$BC,$7F,$BC,$01,$BC,$01
	db $FC,$00

;----------------------------------------
; Another table of sorts... ?
; %fseek($23F2C8)	; 0x11F2C8
; l_F2C8:
	dw $0000
	dw $0000,$0002,$0004,$0006,$0008,$000A,$000C,$000E
	dw $0020,$0022,$0024,$0026,$0028,$002A,$0000,$0000
	dw $002C,$002E
	dw $0040,$0042,$0044,$0046,$0048,$004A,$004C,$004E
	dw $0060,$0062,$0064,$0066,$0000,$0000
	dw $0068,$006A,$006C,$006E
	dw $0080,$0082,$0084,$0086,$0088,$008A,$008C,$008E
	dw $00A0,$00A2,$0000,$0000
	dw $00A4,$00A6,$00A8,$00AA,$00AC,$00AE
	dw $00C0,$00C2,$00C4,$00C6,$00C8,$00CA,$00CC,$00CE
	dw $0000,$0000
	dw $00E0,$00E2,$00E4,$00E6,$00E8,$00EA,$00EC,$00EE
	dw $0100,$0102,$0104,$0106,$0108,$010A,$0000,$0000
	dw $010C,$010E
	dw $0120,$0122,$0124,$0126,$0128,$012A,$012C,$012E
	dw $0140,$0142,$0144,$0146,$0000,$0000
	dw $0148,$014A,$014C,$014E
	dw $0160,$0162,$0164,$0166,$0168,$016A,$016C,$016E
	dw $0180,$0182,$0000,$0000
	dw $0184,$0186,$0188,$018A,$018C,$018E
	dw $01A0,$01A2,$01A4,$01A6,$01A8,$01AA,$01AC,$01AE
	dw $0000,$0000
	dw $01C0,$01C2,$01C4,$01C6,$01C8,$01CA,$01CC,$01CE
	dw $01E0,$01E2,$01E4,$01E6,$01E8,$01EA,$0000,$0100
	dw $0100

; What is this?
; Seems like code, but the opcodes used are really weird.
	db $29,$E8,$6C,$C4,$F2,$E8,$20,$C4
	db $F3,$78,$20,$F3,$D0,$F3,$E8,$2C
	db $C4,$F2,$E8,$00,$C4,$F3,$78,$00
	db $F3,$D0,$F3,$E8,$3C,$C4,$F2,$E8
	db $00,$C4,$F3,$78,$00,$F3,$D0,$F3
	db $2F,$FE

; l_F416:
	sep #$20
	rep #$10

	ldx #$0000
	stx $2000
	stx $2002
-
	bit $2000
	bmi -		; BMI $FB
	stx $2004
-
	bit $2000
	bvs -		; BVS $FB
	ldx #$0000
	stx $2116
	lda #$04
	sta $0009
	sta $210B
	ldx #$2001
	stx $4302
	stz $4304
	lda #$01
	sta $0008
	rts

	sep #$20
	rep #$10
	stz $0020
	lda $2001
	sta $0006
	lda $2001
	sta $0007
	lda $2001
	sta $0004
	sta $0021
	lda $2001
	sta $0002
	lda $2001
	sta $0003
	lda #$01
	sta $0005
	ldx $0006
	dex
-
	lda $0012	; l_F47E
	beq -		; BEQ $FB
	jsr $F590
	lda $0020
	cmp #$02
	bpl +		; BPL $15
	lda #$18
	sta $4301
	lda #$09
	sta $4300
	ldy #$3F80
	sty $4305
	lda #$01
	sta $420B
+
	inc $0020
	lda $0020
	cmp $0004
	bne -		; BNE $D1
	lda $0008
	beq +		; BEQ $08
	lda #$01
	jsr $F5B0
	stz $0008
+
	lda $0005
	cmp $0003
	bne +		; BNE $08
	stz $0005
	lda $0002
	bra ++		; BRA $06
+
	lda $0021
	inc $0005
++
	sta $0004
	stz $0020
	dex 
	beq ++		; BEQ $3D
	stz $2121
	lda #$22
	sta $4301
	lda #$08
	sta $4300
	ldy #$0200
	sty $4305
	lda #$01
	sta $420B
	lda $0009
	bne +		; BNE $11
	lda #$04
	sta $210B
	sta $0009
	ldy #$0000
	sty $2116
	jmp $F580
+
	stz $210B
	stz $0009
	ldy #$4000
	sty $2116
	jmp $F580
++
	stz $2007
	rts

	rep #$20
	sep #$10
	lda #$BBAA
-
	cmp $2140
	bne -		; BNE $FB
	lda $C003E8
	sta $2142
	ldx #$01
	stx $2141
	ldx #$CC
	stx $2140
-
	cpx $2140
	bne -		; BNE $FB
	sep #$20
	ldx #$00
	lda $C003EC
	tay
--
	lda $C003ED,X
	sta $2141
	stx $2140
-
	cpx $2140
	bne -		; BNE $FB
	inx 
	dey 
	bne --		; BNE $ED
	rep #$20
	lda $C003EA
	sta $2142
	stz $2141
	ldx $2140
	inx #2
	stx $2140
-
	cpx $2140
	bne -		; BNE $FB
	sep #$20
	rep #$10
	rts

;----------------------------------------

%fseek($23F580)	; 0x11F580
	jsr $F5E0
	lda $F4
	beq +		; BEQ $03
	ldx #$0001
+
	jmp $F47E
	db $00,$00,$00
	jsr $F5E0
	lda $F4
	beq +		; BEQ $03
	ldx #$0001
+
	stz $0012
	rts

;----------------------------------------

%fseek($23F5B0)	; 0x11F5B0
	lda #$FF
	sta $2006
	lda #$23
	sta $2004
	sta $0130
	stz $2005
-
	bit $2000
	bvs -		; BVS $FB
	lda #$01
	sta $2007
	lda #$F1
	sta $2140
	sta $0133
	rts

;----------------------------------------

%fseek($23F5E0)	; 0x11F5E0
	phy 
	lda $4219
	sta $F0
	tay
; BVS $80
	eor $F8
	and $F0
	sta $F4
	sty $F8
	ply 
	rts

;----------------------------------------

%fseek($23F600)	; 0x11F600
	sep #$30
	lda #$01
	sta $7F501F
	stz $420C
	lda #$81
	sta $4200
	lda #$13
	sta $2107
	lda #$03
	sta $2108
	lda #$63
	sta $2109
	lda #$22
	sta $210B
	lda #$07
	sta $210C
	lda $C8
	asl
	tax
	rep #$20
	jml $0CCF83

;----------------------------------------

%fseek($23F640)	; 0x11F640
	sep #$30
	lda $7F501F
	cmp #$02
	beq +		; BEQ $04
	lda $012A
	rtl
+
	lda #$01
	sta $0012
	lda $4211
	lda $012A
	rtl

;----------------------------------------

%fseek($23F680)	; 0x11F680
	stz $C9		; $64 C9
	lda $2002
	cmp #$53
	beq +		; BEQ $06
	rep #$20
	jml $0CCF83
+
	lda $C8
	cmp #$D000
	asl $AF
	cmp $03
	bvs $80		; BVS $80 -> EOR $F8
	asl $01C9
	bne $06		; BNE $06
	lda $7008C5
	bra ++		; BRA $04
+
	lda $700DC5
++
	beq +		; BEQ $06
	rep #$20
	jml $0CCF83
+
	lda $012E
	sta $2142
	stz $012E
	jmp $F015

;----------------------------------------

%fseek($23F6D0)	; 0x11F6D0
	rti		; $40
-
	wai		; $CB
	lda $ABCDEF
	bra -		; BRA $F9
l_23F6D8:
	rep #$10
	sep #$20
	lda $0010
	sta $4300
	lda $000D
	sta $4301
	lda $000A
	ldx $000B
	stx $4302
	sta $4304
	ldx $000E
	stx $4305
	lda #$01
	sta $420B
	rts

	lda #$02
	sta $7F501F
	sep #$20
	rep #$10
	stz $420B
	stz $420C
	lda #$00
	sta $4310
	lda #$00
	sta $4311
	lda #$23
	ldy #$F288
	sty $4312
	sta $4314
	lda #$00
	sta $4320
	lda #$07
	sta $4321
	lda #$23
	ldy #$F2BF
	sty $4322
	sta $4324
	lda #$03
	sta $4330
	lda #$0D
	sta $4331
	lda #$23
	ldy #$F291
	sty $4332
	sta $4334
	ldx #$00B9
	stx $4209
	lda #$21
	sta $4200
	lda #$0E
	sta $420C
	jsr $F5E0
	rts 

;----------------------------------------

warnpc $23F763	; 0x11F763


