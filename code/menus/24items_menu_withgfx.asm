;****************************************************************
;	24 Items Menu (by Euclid & Conn)
;****************************************************************
; Apply the patch after you inserted Euclid's code for a 24 items menu

; 0x004FAB up to 0x00521C are all 2bpp compressed graphics, which are already imported in through the zcompress script

org $0DDDAB	; 0x06DDAB
	jsr $ED27
	jsr $E399
	lda #$01
	jsr $E3C8
	jsr $E3D9
	jsr $E47F
	lda #$01
	jsr $E3C8
	lda #$01
	jsr $E3C8
	jsr $E55B
	jsr $E647
	jsr $E9C8
	jsr $ECE9
	lda #$01
	jsr $E3C8
	nop #9
	jsr $EE57
	nop #3

org $0DDE3D	; 0x06DE3D
	bra $08		; Originally BNE $08

org $0DDE9D	; 0x06DE9D
	bra $05		; Originally BNE $05

org $0DDEB0	; 0x06DEB0
	jmp $EDFA

org $0DDEC5	; 0x06DEC5
	lda #$18	; Originally LDA #$14

org $0DDECF	; 0x06DECF
	cmp #$19	; Originally CMP #$15

org $0DDEF7	; 0x06DEF7
	jsr $E630	; Originally JSR $DEBD

org $0DDF0C	; 0x06DF0C
	jsr $E629	; Originally JSR $DECB

org $0DDF8D	; 0x06DF8D
	jsr $E47F	; Originally JSR $E3D9
	jsr $EB3A	; Originally JSR $EB3A
	bra $0A		; Originally LDA $0202
; 0x06DF95
	fillbyte $FF : fill 10

org $0DE3DB	; 0x06E3DB
	lda #$2CFB	; Originally LDA #$3CFB
	and $00
	sta $1182	; Originally STA $1142
	ora #$8000
	sta $1682	; Originally STA $14C2
	ora #$4000
	sta $16BC	; Originally STA $14E6
	eor #$8000
	sta $11BC	; Originally STA $1166
	ldx #$0000
	ldy #$0012	; Originally LDY #$000C
	lda #$2CFC	; Originally LDA #$3CFC
	and $00
	sta $11C2,x	; Originally STA $1181,X
	ora #$4000
	sta $11FC,x	; Originally STA $11A6,X

org $0DE415	; 0x06E415
	ldy #$001B	; Originally LDY #$0010
	lda #$2C82  	
	and $00
	sta $1184,x
	ora #$8000
	sta $1684,x
	lda #$2C83
	and $00
	sta $11C4,x
	sta $1204,x
	lda #$2CF5
	sta $1244,x
	inx #2
	dey
	bpl $DC		; 10 DC
	ldx #$0000
	ldy #$0008
	lda #$2C01
	and $00
	sta $11D6,x
	inc
	sta $1216,x
	inc
	inx #2
	dey
	bpl $F3		; 10 F3
	sep #$30
	rts 

; Draw items pointer table
	dw $F629	; Arrow and bow
	dw $F651	; Boomerang
	dw $F669	; Hookshot
	dw $F679	; No bombs / Bombs
	dw $F689	; Mushroom / Magic powder
	dw $F6A1	; Fire rod
	dw $F6B1	; Ice rod
	dw $F6C1	; Bombos
	dw $F6D1	; Ether
	dw $F6E1	; Quake
	dw $F6F1	; Lantern?
	dw $F701	; Hack had $F601 here, possible typo? Most likely this is the Hammer
	dw $F711	; Ocarina?
	dw $F731	; But-Catching Net?
	dw $F741	; Book of Mudora
	dw $F751	; No bottle
	dw $F799	; Cane of Somaria
	dw $F7A9	; Cane of Byrna
	dw $F7B9	; Magic Cape
	dw $F7C9	; Magic Mirror

	rep #$30
	ldx #$0000
	ldy #$0012
	lda #$2CF5
	sta $1284,x
	sta $12C4,x
	sta $1304,x
	sta $1344,x
	sta $1384,x
	sta $13C4,x
	sta $1404,x
	sta $1444,x
	sta $1484,x
	sta $14C4,x
	sta $1504,x
	sta $1544,x
	sta $1584,x
	inx #2
	dey 
	bpl $D4
	lda #$12C0
	sta $00
	ldx #$0000
	txy 
	lda $00
	clc 
	adc #$0006
	sta $00
	lda $7EF340,x
	and #$00FF
	sta $02
	lda $E457,y	; Draw items pointer table
	sta $04
	phx 
	phy 
	jsr $E372
	ply 
	plx 
	inx 
	iny #2
	lda $00
	and #$0024
	cmp #$0024
	bne $D6
	lda $00
	clc 
	adc #$009C
	sta $00
	cpx #$0018
	bne $C9		; D0 C9 
	lda #$F751
	sta $04
	ldx #$0000
	lda #$150C
	clc
	adc #$0006
	sta $00
	lda $7EF35C,x
	and #$00FF
	sta $02
	phx 
	jsr $E372
	plx 
	inx 
	lda $00
	cpx #$0004
	bne $E4
	lda #$2CF5
	sta $1458
	sta $145A
	sta $1498
	sta $149A
	jmp $ED39

org $0DE52F	; 0x06E52F
	fillbyte $FF : fill 44

org $0DE55B	; 0x06E55B
	rep #$30
	ldx #$0000
	ldy #$000D
	lda #$2C1C
	sta $126A,x
	lda #$2CF5
	sta $126E,x
	sta $1270,x
	sta $1272,x
	sta $1274,x
	sta $1276,x
	sta $1278,x
	sta $127A,x
	sta $126C,x
	txa
	clc
	adc #$0040
	tax
	dey
	bpl $D6
	lda #$2C1B
	sta $132A
	ldx #$0000
	ldy #$0007
	lda #$2C19
	sta $132C,X
	inx #2
	dey
	bpl $F5
	lda $040C
	and #$00FF
	cmp #$00FF
	beq $1E
	lsr
	tax
	lda $7EF368
	asl
	dex
	bpl $FC
	bcc $12
	lda #$12AE
	sta $00
	lda #$0001
	sta $02
	lda #$F8C1
	sta $04
	jsr $E372
	lda $040C
	and #$00FF
	cmp #$00FF
	beq $1E
	lsr
	tax
	lda $7EF364
	asl
	dex
	bpl $FC
	bcc $12
	lda #$12B2
	sta $00
	lda #$0001
	sta $02
	lda #$F899
	sta $04
	jsr $E372
	sep #$30
	rts 

; Inventory box drawing?
	dw $12C6
	dw $12CC
	dw $12D2
	dw $12D8
	dw $12DE
	dw $12E4
	dw $1386
	dw $138C
	dw $1392
	dw $1398
	dw $139E
	dw $13A4
	dw $1446
	dw $144C
 	dw $1452
	dw $1458
	dw $145E
	dw $1464
	dw $1506
	dw $150C
	dw $1512
	dw $1518
	dw $151E
	dw $1524

	jsr $DECB
	jsr $DECB
	rts

	jsr $DEBD
	jsr $DEBD
	rts

org $0DE637	; 0x06E637
	fillbyte $FF : fill 16

org $0DE649	; 0x06E649
	ldx #$0000
	ldy #$000F
	lda #$2CAF
	sta $1690,x
	lda #$2CF5
	sta $16D0,x
	lda #$2CF2
	sta $1710,x
	inx #2
	dey
	bpl $E9
	lda #$2CF1
	sta $170E
	ora #$4000
	sta $1730
	lda #$2CAA
	sta $168E
	ora #$4000
	sta $16B0
	lda #$2CF0
	sta $16CE
	ora #$4000
	sta $16F0
	sep #$30
	rts

org $0DE68D	; 0x06E68D
	fillbyte $FF : fill 41

org $0DE7B9	; 0x06E7B9
	lda #$1608	; Originally LDA #$16D0

org $0DE7CF	; 0x06E7CF
	lda #$160E	; Originally LDA #$16C8

org $0DE7E5	; 0x06E7E5
	lda #$1614	; Originally LDA #$16D8

org $0DE7FB	; 0x06E7FB
	lda #$161A
	sta $00
	lda $7EF357
	and #$00FF
	sta $02
	lda #$F821
	sta $04
	jsr $E372
	lda #$1626
	sta $00
	lda $7EF359
	and #$00FF
	cmp #$00FF
	bne $03
	lda #$0000
	sta $02
	lda #$F839
	sta $04
	jsr $E372
	lda #$1620
	sta $00
	lda $7EF35A
	and #$00FF
	sta $02
	lda #$F861
	sta $04
	jsr $E372
	lda #$162C
	sta $00
	lda $7EF35B
	and #$00FF
	sta $02
	lda #$F881
	sta $04
	jsr $E372
	rts

	fillbyte $FF : fill 4

org $0DE914	; 0x06E914
	dw $2C1C
	dw $2CF5
	dw $2C1D
	dw $2C1E
	dw $2C1F
	dw $2C20
	dw $2C21
	dw $2CF5
	dw $2CF5
	dw $6CFC
	dw $2C1C
	dw $2CF5
	dw $2C2D
	dw $2C2E
	dw $2C2F
	dw $2C30
	dw $2C31
	dw $2CF5
	dw $2CF5
	dw $6CFC
	dw $2C1C

org $0DE94E	; 0x06E94E
	dw $6CFC
	dw $2C1C

org $0DE962	; 0x06E962
	dw $6CFC
	dw $2C1C

org $0DE976	; 0x06E976
	dw $6CFC
	dw $2C1C

org $0DE98A	; 0x06E98A
	dw $6CFC
	dw $2C1C

org $0DE99E	; 0x06E99E
	dw $6CFC
	dw $2C1C

org $0DE9B2	; 0x06E9B2
	dw $6CFC
	dw $2C1C
	dw $24F5
	dw $24F5
	dw $24F5
	dw $24F5
	dw $24F5
	dw $24F5
	dw $24F5
	dw $24F5
	dw $6CFC

org $0DE9D8	; 0x06E9D8
	lda #$2C14
	ldy #$0004
	sta $13AE,x
	inc
	inx #2
	dey
	bpl $F7
	cpx #$0044
	bcs $08
	lda #$2C24
	ldx #$0040
	bra $E7
	bra $1F

org $0DE9F6	; 0x06E9F6
	fillbyte $FF : fill 31

org $0DEA15	; 0x06EA15
	lda #$1472	; Originally LDA #$13B2

org $0DEA2B	; 0x06EA2B
	lda #$152E	; Originally LDA #$146E

org $0DEA45	; 0x06EA45
	lda #$1536	; Originally LDA #$1476

org $0DEA6A	; 0x06EA6A
	sta $13AA,x
	lda $E928,x
	sta $13EA,x
	lda $E93C,x
	sta $142A,x
	lda $E950,x
	sta $146A,x
	lda $E964,x
	sta $14AA,x
	lda $E978,x
	sta $14EA,x
	lda $E98C,x
	sta $152A,x
	lda $E9A0,x
	sta $156A,x
	bra $04
	nop #4

org $0DEAB0	; 0x06EAB0
	sta $1470
	lda #$2D45
	sta $1472

org $0DEAC5	; 0x06EAC5
	sta $1474
	lda #$2D45
	sta $1476

org $0DEADA	; 0x06EADA
	sta $14EE
	lda #$2D45
	sta $14F0

org $0DEAEF	; 0x06EAEF
	sta $14F2
	lda #$2D45
	sta $14F4

org $0DEB04	; 0x06EB04
	sta $14F6
	lda #$2D45
	sta $14F8

org $0DEB19	; 0x06EB19
	sta $1570
	lda #$2D45
	sta $1572

org $0DEB2E	; 0x06EB2E
	sta $1574
	lda #$2D45
	sta $1576

org $0DEB45	; 0x06EB45
	ldy $E5F9,x
	bra $16

	fillbyte $FF : fill 22

org $0DEBB6	; 0x06EBB6
	cmp #$0015	; Originally CMP #$0010
	bcc $33		; Originally BNE $33

org $0DEBDA	; 0x06EBDA
	bne $16
	lda $F459,x
	sta $16E0,y

org $0DEC11	; 0x06EC11
	bne $16
	lda $F559,x
	sta $16E0,y

org $0DEC48	; 0x06EC48
	bne $16
	lda $F5B9,x
	sta $16E0,y

org $0DEC7F	; 0x06EC7F
	bne $16
	lda $F579,x
	sta $16E0,y

org $0DECB5	; 0x06ECB5
	bne $16
	lda $F5D9,x
	sta $16E0,y

org $0DECD5	; 0x06ECD5
	bne $16
	lda $F1D9,x
	sta $16E0,y

org $0DECEB	; 0x06ECEB
	ldx #$0000
	ldy #$001B
	lda #$2C19
	sta $15C4,x
	lda #$2CF5
	sta $1604,x
	sta $1644,x
	inx #2
	dey
	bpl $EC
	lda #$2C1A
	sta $15EA
	jsr $E7B7
	lda #$1632
	sta $00
	lda $7EF36B
	and #$00FF
	sta $02
	lda #$F911
	sta $04
	jsr $E372
	sep #$30
	rts

	lda $0202
	cmp #$10
	bne $0A
	lda $7EF34F
	clc
	adc #$14
	sta $0202
	rts

	lda $7EF343
	and #$00FF
	beq $03
	lda #$0001
	sta $02
	lda #$12D8
	sta $00
	lda #$F679
	sta $04
	jsr $E372
	sep #$30
	rts

; 0x06ED57
	fillbyte $FF : fill 124

org $0DEDD4	; 0x06EDD4
	cpx #$0010
	bne $04
	txy
	tax
	bra $14
	cpx #$0015
	bcc $17
	lda $7EF34F
	and #$00FF
	tax
	lda #$0010
	sta $0202
	tay
	lda $7EF35B,X
	and #$00FF
	tyx
	rts

	lda $0202
	cmp #$10
	bne $02
	clc
	rts

	cmp #$15
	bcs $04
	tax 
	jmp $DEB3
	sec 
	sbc #$14
	tax 
	lda $7EF35B,x
	beq $EC
	txa 
	sta $7EF34F
	sec
	rts
	nop #5

org $0DEE75	; 0x06EE75
	lda #$12B6

org $0DEE8A	; 0x06EE8A
	sep #$30
	rts

	fillbyte $FF : fill 41

;----------------------------------------
; Modifying spining hearts in the HUD (when gaining health) to accommodate for New GFX changes (found by PuzzleDude)

org $0DF151	; 0x06F151
	lda #$06	; Originally LDA #$68

;----------------------------------------
; Include the items names for the 24 Items Menu (New GFX)
incsrc code/text/items.asm

;----------------------------------------

; Continue with 24 Items code
org $0DFB0B	; 0x06FB0B
	sta $7EC72A	; Originally STA $7EC71E
	lda #$24
	sta $7EC72B	; Originally STA $7EC71F
	lda #$87
	sta $7EC72C	; Originally STA $7EC720
	lda #$24
	sta $7EC72D	; Originally STA $7EC721

org $0DFB52	; 0x06FB52
	jsr $EDD4
	nop #12

;----------------------------------------
; New HUD position, from 6FB74 to 6FFC0

org $0DFB74	; 0x06FB74
	sta $7EC778	; Originally STA $7EC74A

org $0DFB7C	; 0x06FB7C
	sta $7EC77A	; Originally STA $7EC74C

org $0DFB84	; 0x06FB84
	sta $7EC7B8	; Originally STA $7EC78A

org $0DFB8C	; 0x06FB8C
	sta $7EC7BA	; Originally STA $7EC78C

org $0DFBA2	; 0x06FBA2
	lda #$06	; Originally LDA #$68

org $0DFBCE	; 0x06FBCE
	lda #$06	; Originally LDA #$68

; * After hex editing = graphics must be changed!, so that the new magic bar is horizontal!

;----------------------------------------

org $0DFC09	; 0x06FC09
	sep #$30
	lda $7EF36E
	inc #3
	and #$FC
	tay
	ldx #$00
	txa
	cmp $FDEF,y
	beq $0E
	lda #$5E
	sta $7EC788,x
	sta $7EC7C8,x
	inx #2
	bra $EC
	iny
	lda $FDEF,y
	sta $7EC788,x
	sta $7EC7C8,x
	inx #2
	cpx #$10
	beq $0E
	lda #$4F
	sta $7EC788,x
	sta $7EC7C8,x
	inx #2
	bra $EE
	rep #$30
	
	nop #10

org $0DFC68	; 0x06FC68
	sta $7EC75C	; Originally STA $7EC750

org $0DFC74	; 0x06FC74
	sta $7EC75E	; Originally STA $7EC752

org $0DFC80	; 0x06FC80
	sta $7EC760	; Originally STA $7EC754

org $0DFC98	; 0x06FC98
	sta $7EC764	; Originally STA $7EC758

org $0DFCA4	; 0x06FCA4
	sta $7EC766	; Originally STA $7EC75A

org $0DFCBC	; 0x06FCBC
	sta $7EC76A	; Originally STA $7EC75E

org $0DFCC8	; 0x06FCC8
	sta $7EC76C	; Originally STA $7EC760

org $0DFCEA	; 0x06FCEA
	sta $7EC770	; Originally STA $7EC764

org $0DFCF3	; 0x06FCF3
	sta $7EC730	; Originally STA $7EC724

; Tilemapping data
; MP Tilemap
org $0DFDEF	; 0x06FDEF up to 0x06FE76
.mp_tilemap:
	dw $4F00,$FFFF,$5F00,$FFFF
	dw $4C00,$FFFF,$4D00,$FFFF
	dw $4E00,$FFFF,$5F02,$FFFF
	dw $4C02,$FFFF,$4D02,$FFFF
	dw $4E02,$FFFF,$5F04,$FFFF
	dw $4C04,$FFFF,$4D04,$FFFF
	dw $4E04,$FFFF,$5F06,$FFFF
	dw $4C06,$FFFF,$4D06,$FFFF
	dw $4E06,$FFFF,$5F08,$FFFF
	dw $4C08,$FFFF,$4D08,$FFFF
	dw $4E08,$FFFF,$5F0A,$FFFF
	dw $4C0A,$FFFF,$4D0A,$FFFF
	dw $4E0A,$FFFF,$5F0C,$FFFF
	dw $4C0C,$FFFF,$4D0C,$FFFF
	dw $4E0C,$FFFF,$5F0E,$FFFF
	dw $4C0E,$FFFF,$4D0E,$FFFF
	dw $4E0E,$FFFF,$5E0E,$FFFF  

; HUD Tilemap
org $0DFE77	; 0x06FE77 up to 0x06FFC0
; Changes for New GFX begin at $0DFEBB (0x06FEBB)
.hud_tilemap:
	; Small key = 2871, Bottom-Left Mirror = 2872, ...
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$3CA8
	dw $207F,$207F,$2C88,$2C89
	dw $207F,$20A7,$20A9,$207F
	dw $2871,$207F,$207F,$685C
	dw $285B,$285B,$285C,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$685D
	dw $207F,$207F,$285D,$207F
	dw $207F,$207F,$207F,$2850
	dw $3C4F,$3C4F,$3C4F,$3C4F
	dw $3C4F,$3C4F,$3C4F,$3C4F
	dw $6850,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$685D
	dw $207F,$207F,$285D,$207F
	dw $207F,$207F,$207F,$A850
	dw $BC4F,$BC4F,$BC4F,$BC4F
	dw $BC4F,$BC4F,$BC4F,$BC4F
	dw $E850,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$E85C
	dw $A85B,$A85B,$A85C,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F,$207F,$207F,$207F
	dw $207F

warnpc $0DFFC1

; Graphics go here, but they're already imported through zcompress' script

