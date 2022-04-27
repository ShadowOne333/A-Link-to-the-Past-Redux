;****************************************************************
;	Keep Shovel for 24 Items Menu (by Conn)
;****************************************************************
; Apply the patch after you inserted Euclid's code for a 24 items menu (do not apply the Parallel_Worlds_shovel.ips)

org $06B05A	; 0x3305A
	jsl $07FBD0	; 22 D0 FB 07
	nop #02		; EA EA

org $079AF9	; 0x039AF9
	ldx #$A313	; A2 13 A3

org $07A166	; 0x03A166
	lda $7F5020	; AF 20 50 7F

org $07A313	; 0x03A313
	jml $0DE520	; 5C 20 E5 0D

org $07A344	; 0x03A344
	jsl $0DEDB8	; 22 B8 ED 0D
	nop

org $07A3CF	; 0x03A3CF
	jsl $0DEDC1	; 22 C1 ED 0D
	nop

org $07FBD0	; 0x03FBD0
	lda $7EF34C	; AF 4C F3 7E
	and #$03	; 29 03
	cmp #$00	; C9 00
	bne +		; D0 06
	lda $7EF34F	; AF 4F F3 7E
	and #$03	; 29 03
+	rtl		; 6B

org $09850E	; 0x04850E
; A table of sorts?
	db $4F

org $0CCDCC	; 0x064DCC
	jsl $0DEDA8	; 22 A8 ED 0D
	nop

org $0DDE0C	; 0x06DE0C
	jsr $7F50	; 20 50 7F

org $0DDE2A	; 0x06DE0C
	jsr $7F50	; 20 50 7F

org $0DE169	; 0x06E169
	jsr $7F50	; 20 50 7F

org $0DE475	; 0x06E475
; Another table?
	db $11

org $0DE51D	; 0x06E51D
	jmp $ED39	; 4C 39 ED
	lda $7F5021	; AF 21 50 7F
	cmp #$00	; C9 00
	beq +		; F0 04
	jml $07A15B	; 5C 5B A1 07
+	lda $0202	; AD 02 02
	cmp #$0D	; C9 0D
	bne +		; D0 08
	lda $7EF34C 	; AF 4C F3 7E
	jml $07A31D	; 5C 1D A3 07
+	lda $7EF34F 	; AF 4F F3 7E
	cmp #$00	; C9 00
	bne +		; D0 04
	jml $07A312 	; 5C 12 A3 07
+	cmp #$01	; C9 01
	bne +		; D0 04
	jml $07A32C	; 5C 2C A3 07
+	jml $07A31D	; 5C 1D A3 07

org $0DEBB0	; 0x06EBB0
	jsr $ED80	; 20 80 ED

org $0DEBBC	; 0x06EBBC
	jsr $7F50	; 20 50 7F

org $0DED2E	; 0x06ED2E
	jsr $EE98	; 20 98 EE
	nop #04		; EA EA EA EA

org $0DED57	; 0x06ED57
	txy		; 9B
	tax		; AA
	lda $7F5021	; AF 21 50 7F
	cmp #$0001	; C9 01 00
	beq +	 	; F0 0B
	lda $7EF34F	; AF 4F F3 7E
	and #$00FF	; 29 FF 00
	tyx		; BB
	jmp $EDF9	; 4C F9 ED
+	lda $7F5020	; AF 20 50 7F
	and #$00FF	; 29 FF 00
	tax		; AA
	lda $7EF35B,x	; BF 5B F3 7E
	and #$00FF	; 29 FF 00
	tyx		; BB
	jmp $EDF9	; 4C F9 ED
	lda $0202	; AD 02 02
	and #$00FF	; 29 FF 00
	cmp #$0010	; C9 10 00
	bne +		; D0 04
	lda #$0018	; A9 18 00
	tax		; AA
+	lda $0202	; AD 02 02
	rts

	sta $02		; 85 02
	sep #$30	; E2 30
	lda $7F5021	; AF 21 50 7F
	cmp #$00	; C9 00
	bne +		; D0 06
	cpx #$10	; E0 10
	bne $02		; D0 02
	ldx #$0D	; A2 0D
+	rep #$30	; C2 30
	rts

	stz $0202	; 9C 02 02
	lda #$00	; A9 00
	sta $7F5020	; 8F 20 50 7F
	sta $7F5021	; 8F 21 50 7F
	lda #$01	; A9 01
	rtl		; 6B

	lda #$01	; A9 01
	sta $037A	; 8D 7A 03
	sta $0112	; 8D 12 01
	rtl

	sta $3A	; 85 3A
	stz $037A	; 9C 7A 03
	stz $0112	; 9C 12 01
	rtl

org $0DEDD9	; 0x06EDD9
	jmp $ED57	; 4C 57 ED
	nop

org $0DEDE3	; 0x06EDE3
	jsr $7F50	; 20 50 7F
	and #$00FF	; 29 FF 00
	tax		; AA
	jsr $EE8D	; 20 8D EE

org $0DEDFF	; 0x06EDFF
	db $80

org $0DEE17	; 0x06EE17
	jsr $7F50	; 20 50 7F

org $0DEE8D	; 0x06EE8D
	lda #$0001	; A9 01 00
	sta $7F5021	; 8F 21 50 7F
	lda #$0010	; A9 10 00
	rts

	lda $7F5021	; AF 21 50 7F
	cmp #$01	; C9 01
	beq +		; F0 03
	lda #$10	; A9 10
	rts

+	lda #$00	; A9 00
	sta $7F5021	; 8F 21 50 7F
	lda $7F5020	; AF 20 50 7F
	clc		; 18
	adc #$14	; 69 14
	rts

org $0DFB60	; 0x06FB60
	jsr $ED93	; 20 93 ED

org $1EDD01	; 0x0F5D01
	lda $7F5020	; AF 20 50 7F

