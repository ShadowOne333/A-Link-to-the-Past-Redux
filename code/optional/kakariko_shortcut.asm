;****************************************************************
; 	Kakariko Shortcut (by PowerPanda)
;****************************************************************

; This patch adds a small shortcut from the Smithy’s house to Hyrule Castle to A Link to the Past based on A Link Between Worlds. This small change was a welcome addition to those familiar with the game, shortening the trip between Link’s House and Kakariko Village considerably. 
; In the Light World, the shortcut is available once you have the Power Glove from Dungeon 2. In the Dark World, it is available once you have the Titan’s Mitt from Dungeon 4.

; Overworld map data
org $02F94D	; 0x01794D
world_kakariko_map:
	.high_byte_packs
	dl $0B8000, $0B80D6, $0B81C2, $0B8316
	dl $0B83EA, $0B850E, $0B8671, $0B880F
	dl $0B89D3, $0B8B90, $0BD6D8, $0B8D24
	dl $0B8EE3, $0B9070, $0B91EA, $0B93CC

	dl $0B951C, $0BE324, $0BE4E1, $0B96CA
	dl $0B9838, $0B9981, $0B9B4A, $0BED4C
	dl $0B9CFC, $0B9E7E, $0BA00B, $0BA1FE
	dl $0BA381, $0BA4EF, $0BA6C0, $0BA7C5

	dl $0BA8FA, $0BAA7A, $0BAC0B, $0BADCC
	dl $0BAF3A, $0C83BE, $0BB0CA, $0BB27D
	dl $0BB43B, $0BB5CE, $0C8C6D, $0C8E2C
	dl $0C9007, $0BB78A, $0C93D1, $0C95C0

	dl $0BB945, $0BBA88, $0BBB88, $0C9CB0
	dl $0C9E74, $0BBD51, $0BBF2B, $0CA3BB
	dl $0BC119, $0BC22E, $0BC342, $0CAB60
	dl $0CAD38, $0BC51A, $0BC6F6, $0CB2D3

	dl $0BC8C9, $0BC9A3, $0BCAE4, $0BCC5A
	dl $0BCD9D, $0BCEF6, $0BD03B, $0BD1CE
	dl $0BD380, $0BD512, $0BD693, $0BD873
	dl $0BDA31, $0BDBD7, $0BDDAD, $0BDF9B

	dl $0BE168, $0BE324, $0BE4E1, $0BE6D5
	dl $0BE869, $0BE9C1, $0BEB8B, $0BED4C
	dl $0BEF24, $0BF0E0, $0BF27E, $0BF46E
	dl $0BF513, $0BF5E7, $0BF7D8, $0BF8DE

	dl $0BFA49, $0BFBED, $0BFD92, $0C80E6
	dl $0C822A, $0C83BE, $0C8589, $0C870E
	dl $0C88CD, $0C8A9B, $0C8C6D, $0C8E2C
	dl $0C9007, $0C91E9, $0C93D1, $0C95C0

	dl $0C97B1, $0C9949, $0C9AC3, $0C9CB0
	dl $0C9E74, $0CA033, $0CA22A, $0CA3BB
	dl $0CA5B3, $0CA799, $0CA96E, $0CAB60
	dl $0CAD38, $0CAF17, $0CB10C, $0CB2D3

	dl $0CB73D, $0CB87D, $0CB9F3, $0B8000
	dl $0B8000, $0B8000, $0B8000, $0B8000
	dl $0CBFB5, $0CBBAF, $0CBD4C, $0B8000
	dl $0B8000, $0B8000, $0B8000, $0B8000

	dl $0B8000, $0B8000, $0B8000, $0CBFB5
	dl $0CB73D, $0CBEFB, $0CBED8, $0CB57C
	dl $0B8000, $0B8000, $0B8000, $0B8000
	dl $0CBFAD, $0CB57C, $0CB4C9, $0CB5BF
    
    ; $17B2D
    .lower_byte_packs
	dl $0B8004, $0B80DA, $0B8238, $0B8340
	dl $0B8460, $0B85A3, $0B8724, $0B88E0
	dl $0B8A91, $0B8C35, $0BD77A, $0B8DF6
	dl $0B8F87, $0B9118, $0B92CF, $0B945A

	dl $0B95DC, $0BE3F2, $0BE5D4, $0B976A
	dl $0B98BC, $0B9A5A, $0B9C0D, $0BEE31
	dl $0B9DA1, $0B9F2E, $0BA0FC, $0BA29B
	dl $0BA40B, $0BA5CE, $0BA6F2, $0BA816

	dl $0BA9A7, $0BAB25, $0BACE1, $0BAE6F
	dl $0BAFEE, $0C8499, $0BB18E, $0BB354
	dl $0BB4F1, $0BB6A2, $0C8D3C, $0C8F0D
	dl $0C90F2, $0BB85D, $0C94C5, $0C96B4

	dl $0BB9AF, $0BBAC6, $0BBC64, $0C9D83
	dl $0C9F4A, $0BBE36, $0BC015, $0CA4B4
	dl $0BC18A, $0BC28A, $0BC424, $0CAC4B
	dl $0CAE25, $0BC5FD, $0BC7D2, $0CB3C9

	dl $0BC8D2, $0BCA02, $0BCB6D, $0BCCE2
	dl $0BCE3A, $0BCF80, $0BD0F3, $0BD295
	dl $0BD42E, $0BD5A6, $0BD77A, $0BD949
	dl $0BDAEA, $0BDCB4, $0BDE9E, $0BE07A

	dl $0BE22D, $0BE3F2, $0BE5D4, $0BE791
	dl $0BE900, $0BEA99, $0BEC55, $0BEE31
	dl $0BEFF1, $0BF19D, $0BF36D, $0BF479
	dl $0BF549, $0BF6D8, $0BF812, $0BF973

	dl $0BFB09, $0BFCA1, $0C8000, $0C8178
	dl $0C82E8, $0C8499, $0C8635, $0C87DE
	dl $0C89A5, $0C8B74, $0C8D3C, $0C8F0D
	dl $0C90F2, $0C92D5, $0C94C5, $0C96B4

	dl $0C986F, $0C99F5, $0C9BB4, $0C9D83
	dl $0C9F4A, $0CA127, $0CA2DD, $0CA4B4
	dl $0CA69A, $0CA872, $0CAA65, $0CAC4B
	dl $0CAE25, $0CB00D, $0CB1E7, $0CB3C9

	dl $0CB7AD, $0CB917, $0CBABA, $0B8004
	dl $0B8004, $0B8004, $0B8004, $0B8004
	dl $0CBFB9, $0CBC5F, $0CBE06, $0B8004
	dl $0B8004, $0B8004, $0B8004, $0B8004

	dl $0B8004, $0B8004, $0B8004, $0CBFB9
	dl $0CB7AD, $0CBF45, $0CBEDF, $0CB580
	dl $0B8004, $0B8004, $0B8004, $0B8004
	dl $0CBFB1, $0CB580, $0CB4CD, $0CB644

warnpc $02FD0D	; 0x017D0D

org $02FF80	; 0x017F80
	db $21
org $02FF90	; 0x017F90
	db $0B

; Overworld map data, will be included as bin files since the amount of changes both Hyrule Magic & Super Zelda Editor do to these sections is far too large to be added manually.
; Almost the entire bank sections get changed when using those programs, so screw it, binary it is
org $0BA1FE	; 0x05A1FE
	incbin map_data.bin
warnpc $0C8000

org $0C8000	; 0x060000
	incbin map_data2.bin
warnpc $0CC10D

org $0CC118	; 0x064118
	db $66,$FE,$05,$00,$8D,$40

; Overworld secrets data
org $1BC509	; 0x0DC509
	db $96,$1E,$01,$92,$1C
org $1BC78A	; 0x0DC78A
	db $92,$1C,$04,$96

; Object data
org $1F8000	; 0x0F8001
	incbin object_data.bin
warnpc $208000	; 0x100000

