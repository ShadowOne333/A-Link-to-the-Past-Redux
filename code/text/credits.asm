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


; Macro for 2nd row big text
macro row(str)
	!i = 0
	while !i < stringlength("<str>")
		db char("<str>",!i)/256	; +66
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
	lda credits_text,y
	skip 18
	lda credits_text,y

org $0EBE54	; 0x073E54
	lda credits_roll,y	; Originally LDA $B178,y
	skip 16
	lda credits_roll,y	; Originally LDA $B178,y
	skip 17
	lda credits_roll,y	; Originally LDA $B178,y


;***************************************************
; 		Main credits text
;***************************************************
;----------------------------------------
;	Flyover Sequence
;----------------------------------------
; 1st byte is Y position and 2nd byte is X position
; 3rd byte is unknown what it does
; Last 4th byte before each text is the length byte.
; The "length byte" is the number of characters x2, and then the result should have 1 substracted from it.
; i.e.: "HYRULE CASTLE" = [0D (length) * 2] = 1A - 1 = 19

org $0EBF4C	; 0x073F4C-0x074302
credits_text:
	db $62,$67,$00,$23	; Length 22
	%yellow("return of the king")	; Color 1, Yellow

	db $62,$E9,$00,$19	; Length 30
	db "HYRULE CASTLE"	; First row
	db $63,$09,$00,$19	; Length 30
	%row("HYRULE CASTLE")	; Second row

	db $62,$68,$00,$17	; Length 14
	%yellow("loyal priest")	; Color 1, Yellow "the loyal sage"
	db $62,$EB,$00,$11	; Length 9
	db "SANCTUARY"		; THE CHAPEL
	db $63,$0B,$00,$11
	%row("SANCTUARY")	; THE CHAPEL

	db $62,$4F,$00,$01
	db ","

	db $62,$65,$00,$2D
	%yellow("sahasralah's homecoming")
	db $62,$E9,$00,$1F
	db "KAKARIKO VILLAGE"
	db $63,$09,$00,$1F
	%row("KAKARIKO VILLAGE")

	db $62,$64,$00,$2F
	%yellow("vultures rule the desert")
	db $62,$E9,$00,$19
	db "DESERT TEMPLE"
	db $63,$09,$00,$19
	%row("DESERT TEMPLE")

	db $62,$64,$00,$2F
	%yellow("the bully makes a friend")
	db $62,$E9,$00,$19
	db "TOWER OF HERA"
	db $63,$09,$00,$19
	%row("TOWER OF HERA")

	db $62,$66,$00,$25
	%yellow("your uncle recovers")
	db $62,$EB,$00,$13
	db "YOUR HOUSE"
	db $63,$0B,$00,$13
	%row("YOUR HOUSE")

	db $62,$66,$00,$21
	%yellow("flippers for sale")
	db $62,$E8,$00,$1F
	db "ZORA'S WATERFALL"
	db $63,$08,$00,$1F
	%row("ZORA'S WATERFALL")

	db $62,$64,$00,$2D
	%yellow("the witch and assistant")
	db $62,$EB,$00,$15
	db "POTION SHOP"
	db $63,$0B,$00,$15
	%row("POTION SHOP")

	db $62,$68,$00,$1F
	%yellow("twin lumberjacks")
	db $62,$E9,$00,$1B
	db "WOODSMEN'S HUT"
	db $63,$09,$00,$1B
	%row("WOODSMEN'S HUT")

	db $62,$64,$00,$2D
	%yellow("ocarina boy plays again")
	db $62,$E9,$00,$19
	db "HAUNTED GROVE"
	db $63,$09,$00,$19
	%row("HAUNTED GROVE")

	db $62,$64,$00,$2D
	%yellow("venus, queen of fairies")
	db $62,$EA,$00,$17
	db "WISHING WELL"	; SPRING OF LUCK
	db $63,$0A,$00,$17
	%row("WISHING WELL")	; SPRING OF LUCK

	db $62,$66,$00,$25
	%yellow("dwarven swordsmiths")
	db $62,$EC,$00,$0B
	db "SMITHY"
	db $63,$0C,$00,$0B
	%row("SMITHY")

	db $62,$66,$00,$27
	%yellow("the bug-catching kid")
	db $62,$E9,$00,$1F
	db "KAKARIKO VILLAGE"
	db $63,$09,$00,$1F
	%row("KAKARIKO VILLAGE")

	db $62,$48,$00,$1F
	%yellow("the lost old man")
	db $62,$E9,$00,$1B
	db "DEATH MOUNTAIN"	; HEBRA MOUNTAIN
	db $63,$09,$00,$1B
	%row("DEATH MOUNTAIN")	; HEBRA MOUNTAIN

	db $62,$68,$00,$17
	%yellow("forest thief")
	db $62,$EB,$00,$13
	db "LOST WOODS"
	db $63,$0B,$00,$13
	%row("LOST WOODS")

	db $62,$66,$00,$27
	%yellow("and the master sword")
	db $62,$A8,$00,$1D
	%green("sleeps again...")

	db $62,$EC,$00,$0F
	db "FOREVER!"
	db $63,$0C,$00,$0F
	%row("FOREVER!")

warnpc $0EC2E1	; 0x0742E1

;----------------------------------------
;		Epilogue
;----------------------------------------

; Last 2nd byte before each text is the length byte.
; The "length byte" is the number of characters x2, and then the result should have 1 substracted from it.
; i.e.: "HYRULE CASTLE" = [0D (length) * 2] = 1A - 1 = 19
; The other byte (1st) is the X position where it will begin printing the text

org $0EB178	; 0x073178
credits_roll:
	db $0723		; 0723-18
	%green("executive producer")	; Color 2, Green
	db $FF
	db $081F		; 081F-16
	db "HIROSHI YAMAUCHI"	; 1st row
	db $081F		; 081F-16
	%row("HIROSHI YAMAUCHI")	; 2nd row

	db $0C0F		; 0C0F-8
	%yellow("producer")	; Color 1, Yellow
	db $081F		; 081F-16
	db "SHIGERU MIYAMOTO"	; 1st row
	db $081F		; 081F-16
	%row("SHIGERU MIYAMOTO")	; 2nd row

	db $0C0F		; 0C0F-8
	db "director"		; Color 3, Red
	db $091B		; 091B
	db "TAKASHI TEZUKA"	; 1st row
	db $091B
	%row("TAKASHI TEZUKA")	; 2nd row

	db $0919		; 0919
	%green("script writer")	; Color 2, Green
	db $091B		; 091B
	db "KENSUKE TANABE"	; 1st row
	db $091B		; 091B
	%row("KENSUKE TANABE")	; 2nd row

	db $0625		; 0625
	%yellow("assistant directors")	; Color 1, Yellow
	db $0721		; 0721
	db "YASUHISA YAMAMURA"
	db $0721		; 0721
	%row("YASUHISA YAMAMURA")
	db $0919		; 0919
	db "YOICHI YAMADA"
	db $0919		; 0919
	%row("YOICHI YAMADA")

	db $0331		; 0331
	%green("screen graphics designers")	; Color 2, Green
	db $081F		; 081F
	%yellow("object designers")	; Color 1, Yellow
	db $081D		; 081D
	db "SOICHIRO TOMITA"
	db $081D		; 081D
	%row("SOICHIRO TOMITA")
	db $091B		; 091B
	db "TAKAYA IMAMURA"
	db $091B		; 091B
	%row("TAKAYA IMAMURA")

	db $0529		; 0529
	%yellow("background designers")	; Color 1, Yellow
	db $081D
	db "MASANAO ARIMOTO"
	db $081D
	%row("MASANAO ARIMOTO")
	db $0721		; 0721
	db "TSUYOSHI WATANABE"
	db $0721		; 0721
	%row("TSUYOSHI WATANABE")

	db $081F	; 0x07335F
	db "program director"	; Color 3, Red
	db $081F
	db "YOSHIHIKO NAKAGO"
	db $081F
	%row("YOSHIHIKO NAKAGO")

	db $081D	
	%green("main programmer")	; Color 2, Green
	db $081F
	db "YASUNARI SOEJIMA"
	db $081F
	%row("YASUNARI SOEJIMA")
	db $091B
	db "KAZUAKI MORITA"
	db $091B
	%row("KAZUAKI MORITA")

	db $0A15	; 0x0733EA
	db "programmers"	; ???
	db $081F
	db "TATSUO NISHIYAMA"
	db $081F
	%row("TATSUO NISHIYAMA")
	db $081D
	db "YUICHI YAMAMOTO"
	db $081D
	%row("YUICHI YAMAMOTO")
	db $081F
	db "YOSHIHIRO NOMOTO"
	db $081F
	%row("YOSHIHIRO NOMOTO")
	db $1B11
	db "EIJI NOTO"
	db $1B11
	%row("EIJI NOTO")
	db $081D
	db "SATORU TAKAHATA"
	db $081D
	%row("SATORU TAKAHATA")

	db $091B
	db "sound composer"	; Color 3, Red
	db $0B13
	db "KOJI KONDO"
	db $0B13
	%row("KOJI KONDO")

	db $0A17
	%green("coordinators")	; Color 2, Green
	db $0B13
	db "KEIZO KATO"
	db $0B13
	%row("KEIZO KATO")

	db $0A19
	db "TAKAO SHIMIZU"
	db $0A19
	%row("TAKAO SHIMIZU")

	db $081F
	%yellow("printed art work")	; Color 1, Yellow
	db $0919
	db "YOICHI KOTABE"
	db $0919
	%row("YOICHI KOTABE")
	db $0A17
	db "HIDEKI FUJII"
	db $0A17
	%row("HIDEKI FUJII")
	db $081F
	db "YOSHIAKI KOIZUMI"
	db $081F
	%row("YOSHIAKI KOIZUMI")
	db $091B
	db "YASUHIRO SAKAI"
	db $091B
	%row("YASUHIRO SAKAI")

	db $081D
	db "TOMOAKI KUROUME"
	db $081D
	%row("TOMOAKI KUROUME")

	db $0721
	db "special thanks to"	; Color 3, Red
	db $0919
	db "NOBUO OKAJIMA"
	db $0919
	%row("NOBUO OKAJIMA")
	db $0721
	db "YASUNORI TAKETANI"
	db $0721
	%row("YASUNORI TAKETANI")
	db $0A17
	db "KIYOSHI KODA"
	db $0A17
	%row("KIYOSHI KODA")
	db $0723
	db "TAKAMITSU KUZUHARA"
	db $0723
	%row("TAKAMITSU KUZUHARA")
	db $091B
	db "HIRONOBU KAKUI"
	db $091B
	%row("HIRONOBU KAKUI")
	db $0721
	db "SHIGEKI YAMASHIRO"
	db $0721
	%row("SHIGEKI YAMASHIRO")

	db $0721
	db "object programmer"	; Color 2, Green
	db $091B
	db "TOSHIO IWAWAKI"
	db $091B
	%row("TOSHIO IWAWAKI")

	db $0625
	db "SHIGEHIRO KASAMATSU"
	db $0625
	%row("SHIGEHIRO KASAMATSU")

	db $0A19
	db "QUEST HISTORY"
	db $0A19
	%row("QUEST HISTORY")

	; 0x073713
	db $0333
	db "location            deaths"	; Color 3, Red

	db $041F
	%yellow("hyrule castle")	; Color 1, Yellow (castle of hyrule)
	db $041B
	%green("castle dungeon")	; Color 2, Green
	db $0415
	%yellow("eastern temple")	; Color 1, Yellow "east palace"
	db $0419
	%green("desert temple")	; Color 2, Green "desert palace"
	db $041B
	%yellow("tower of hera")	; Color 1, Yellow "mountain tower"

	db $0819
	db "1 SHADOW TEMPLE"	; "DARK PALACE"
	db $0323
	db "level"
	%row("1 SHADOW TEMPLE")	; Color 3, Red "DARK PALACE"
	db $081B
	db "2 WATER SHRINE"	; "SWAMP PALACE"
	db $0325
	db "level"
	%row("2 WATER SHRINE")	; Color 3, Red "SWAMP PALACE"
	db $0819
	db "3 SKULL WOODS"
	db $0323
	db "level"
	%row("3 SKULL WOODS")	; Color 3, Red
	db $081B
	db "4 OUTCAST VILLAGE"	; "THIEVES' TOWN"
	db $0325
	db "level"
	%row("4 OUTCAST VILLAGE")	; Color 3, Red "SWAMP PALACE"
	db $0817
	db "5 ICE TOWER"	; "ICE PALACE"
	db $0321
	db "level"
	%row("5 ICE TOWER")	; Color 3, Red "ICE PALACE"
	db $0819
	db "6 DEVIL'S BOG"	; "MISERY MIRE"
	db $0323
	db "level"
	%row("6 DEVIL'S BOG")	; Color 3, Red "MISERY MIRE"
	db $0819
	db "7 TURTLE ROCK"
	db $0323
	db "level"
	%row("7 TURTLE ROCK")	; Color 3, Red
	db $081D
	db "8 GANON'S TOWER"
	db $0327
	db "level"
	%row("8 GANON'S TOWER")	; Color 3, Red

	db $0423
	db "TOTAL LIVES LOST"	; "TOTAL GAMES PLAYED"
	db $0423
	%row("TOTAL LIVES LOST")	; "TOTAL GAMES PLAYED"

	db $081F
	db "YASUNARI NISHIDA"	; 1st row
	db $081F
	%row("YASUNARI NISHIDA")	; 2nd row

	db $052B
	db "english script writers"	; Color 1, Yellow
	db $0A17
	db "DANIEL OWSEN"
	db $0A17
	%row("DANIEL OWSEN")
	db $081D
	db "HIROYUKI YAMADA"
	db $081D
	%row("HIROYUKI YAMADA")

	;db $0568		; 6805
	;db "SHIGEHIRO KASAMATSU"
	;db $057D
	;db "QUEST HISTORY"	; 1st row
	;db $058C
	;db "QUEST HISTORY"	; 2nd row
	;db $059B
	;db "LOCATION"
	;db $05B8		; @73BCF
	;db "hyrule castle"
	;db $05C7
	;db "castle dungeon"
	;db $05D7
	;db "EASTERN TEMPLE"	; east palace
	;db $05E7
	;db "DESERT TEMPLE"	; desert palace
	;db $05F6
	;db "TOWER OF HERA"	; mountain tower
	; level 1 DARK PALACE
	;db $0605
	;db "SHADOW TEMPLE"	; 1st row
	;db $0616
	;db "SHADOW TEMPLE"	; 2nd row
	; level 2 SWAMP PALACE
	;db $062C
	;db "WATER SHRINE"	; 1st row
	;db $063C
	;db "WATER SHRINE"	; 2nd row
	; level 3 SKULL WOODS
	;db $0651
	;db "SKULL WOODS"	; 1st row
	;db $0660
	;db "SKULL WOODS"	; 2nd row
	; level 4 THIEVES' TOWN
	;db $0674
	;db "OUTCAST VILLAGE"	; 1st row
	;db $0685
	;db "OUTCAST VILLAGE"
	;db $0687

	; level 5 ICE PALACE
	;db $069B
	;db "ICE TOWER"		; 1st row
	;db $069F

	;db $06A9
	;db "ICE TOWER"		; 2nd row
	;db $06AD

	; level 6 MISERY MIRE
	;db $06BC
	;db "DEVIL'S BOG"	; 1st row
	;db $06C1
	; Empty space?
	;db $06CB
	;db "DEVIL'S BOG"	; 2nd row
	;db $06CF
	; Empty space?
	; level 7 TURTLE ROCK
	;db $06DF
	;db "TURTLE ROCK"	; 1st row
	;db $06E3
	; Empty space?
	;db $06EE
	;db "TURTLE ROCK"	; 2nd row
	;db $06F2
	; Empty space?
	; level 8 GANON'S TOWER
	;db $0702
	;db "GANON'S TOWER"	; 1st row
	;db $0706
	;db "GANON'S TOWER"
	;db $0713
	;db "GANON'S TOWER"	; 2nd row
	;db $0717
	;db "GANON'S TOWER"
	; TOTAL GAMES PLAYED
	;db $0729
	;db "TOTAL LIVES LOST"	; 1st row
	;db $072D
	;db "TOTAL LIVES LOST"
	;db $073B
	;db "TOTAL LIVES LOST"	; 2nd row
	;db $073F
	;db "TOTAL LIVES LOST"
	;db $074D
	;db "YASUNARI NISHIDA"	; 1st row
	;db $0751
	;db "YASUNARI NISHIDA"
	;db $075F
	;db "YASUNARI NISHIDA"	; 2nd row
	;db $0763
	;db "YASUNARI NISHIDA"
	;db $0771
	;db "ENGLISH RETRANSLATION"
	;db $0775
	;db "YASUNARI NISHIDA"
	;db $0788
	;db "TRANSLATION QUEST"	; 1st row
	;db $078C
	;db "TRANSLATION QUEST"
	;db $079B
	;db "TRANSLATION QUEST"	; 2nd row
	;db $079F
	;db "TRANSLATION QUEST"

	; Original credits from vanilla ALttP
	;db $074B
	;db "YASUNARI NISHIDA"	; 1st row
	;db $075D
	;db "YASUNARI NISHIDA"	; 2nd row
	;db $076F
	;db "ENGLISH SCRIPT WRITERS"

;----------------------------------------

warnpc $0EB93D	; 0x07393D
