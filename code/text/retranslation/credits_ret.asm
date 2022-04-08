;****************************************************************
; 	Zelda 3 Redux - Credits text data
;****************************************************************

;----------------------------------------
; 	Table files
;----------------------------------------
incsrc "code/text/tbl/credits_small.txt"
incsrc "code/text/tbl/credits_big.txt"

;----------------------------------------
;    Macros for credits texts
;----------------------------------------

macro new_line(N)
	!i = 0
	while !i < <N>
		dw credits_roll_print_end-credits_roll
		!i #= !i+1
	endwhile
endmacro

macro repeat(N,cmd)
    !i = 0
    while !i < <N>
        <cmd>
        !i #= !i+1
    endwhile
endmacro

; Macros for coloured texts (yellow, green and red)
;!Red = $00
;!Yellow = $1A
;!Green = $38
macro yellow(str)
	!i = 0
	while !i < stringlength("<str>")
		db char("<str>",!i)-71
		!i #= !i+1
	endwhile
endmacro

macro green(str)
	!i = 0
	while !i < stringlength("<str>")
		db char("<str>",!i)-41
		!i #= !i+1
	endwhile
endmacro


; Macros for 2nd row big text
; For main text
macro row(str)
	!i = 0
	while !i < stringlength("<str>")
		db char("<str>",!i)+66	; /256 or +66
		!i #= !i+1
	endwhile
endmacro

; For numbers
macro num(str)
	!i = 0
	while !i < stringlength("<str>")
		db char("<str>",!i)+73	; /256 or +66
		!i #= !i+1
	endwhile
endmacro

;----------------------------------------
; 	Alphabet
;----------------------------------------
;      YELLOW		     GREEN		    RED
;SMALL TEXT COLOUR1    SMALL TEXT COLOUR2    SMALL TEXT COLOUR3
;A=1A                  A=38                  A=00
;B=1B                  B=39                  B=01
;C=1C                  C=3A                  C=02
;D=1D                  D=3B                  D=03
;E=1E                  E=3C                  E=04
;F=1F                  F=3D                  F=05
;G=20                  G=3E                  G=06
;H=21                  H=3F                  H=07
;I=22                  I=40                  I=08
;J=23                  J=41                  J=09
;K=24                  K=42                  K=0A
;L=25                  L=43                  L=0B
;M=26                  M=44                  M=0C
;N=27                  N=45                  N=0D
;O=28                  O=46                  O=0E
;P=29                  P=47                  P=0F
;Q=2A                  Q=48                  Q=10
;R=2B                  R=49                  R=11
;S=2C                  S=4A                  S=12
;T=2D                  T=4B                  T=13
;U=2E                  U=4C                  U=14
;V=2F                  V=4D                  V=15
;W=30                  W=4E                  W=16
;X=31                  X=4F                  X=17
;Y=32                  Y=50                  Y=18
;Z=33                  Z=51                  Z=19
;'=34                                  
;EMPTY=9F              EMPTY=9F               EMPTY=9F      

;----------------------------------------

;BIG TEXT (2 VALUES, UPPER ROW, LOWER ROW,
;BUT UPPER ROW ALWAYS TOGETHER AND LOWER ROW ALWAYS TOGETHER)

;  UP  LOW
;0=53,	79
;1=54,	7A
;2=55,	7B
;3=56,	7C
;4=57,	7D
;5=58,	7E
;6=59,	7F
;7=5A,	80
;8=5B,	81
;9=5C,	82	
;A=5D,  83
;B=5E,  84
;C=5F,  85
;D=60,  86
;E=61,  87
;F=62,  88
;G=63,  89
;H=64,  8A
;I=65,  8B
;J=66,  8C
;K=67,  8D
;L=68,  8E
;M=69,  8F
;N=6A,  90
;O=6B,  91
;P=6C,  92
;Q=6D,  93
;R=6E,  94
;S=6F,  95
;T=70,  96
;U=71,  97
;V=72,  98
;W=73,  99
;X=74,  9A
;Y=75,  9B
;Z=76,  9C
;'=77,	9D
;EMPTY= 9F


;****************************************
; 	Pointers for item entries
;****************************************
; Pointers for the flyover and scrolling credits sequences
org $0EC32C	; 0x07432C
	lda credits_text,y	; Originally LDA $BF4C,y
	skip 7
	lda credits_text,y	; Originally LDA $BF4C,y
	skip 18
	lda credits_text,y	; Originally LDA $BF4C,y

org $0EBE54	; 0x073E54
	lda credits_roll,y	; Originally LDA $B178,y
	skip 16
	lda credits_roll,y	; Originally LDA $B178,y
	skip 17
	lda credits_roll,y	; Originally LDA $B178,y
;----------------------------------------
; 2-byte pointers for the credits flyover scenes
org $0EC2E1
	dw credits_text_king-credits_text
	dw credits_text_priest-credits_text
	dw credits_text_sahasralah-credits_text
	dw credits_text_desert-credits_text
	dw credits_text_tower-credits_text
	dw credits_text_house-credits_text
	dw credits_text_zora-credits_text
	dw credits_text_witch-credits_text
	dw credits_text_lumberjacks-credits_text
	dw credits_text_ocarina-credits_text
	dw credits_text_venus-credits_text
	dw credits_text_smithies-credits_text
	dw credits_text_bug_kid-credits_text
	dw credits_text_old_man-credits_text
	dw credits_text_thief-credits_text
	dw credits_text_master_sword-credits_text
	dw credits_text_text_end-credits_text
warnpc $0EC303
;----------------------------------------
; 2-byte pointers for the credits roll scene
org $0EB93D
	dw credits_roll_exec_producer-credits_roll	; 00
	%new_line(3) ; 14
	dw credits_roll_hiroshi1-credits_roll	; 15
	dw credits_roll_hiroshi2-credits_roll	; 27
	%new_line(8) ; 14
	dw credits_roll_producer-credits_roll	; 39
	%new_line(3) ; 14
	dw credits_roll_shigeru1-credits_roll	; 43
	dw credits_roll_shigeru2-credits_roll	; 55
	%new_line(8) ; 14
	dw credits_roll_director-credits_roll	; 67
	%new_line(3) ; 14
	dw credits_roll_takashi1-credits_roll	; 71
	dw credits_roll_takashi2-credits_roll	; 81
	%new_line(8) ; 14
	dw credits_roll_script-credits_roll	; 91
	%new_line(3) ; 14
	dw credits_roll_tanabe1-credits_roll	; A0
	dw credits_roll_tanabe2-credits_roll	; B0
	%new_line(8) ; 14
	dw credits_roll_assis_director-credits_roll	; C0
	%new_line(3) ; 14
	dw credits_roll_yasuhisa1-credits_roll	; D5
	dw credits_roll_yasuhisa2-credits_roll	; E8
	%new_line(2) ; 14
	dw credits_roll_yoichi_y1-credits_roll	; FB
	dw credits_roll_yoichi_y2-credits_roll	; 10A
	%new_line(8) ; 14
	dw credits_roll_screen_graphics-credits_roll	; 119
	%new_line(1) ; 14
	dw credits_roll_object_design-credits_roll	; 134
	%new_line(3) ; 14
	dw credits_roll_soichiro1-credits_roll	; 146
	dw credits_roll_soichiro2-credits_roll	; 157
	%new_line(2) ; 14
	dw credits_roll_takaya1-credits_roll	; 168
	dw credits_roll_takaya2-credits_roll	; 178
	%new_line(8) ; 14
	dw credits_roll_background-credits_roll	; 188
	%new_line(3) ; 14
	dw credits_roll_masanao1-credits_roll	; 19F
	dw credits_roll_masanao2-credits_roll	; 1B0
	%new_line(2) ; 14
	dw credits_roll_tsuyoshi1-credits_roll	; 1C1
	dw credits_roll_tsuyoshi2-credits_roll	; 1D4
	%new_line(10) ; 14
	dw credits_roll_program_dir-credits_roll	; 1E7
	%new_line(3) ; 14
	dw credits_roll_toshihiko1-credits_roll	; 1F9
	dw credits_roll_toshihiko2-credits_roll	; 20B
	%new_line(8) ; 14
	dw credits_roll_main_prog-credits_roll	; 21D
	%new_line(3) ; 14
	dw credits_roll_yasunari_s1-credits_roll	; 22E
	dw credits_roll_yasunari_s2-credits_roll	; 240
	%new_line(8) ; 14
	dw credits_roll_object_prog-credits_roll	; 520
	%new_line(3) ; 14
	dw credits_roll_kazuaki1-credits_roll	; 252
	dw credits_roll_kazuaki2-credits_roll	; 262
	%new_line(8) ; 14
	dw credits_roll_programmers-credits_roll	; 272
	%new_line(3) ; 14
	dw credits_roll_tatsuo1-credits_roll	; 27F
	dw credits_roll_tatsuo2-credits_roll	; 291
	%new_line(2) ; 14
	dw credits_roll_yuichi1-credits_roll	; 2A3
	dw credits_roll_yuichi2-credits_roll	; 2B4
	%new_line(2) ; 14
	dw credits_roll_yoshihiro1-credits_roll	; 2C5
	dw credits_roll_yoshihiro2-credits_roll	; 2D7
	%new_line(2) ; 14
	dw credits_roll_eiji1-credits_roll	; 2E9
	dw credits_roll_eiji2-credits_roll	; 2F4
	%new_line(2) ; 14
	dw credits_roll_satoru1-credits_roll	; 2FF
	dw credits_roll_satoru2-credits_roll	; 310
	%new_line(2) ; 14
	dw credits_roll_toshio1-credits_roll	; 533
	dw credits_roll_toshio2-credits_roll	; 543
	%new_line(2) ; 14
	dw credits_roll_shigehiro1-credits_roll	; 553
	dw credits_roll_shigehiro2-credits_roll	; 568
	%new_line(2) ; 14
	dw credits_roll_yasunari_n1-credits_roll	; 74B
	dw credits_roll_yasunari_n2-credits_roll	; 75D
	%new_line(10) ; 14
	dw credits_roll_sound-credits_roll	; 321
	%new_line(3) ; 14
	dw credits_roll_koji1-credits_roll	; 331
	dw credits_roll_koji2-credits_roll	; 33D
	%new_line(8) ; 14
	dw credits_roll_coord-credits_roll	; 349
	%new_line(3) ; 14
	dw credits_roll_keizo1-credits_roll	; 357
	dw credits_roll_keizo2-credits_roll	; 363
	%new_line(2) ; 14
	dw credits_roll_takao1-credits_roll	; 36F
	dw credits_roll_takao2-credits_roll	; 37E
	%new_line(8) ; 14
	dw credits_roll_artwork-credits_roll	; 38D
	%new_line(3) ; 14
	dw credits_roll_yoichi_k1-credits_roll	; 39F
	dw credits_roll_yoichi_k2-credits_roll	; 3AE
	%new_line(2) ; 14
	dw credits_roll_hideki1-credits_roll	; 3BD
	dw credits_roll_hideki2-credits_roll	; 3CB
	%new_line(2) ; 14
	dw credits_roll_yoshiaki1-credits_roll	; 3D9
	dw credits_roll_yoshiaki2-credits_roll	; 3EB
	%new_line(2) ; 14
	dw credits_roll_yasuhiro1-credits_roll	; 3FD
	dw credits_roll_yasuhiro2-credits_roll	; 40D
	%new_line(2) ; 14
	dw credits_roll_tomoaki1-credits_roll	; 41D
	dw credits_roll_tomoaki2-credits_roll	; 42E
	%new_line(10) ; 14
	dw credits_roll_english-credits_roll	; 76F
	%new_line(3) ; 14
	dw credits_roll_retranslation1-credits_roll	; 787
	dw credits_roll_retranslation2-credits_roll	; 795
	%new_line(4) ; 14	; Erase Hiroyuki's credit
	%new_line(8) ; 14
	dw credits_roll_thanks-credits_roll	; 43F
	%new_line(3) ; 14
	dw credits_roll_nobuo1-credits_roll	; 452
	dw credits_roll_nobuo2-credits_roll	; 461
	%new_line(2) ; 14
	dw credits_roll_yasunori1-credits_roll	; 470
	dw credits_roll_yasunori2-credits_roll	; 483
	%new_line(2) ; 14
	dw credits_roll_kiyoshi1-credits_roll	; 496
	dw credits_roll_kiyoshi2-credits_roll	; 4A4
	%new_line(2) ; 14
	dw credits_roll_takamitsu1-credits_roll	; 4B2
	dw credits_roll_takamitsu2-credits_roll	; 4C6
	%new_line(2) ; 14
	dw credits_roll_hironobu1-credits_roll	; 4DA
	dw credits_roll_hironobu2-credits_roll	; 4EA
	%new_line(2) ; 14
	dw credits_roll_shigeki1-credits_roll	; 4FA
	dw credits_roll_shigeki2-credits_roll	; 50D
	%new_line(14) ; 14
	dw credits_roll_quest1-credits_roll	; 57D
	dw credits_roll_quest2-credits_roll	; 58C
	%new_line(2) ; 14
	dw credits_roll_location-credits_roll	; 59B
	%new_line(2) ; 14
	dw credits_roll_hyrule-credits_roll	; 5B7
	%new_line(3) ; 14
	dw credits_roll_dungeon-credits_roll	; 5C9
	%new_line(3) ; 14
	dw credits_roll_east-credits_roll	; 5D9
	%new_line(3) ; 14
	dw credits_roll_desert-credits_roll	; 5E6
	%new_line(3) ; 14
	dw credits_roll_tower-credits_roll	; 5F5
	%new_line(3) ; 14
	dw credits_roll_dark1-credits_roll	; 605
	dw credits_roll_dark2-credits_roll	; 614
	%new_line(2) ; 14
	dw credits_roll_swamp1-credits_roll	; 628
	dw credits_roll_swamp2-credits_roll	; 638
	%new_line(2) ; 14
	dw credits_roll_skull1-credits_roll	; 64D
	dw credits_roll_skull2-credits_roll	; 65C
	%new_line(2) ; 14
	dw credits_roll_outcast1-credits_roll	; 670
	dw credits_roll_outcast2-credits_roll	; 680
	%new_line(2) ; 14
	dw credits_roll_ice1-credits_roll	; 695
	dw credits_roll_ice2-credits_roll	; 6A3
	%new_line(2) ; 14
	dw credits_roll_misery1-credits_roll	; 6B6
	dw credits_roll_misery2-credits_roll	; 6C5
	%new_line(2) ; 14
	dw credits_roll_turtle1-credits_roll	; 6D9
	dw credits_roll_turtle2-credits_roll	; 6E8
	%new_line(2) ; 14
	dw credits_roll_ganon1-credits_roll	; 6FC
	dw credits_roll_ganon2-credits_roll	; 70D
	%new_line(13) ; 14
	dw credits_roll_total1-credits_roll	; 723
	dw credits_roll_total2-credits_roll	; 737

; Unknown what the 6 two-byte pointers from 73C51-73C5C are for
warnpc $0EBC51

;***************************************************
; 		Main credits text
;***************************************************
;----------------------------------------
;	Flyover Sequence
;----------------------------------------
; YY XX ZZ AA - Header for each entry
; YY XX - 1st byte is Y position and 2nd byte is X position
; ZZ - 3rd byte is unknown what it does
; AA - Last 4th byte before each text is the length byte.
	; The "length byte" is the number of characters x2, and then the result should have 1 substracted from it.
	; i.e.: "HYRULE CASTLE" = [0D (length) * 2] = 1A - 1 = 19

org $0EBF4C	; 0x073F4C-0x074302
credits_text:

.king:
	db $62,$67,$00,$23	; Length 22
	; Need to split up the spaces and special characters from the main text due to the macros not being able to have IF conditions to exclude $9F,$34 and $35 from the sum
	%yellow("return") : db " " : %yellow("of") : db " " : %yellow("the") : db " " : %yellow("king")
	db $62,$E9,$00,$19	; Length 30
	db "HYRULE CASTLE"	; 1st row
	db $63,$09,$00,$19	; Length 30
	%row("HYRULE") : db " "	: %row("CASTLE")

.priest:
	db $62,$6A,$00,$17	; Length 14
	%yellow("loyal") : db " " : %yellow("priest")	; Color 1, Yellow "the loyal sage"
	db $62,$EB,$00,$13	; Length 9
	db "THE CHAPEL"		; THE CHAPEL
	db $63,$0B,$00,$13
	%row("THE") : db " " : %row("CHAPEL")	; THE CHAPEL

.sahasralah:
	db $62,$4F,$00,$01
	db ","
	db $62,$65,$00,$2D
	%yellow("sahasralah") : db "'" : %yellow("s") : db " " : %yellow("homecoming")
	db $62,$E9,$00,$1F
	db "KAKARIKO VILLAGE"
	db $63,$09,$00,$1F
	%row("KAKARIKO") : db " " : %row("VILLAGE")

.desert:
	db $62,$64,$00,$2F
	%yellow("vultures") : db " " : %yellow("rule") : db " " : %yellow("the") : db " " : %yellow("desert")
	db $62,$E9,$00,$19
	db "DESERT TEMPLE"
	db $63,$09,$00,$19
	%row("DESERT") : db " " : %row("TEMPLE")

.tower:
	db $62,$64,$00,$2F
	%yellow("the") : db " " : %yellow("bully") : db " " : %yellow("makes") : db " " : %yellow("a") : db " " : %yellow("friend")
	db $62,$EA,$00,$19
	db "TOWER OF HERA"
	db $63,$0A,$00,$19
	%row("TOWER") : db " " : %row("OF") : db " " : %row("HERA")

.house:
	db $62,$66,$00,$25
	%yellow("your") : db " " : %yellow("uncle") : db " " : %yellow("recovers")
	db $62,$EB,$00,$13
	db "YOUR HOUSE"
	db $63,$0B,$00,$13
	%row("YOUR") : db " " : %row("HOUSE")

.zora:
	db $62,$67,$00,$21
	%yellow("flippers") : db " " : %yellow("for") : db " " : %yellow("sale")
	db $62,$E8,$00,$1F
	db "ZORA`S WATERFALL"
	db $63,$08,$00,$1F
	%row("ZORA") : db $9D : %row("S") : db " " : %row("WATERFALL")

.witch:
	db $62,$66,$00,$25
	%yellow("witch") : db " " : %yellow("and") : db " " : %yellow("assistant")
	db $62,$EA,$00,$15
	db "POTION SHOP"
	db $63,$0A,$00,$15
	%row("POTION") : db " " : %row("SHOP")

.lumberjacks:
	db $62,$68,$00,$1F
	%yellow("twin") : db " " : %yellow("lumberjacks")
	db $62,$E9,$00,$1B
	db "WOODSMEN`S HUT"
	db $63,$09,$00,$1B
	%row("WOODSMEN") : db $9D : %row("S") : db " " : %row("HUT")

.ocarina:
	db $62,$64,$00,$2D
	%yellow("ocarina") : db " " : %yellow("boy") : db " " : %yellow("plays") : db " " : %yellow("again")
	db $62,$E9,$00,$19
	db "HAUNTED GROVE"
	db $63,$09,$00,$19
	%row("HAUNTED") : db " " : %row("GROVE")

.venus:
	db $62,$64,$00,$2D
	%yellow("venus") : db ", " : %yellow("queen") : db " " : %yellow("of") : db " " : %yellow("fairies")
	db $62,$E6,$00,$25
	db "SPRING OF HAPPINESS"	; SPRING OF LUCK
	db $63,$06,$00,$25
	%row("SPRING") : db " " : %row("OF") : db " " : %row("HAPPINESS")	; SPRING OF LUCK

.smithies:
	db $62,$66,$00,$25
	%yellow("dwarven") : db " " : %yellow("swordsmiths")
	db $62,$EC,$00,$0B
	db "SMITHY"
	db $63,$0C,$00,$0B
	%row("SMITHY")

.bug_kid:
	db $62,$69,$00,$1F
	%yellow("bug") : db "-" : %yellow("catching") : db " " : %yellow("kid")
	db $62,$E9,$00,$1F
	db "KAKARIKO VILLAGE"
	db $63,$09,$00,$1F
	%row("KAKARIKO") : db " " : %row("VILLAGE")

.old_man:
	db $62,$4A,$00,$17
	%yellow("lost") : db " " : %yellow("old") : db " " : %yellow("man")
	db $62,$E9,$00,$1B
	db "HEBRA MOUNTAIN"	; HEBRA MOUNTAIN
	db $63,$09,$00,$1B
	%row("HEBRA") : db " " : %row("MOUNTAIN")	; HEBRA MOUNTAIN

.thief:
	db $62,$6A,$00,$17
	%yellow("forest") : db " " : %yellow("thief")
	db $62,$EB,$00,$13
	db "LOST WOODS"
	db $63,$0B,$00,$13
	%row("LOST") : db " " : %row("WOODS")

.master_sword:
	db $62,$66,$00,$27
	%yellow("and") : db " " : %yellow("the") : db " " : %yellow("master") : db " " : %yellow("sword")
	db $62,$A8,$00,$1D
	%green("sleeps") : db " " : %green("again") : db $52,$52,$52
	db $62,$EC,$00,$0F
	db "FOREVER!"
	db $63,$0C,$00,$0F
	%row("FOREVER")	: db $9E

.text_end

;----------------------------------------
padbyte $FF
; This writes $FF $FF $FF $FF
pad $0EB93D

warnpc $0EC2E1	; 0x0742E1

;----------------------------------------
;		Epilogue
;----------------------------------------

; XX YY - Header for each entry
; XX - X position where it will begin printing the text
; YY - 2nd byte before each text is the "length byte".
	; The "length byte" is the number of characters x2, and then the result should have 1 substracted from it.
	; i.e.: "HYRULE CASTLE" = [0D (length) * 2] = 1A - 1 = 19

org $0EB178	; 0x073178
credits_roll:
.exec_producer
	db $07,$23		; 0723-18
	%green("executive") : db " " : %green("producer")	; Color 2, Green
.print_end
	db $FF
.hiroshi1
	db $08,$1F		; 081F-16
	db "HIROSHI YAMAUCHI"	; 1st row
.hiroshi2
	db $08,$1F		; 081F-16
	%row("HIROSHI") : db " " : %row("YAMAUCHI")	; 2nd row
.producer
	db $0C,$0F		; 0C0F-8
	%yellow("producer")	; Color 1, Yellow
.shigeru1
	db $08,$1F		; 081F-16
	db "SHIGERU MIYAMOTO"	; 1st row
.shigeru2
	db $08,$1F		; 081F-16
	%row("SHIGERU") : db " " : %row("MIYAMOTO")	; 2nd row
.director
	db $0C,$0F		; 0C0F-8
	db "director"		; Color 3, Red
.takashi1
	db $09,$1B		; 091B
	db "TAKASHI TEZUKA"	; 1st row
.takashi2
	db $09,$1B
	%row("TAKASHI") : db " " : %row("TEZUKA")	; 2nd row
.script
	db $09,$19		; 0919
	%green("script") : db " " : %green("writer")	; Color 2, Green
.tanabe1
	db $09,$1B		; 091B
	db "KENSUKE TANABE"	; 1st row
.tanabe2
	db $09,$1B		; 091B
	%row("KENSUKE") : db " " : %row("TANABE")	; 2nd row
.assis_director
	db $06,$25		; 0625
	%yellow("assistant") : db " " : %yellow("directors")	; Color 1, Yellow
.yasuhisa1
	db $07,$21		; 0721
	db "YASUHISA YAMAMURA"
.yasuhisa2
	db $07,$21		; 0721
	%row("YASUHISA") : db " " : %row("YAMAMURA")
.yoichi_y1
	db $09,$19		; 0919
	db "YOICHI YAMADA"
.yoichi_y2
	db $09,$19		; 0919
	%row("YOICHI") : db " " : %row("YAMADA")
.screen_graphics
	db $03,$31		; 0331
	%green("screen") : db " " : %green("graphics") : db " " : %green("designers")	; Color 2, Green
.object_design
	db $08,$1F		; 081F
	%yellow("object") : db " " : %yellow("designers")	; Color 1, Yellow
.soichiro1
	db $08,$1D		; 081D
	db "SOICHIRO TOMITA"
.soichiro2
	db $08,$1D		; 081D
	%row("SOICHIRO") : db " " : %row("TOMITA")
.takaya1
	db $09,$1B		; 091B
	db "TAKAYA IMAMURA"
.takaya2
	db $09,$1B		; 091B
	%row("TAKAYA") : db " " : %row("IMAMURA")
.background
	db $05,$27		; 0529
	%yellow("background") : db " " : %yellow("designers")	; Color 1, Yellow
.masanao1
	db $08,$1D
	db "MASANAO ARIMOTO"
.masanao2
	db $08,$1D
	%row("MASANAO") : db " " : %row("ARIMOTO")
.tsuyoshi1
	db $07,$21		; 0721
	db "TSUYOSHI WATANABE"
.tsuyoshi2
	db $07,$21		; 0721
	%row("TSUYOSHI") : db " " : %row("WATANABE")
.program_dir
	db $08,$1F	; 0x07335F
	db "program director"	; Color 3, Red
.toshihiko1
	db $08,$1F
	db "TOSHIHIKO NAKAGO"
.toshihiko2
	db $08,$1F
	%row("TOSHIHIKO") : db " " : %row("NAKAGO")
.main_prog
	db $08,$1D	
	%green("main") : db " " : %green("programmer")	; Color 2, Green
.yasunari_s1
	db $08,$1F
	db "YASUNARI SOEJIMA"
.yasunari_s2
	db $08,$1F
	%row("YASUNARI") : db " " : %row("SOEJIMA")
.kazuaki1
	db $09,$1B
	db "KAZUAKI MORITA"
.kazuaki2
	db $09,$1B
	%row("KAZUAKI") : db " " : %row("MORITA")
.programmers
	db $0A,$15	; 0x0733EA
	%yellow("programmers")		; Color 1, Yellow
.tatsuo1
	db $08,$1F
	db "TATSUO NISHIYAMA"
.tatsuo2
	db $08,$1F
	%row("TATSUO") : db " " : %row("NISHIYAMA")
.yuichi1
	db $08,$1D
	db "YUICHI YAMAMOTO"
.yuichi2
	db $08,$1D
	%row("YUICHI") : db " " : %row("YAMAMOTO")
.yoshihiro1
	db $08,$1F
	db "YOSHIHIRO NOMOTO"
.yoshihiro2
	db $08,$1F
	%row("YOSHIHIRO") : db " " : %row("NOMOTO")
.eiji1
	db $0B,$11
	db "EIJI NOTO"
.eiji2
	db $0B,$11
	%row("EIJI") : db " " : %row("NOTO")
.satoru1
	db $08,$1D
	db "SATORU TAKAHATA"
.satoru2
	db $08,$1D
	%row("SATORU") : db " " : %row("TAKAHATA")
.sound
	db $09,$1B
	db "sound composer"	; Color 3, Red
.koji1
	db $0B,$13
	db "KOJI KONDO"
.koji2
	db $0B,$13
	%row("KOJI") : db " " : %row("KONDO")
.coord
	db $0A,$17
	%green("coordinators")	; Color 2, Green
.keizo1
	db $0B,$13
	db "KEIZO KATO"
.keizo2
	db $0B,$13
	%row("KEIZO") : db " " : %row("KATO")
.takao1
	db $0A,$19
	db "TAKAO SHIMIZU"
.takao2
	db $0A,$19
	%row("TAKAO") : db " " : %row("SHIMIZU")
.artwork
	db $08,$1D
	%yellow("printed") : db " " : %yellow("artwork")	; Color 1, Yellow
.yoichi_k1
	db $09,$19
	db "YOICHI KOTABE"
.yoichi_k2
	db $09,$19
	%row("YOICHI") : db " " : %row("KOTABE")
.hideki1
	db $0A,$17
	db "HIDEKI FUJII"
.hideki2
	db $0A,$17
	%row("HIDEKI") : db " " : %row("FUJII")
.yoshiaki1
	db $08,$1F
	db "YOSHIAKI KOIZUMI"
.yoshiaki2
	db $08,$1F
	%row("YOSHIAKI") : db " " : %row("KOIZUMI")
.yasuhiro1
	db $09,$1B
	db "YASUHIRO SAKAI"
.yasuhiro2
	db $09,$1B
	%row("YASUHIRO") : db " " : %row("SAKAI")
.tomoaki1
	db $08,$1D
	db "TOMOAKI KUROUME"
.tomoaki2
	db $08,$1D
	%row("TOMOAKI") : db " " : %row("KUROUME")
.thanks
	db $07,$21
	db "special thanks to"	; Color 3, Red
.nobuo1
	db $09,$19
	db "NOBUO OKAJIMA"
.nobuo2
	db $09,$19
	%row("NOBUO") : db " " : %row("OKAJIMA")
.yasunori1
	db $07,$21
	db "YASUNORI TAKETANI"
.yasunori2
	db $07,$21
	%row("YASUNORI") : db " " : %row("TAKETANI")
.kiyoshi1
	db $0A,$17
	db "KIYOSHI KODA"
.kiyoshi2
	db $0A,$17
	%row("KIYOSHI") : db " " : %row("KODA")
.takamitsu1
	db $07,$23
	db "TAKAMITSU KUZUHARA"
.takamitsu2
	db $07,$23
	%row("TAKAMITSU") : db " " : %row("KUZUHARA")
.hironobu1
	db $09,$1B
	db "HIRONOBU KAKUI"
.hironobu2
	db $09,$1B
	%row("HIRONOBU") : db " " : %row("KAKUI")
.shigeki1
	db $07,$21
	db "SHIGEKI YAMASHIRO"
.shigeki2
	db $07,$21
	%row("SHIGEKI") : db " " : %row("YAMASHIRO")
.object_prog
	db $07,$21
	%green("object") : db " " : %green("programmer")	; Color 2, Green
.toshio1
	db $09,$1B
	db "TOSHIO IWAWAKI"
.toshio2
	db $09,$1B
	%row("TOSHIO") : db " " : %row("IWAWAKI")
.shigehiro1
	db $06,$25
	db "SHIGEHIRO KASAMATSU"
.shigehiro2
	db $06,$25
	%row("SHIGEHIRO") : db " " : %row("KASAMATSU")

.quest1
	db $0A,$19
	db "QUEST HISTORY"
.quest2
	db $0A,$19
	%row("QUEST") : db " " : %row("HISTORY")
.location
	; 0x073713
	db $03,$33
	db "location            deaths"	; Color 3, Red

.hyrule
	db $04,$19
	%yellow("hyrule") : db " " : %yellow("castle")	; Color 1, Yellow (castle of hyrule)
.dungeon
	db $04,$1B
	%green("castle") : db " " : %green("dungeon")	; Color 2, Green
.east
	db $04,$1B
	%yellow("eastern") : db " " : %yellow("temple")	; Color 1, Yellow "east palace"
.desert
	db $04,$19
	%green("desert") : db " " : %green("temple")	; Color 2, Green "desert palace"
.tower
	db $04,$19
	%yellow("tower") : db " " : %yellow("of") : db " " : %yellow("hera")	; Color 1, Yellow "mountain tower"

.dark1
	db $08,$1D
	db "1 SHADOW TEMPLE"	; "DARK PALACE"
.dark2
	db $03,$27
	db "level"
	%num("1") : db " " : %row("SHADOW") : db " " : %row("TEMPLE")	; Color 3, Red "DARK PALACE"
.swamp1
	db $08,$1B
	db "2 WATER SHRINE"	; "SWAMP PALACE"
.swamp2
	db $03,$25
	db "level"
	%num("2") : db " " : %row("WATER") : db " " : %row("SHRINE")	; Color 3, Red "SWAMP PALACE"
.skull1
	db $08,$19
	db "3 SKULL WOODS"
.skull2
	db $03,$23
	db "level"
	%num("3") : db " " : %row("SKULL") : db " " : %row("WOODS")	; Color 3, Red
.outcast1
	db $08,$21
	db "4 OUTCAST VILLAGE"	; "THIEVES' TOWN"
.outcast2
	db $03,$2B
	db "level"
	%num("4") : db " " : %row("OUTCAST") : db " " : %row("VILLAGE")	; Color 3, Red "SWAMP PALACE"
.ice1
	db $08,$15
	db "5 ICE TOWER"	; "ICE PALACE"
.ice2
	db $03,$1F
	db "level"
	%num("5") : db " " : %row("ICE") : db " " : %row("TOWER")	; Color 3, Red "ICE PALACE"
.misery1
	db $08,$19
	db "6 DEVIL`S BOG"	; "MISERY MIRE"
.misery2
	db $03,$23
	db "level"
	%num("6") : db " " : %row("DEVIL") : db $9D : %row("S") : db " " : %row("BOG")	; Color 3, Red "MISERY MIRE"
.turtle1
	db $08,$19
	db "7 TURTLE ROCK"
.turtle2
	db $03,$23
	db "level"
	%num("7") : db " " : %row("TURTLE") : db " " : %row("ROCK")	; Color 3, Red
.ganon1
	db $08,$1D
	db "8 GANON`S TOWER"
.ganon2
	db $03,$27
	db "level"
	%num("8") : db " " : %row("GANON") : db $9D : %row("S") : db " " : %row("TOWER")	; Color 3, Red
.total1
	db $04,$1F
	db "TOTAL LIVES LOST"	; "TOTAL GAMES PLAYED"
.total2
	db $04,$1F
	%row("TOTAL") : db " " : %row("LIVES") : db " " : %row("LOST")	; "TOTAL GAMES PLAYED"
.yasunari_n1
	db $08,$1F
	db "YASUNARI NISHIDA"	; 1st row
.yasunari_n2
	db $08,$1F
	%row("YASUNARI") : db " " : %row("NISHIDA")	; 2nd row
.english
	db $05,$29
	%yellow("english") : db " " : %yellow("retranslation")	; Color 1, Yellow
.retranslation1
	db $07,$21
	db "TRANSLATION QUEST"
.retranslation2
	db $07,$21
	%row("TRANSLATION") : db " " : %row("QUEST")

.roll_end
;----------------------------------------
; If there's free space afterwards, pad it out with $FF
padbyte $FF : pad $0EB93D

warnpc $0EB93D	; 0x07393D
