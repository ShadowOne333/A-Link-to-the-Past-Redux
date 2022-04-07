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
		db char("<str>",!i)+66	; /256 or +66
		!i #= !i+1
	endwhile
endmacro

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
; YY XX ZZ AA - Hedaer for each entry
; YY XX - 1st byte is Y position and 2nd byte is X position
; ZZ - 3rd byte is unknown what it does
; AA - Last 4th byte before each text is the length byte.
	; The "length byte" is the number of characters x2, and then the result should have 1 substracted from it.
	; i.e.: "HYRULE CASTLE" = [0D (length) * 2] = 1A - 1 = 19

org $0EBF4C	; 0x073F4C-0x074302
credits_text:
	db $62,$67,$00,$23	; Length 22
	; Need to split up the spaces and special characters from the main text due to the macros not being able to have IF conditions to exclude $9F,$34 and $35 from the sum
	%yellow("return") : db " " : %yellow("of") : db " " : %yellow("the") : db " " : %yellow("king")

	db $62,$E9,$00,$19	; Length 30
	db "HYRULE CASTLE"	; 1st row
	db $63,$09,$00,$19	; Length 30
	%row("HYRULE") : db " "	: %row("CASTLE")

	db $62,$68,$00,$17	; Length 14
	%yellow("loyal") : db " " : %yellow("priest")	; Color 1, Yellow "the loyal sage"
	
	db $62,$EB,$00,$11	; Length 9
	db "THE CHAPEL"		; THE CHAPEL
	db $63,$0B,$00,$11
	%row("THE") : db " " : %row("CHAPEL")	; THE CHAPEL

	db $62,$4F,$00,$01
	db ","

	db $62,$65,$00,$2D
	%yellow("sahasralah") : db "'" : %yellow("s") : db " " : %yellow("homecoming")
	db $62,$E9,$00,$1F
	db "KAKARIKO VILLAGE"
	db $63,$09,$00,$1F
	%row("KAKARIKO") : db " " : %row("VILLAGE")

	db $62,$64,$00,$2F
	%yellow("vultures") : db " " : %yellow("rule") : db " " : %yellow("the") : db " " : %yellow("desert")
	db $62,$E9,$00,$19
	db "DESERT TEMPLE"
	db $63,$09,$00,$19
	%row("DESERT") : db " " : %row("TEMPLE")

	db $62,$64,$00,$2F
	%yellow("the") : db " " : %yellow("bully") : db " " : %yellow("makes") : db " " : %yellow("a") : db " " : %yellow("friend")
	db $62,$E9,$00,$19
	db "TOWER OF HERA"
	db $63,$09,$00,$19
	%row("TOWER") : db " " : %row("OF") : db " " : %row("HERA")

	db $62,$66,$00,$25
	%yellow("your") : db " " : %yellow("uncle") : db " " : %yellow("recovers")
	db $62,$EB,$00,$13
	db "YOUR HOUSE"
	db $63,$0B,$00,$13
	%row("YOUR") : db " " : %row("HOUSE")

	db $62,$66,$00,$21
	%yellow("flippers") : db " " : %yellow("for") : db " " : %yellow("sale")
	db $62,$E8,$00,$1F
	db "ZORA'S WATERFALL"
	db $63,$08,$00,$1F
	%row("ZORA") : db "'" : %row("S") : db " " : %row("WATERFALL")

	db $62,$64,$00,$2D
	%yellow("the") : db " " : %yellow("witch") : db " " : %yellow("and") : db " " : %yellow("assistant")
	db $62,$EB,$00,$15
	db "POTION SHOP"
	db $63,$0B,$00,$15
	%row("POTION") : db " " : %row("SHOP")

	db $62,$68,$00,$1F
	%yellow("twin") : db " " : %yellow("lumberjacks")
	db $62,$E9,$00,$1B
	db "WOODSMEN'S HUT"
	db $63,$09,$00,$1B
	%row("WOODSMEN") : db "'" : %row("S") : db " " : %row("HUT")

	db $62,$64,$00,$2D
	%yellow("ocarina") : db " " : %yellow("boy") : db " " : %yellow("plays") : db " " : %yellow("again")
	db $62,$E9,$00,$19
	db "HAUNTED GROVE"
	db $63,$09,$00,$19
	%row("HAUNTED") : db " " : %row("GROVE")

	db $62,$64,$00,$2D
	%yellow("venus") : db "," : %yellow("queen") : db " " : %yellow("of") : db " " : %yellow("fairies")
	db $62,$EA,$00,$25
	db "SPRING OF HAPPINESS"	; SPRING OF LUCK
	db $63,$0A,$00,$25
	%row("SPRING") : db " " : %row("OF") : db " " : %row("HAPPINESS")	; SPRING OF LUCK

	db $62,$66,$00,$25
	%yellow("dwarven") : db " " : %yellow("swordsmiths")
	db $62,$EC,$00,$0B
	db "SMITHY"
	db $63,$0C,$00,$0B
	%row("SMITHY")

	db $62,$68,$00,$27
	%yellow("bug") : db "-" : %yellow("catching") : db " " : %yellow("kid")
	db $62,$E9,$00,$1F
	db "KAKARIKO VILLAGE"
	db $63,$09,$00,$1F
	%row("KAKARIKO") : db " " : %row("VILLAGE")

	db $62,$48,$00,$17
	%yellow("lost") : db " " : %yellow("old") : db " " : %yellow("man")
	db $62,$E9,$00,$1B
	db "HEBRA MOUNTAIN"	; HEBRA MOUNTAIN
	db $63,$09,$00,$1B
	%row("HEBRA") : db " " : %row("MOUNTAIN")	; HEBRA MOUNTAIN

	db $62,$68,$00,$17
	%yellow("forest") : db " " : %yellow("thief")
	db $62,$EB,$00,$13
	db "LOST WOODS"
	db $63,$0B,$00,$13
	%row("LOST") : db " " : %row("WOODS")

	db $62,$66,$00,$27
	%yellow("and") : db " " : %yellow("the") : db " " : %yellow("master") : db " " : %yellow("sword")
	db $62,$A8,$00,$1D
	%green("sleeps") : db " " : %green("again") : db "..."

	db $62,$EC,$00,$0F
	db "FOREVER!"
	db $63,$0C,$00,$0F
	%row("FOREVER") : db "!"

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
	db $07,$23		; 0723-18
	%green("executive") : db " " : %green("producer")	; Color 2, Green
	db $FF
	db $08,$1F		; 081F-16
	db "HIROSHI YAMAUCHI"	; 1st row
	db $08,$1F		; 081F-16
	%row("HIROSHI") : db " " : %row("YAMAUCHI")	; 2nd row

	db $0C,$0F		; 0C0F-8
	%yellow("producer")	; Color 1, Yellow
	db $08,$1F		; 081F-16
	db "SHIGERU MIYAMOTO"	; 1st row
	db $08,$1F		; 081F-16
	%row("SHIGERU") : db " " : %row("MIYAMOTO")	; 2nd row

	db $0C,$0F		; 0C0F-8
	db "director"		; Color 3, Red
	db $09,$1B		; 091B
	db "TAKASHI TEZUKA"	; 1st row
	db $09,$1B
	%row("TAKASHI") : db " " : %row("TEZUKA")	; 2nd row

	db $09,$19		; 0919
	%green("script") : db " " : %green("writer")	; Color 2, Green
	db $09,$1B		; 091B
	db "KENSUKE TANABE"	; 1st row
	db $09,$1B		; 091B
	%row("KENSUKE") : db " " : %row("TANABE")	; 2nd row

	db $06,$25		; 0625
	%yellow("assistant") : db " " : %yellow("directors")	; Color 1, Yellow
	db $07,$21		; 0721
	db "YASUHISA YAMAMURA"
	db $07,$21		; 0721
	%row("YASUHISA") : db " " : %row("YAMAMURA")
	db $09,$19		; 0919
	db "YOICHI YAMADA"
	db $09,$19		; 0919
	%row("YOICHI") : db " " : %row("YAMADA")

	db $03,$31		; 0331
	%green("screen") : db " " : %green("graphics") : db " " : %green("designers")	; Color 2, Green
	db $08,$1F		; 081F
	%yellow("object") : db " " : %yellow("designers")	; Color 1, Yellow
	db $08,$1D		; 081D
	db "SOICHIRO TOMITA"
	db $08,$1D		; 081D
	%row("SOICHIRO") : db " " : %row("TOMITA")
	db $09,$1B		; 091B
	db "TAKAYA IMAMURA"
	db $09,$1B		; 091B
	%row("TAKAYA") : db " " : %row("IMAMURA")

	db $05,$27		; 0529
	%yellow("background") : db " " : %yellow("designers")	; Color 1, Yellow
	db $08,$1D
	db "MASANAO ARIMOTO"
	db $08,$1D
	%row("MASANAO") : db " " : %row("ARIMOTO")
	db $07,$21		; 0721
	db "TSUYOSHI WATANABE"
	db $07,$21		; 0721
	%row("TSUYOSHI") : db " " : %row("WATANABE")

	db $08,$1F	; 0x07335F
	db "program director"	; Color 3, Red
	db $08,$1F
	db "TOSHIHIKO NAKAGO"
	db $08,$1F
	%row("TOSHIHIKO") : db " " : %row("NAKAGO")

	db $08,$1D	
	%green("main") : db " " : %green("programmer")	; Color 2, Green
	db $08,$1F
	db "YASUNARI SOEJIMA"
	db $08,$1F
	%row("YASUNARI") : db " " : %row("SOEJIMA")
	db $09,$1B
	db "KAZUAKI MORITA"
	db $09,$1B
	%row("KAZUAKI") : db " " : %row("MORITA")

	db $0A,$15	; 0x0733EA
	%yellow("programmers")		; Color 1, Yellow
	db $08,$1F
	db "TATSUO NISHIYAMA"
	db $08,$1F
	%row("TATSUO") : db " " : %row("NISHIYAMA")
	db $08,$1D
	db "YUICHI YAMAMOTO"
	db $08,$1D
	%row("YUICHI") : db " " : %row("YAMAMOTO")
	db $08,$1F
	db "YOSHIHIRO NOMOTO"
	db $08,$1F
	%row("YOSHIHIRO") : db " " : %row("NOMOTO")
	db $0B,$11
	db "EIJI NOTO"
	db $0B,$11
	%row("EIJI") : db " " : %row("NOTO")
	db $08,$1D
	db "SATORU TAKAHATA"
	db $08,$1D
	%row("SATORU") : db " " : %row("TAKAHATA")

	db $09,$1B
	db "sound composer"	; Color 3, Red
	db $0B,$13
	db "KOJI KONDO"
	db $0B,$13
	%row("KOJI") : db " " : %row("KONDO")

	db $0A,$17
	%green("coordinators")	; Color 2, Green
	db $0B,$13
	db "KEIZO KATO"
	db $0B,$13
	%row("KEIZO") : db " " : %row("KATO")

	db $0A,$19
	db "TAKAO SHIMIZU"
	db $0A,$19
	%row("TAKAO") : db " " : %row("SHIMIZU")

	db $08,$1D
	%yellow("printed") : db " " : %yellow("artwork")	; Color 1, Yellow
	db $09,$19
	db "YOICHI KOTABE"
	db $09,$19
	%row("YOICHI") : db " " : %row("KOTABE")
	db $0A,$17
	db "HIDEKI FUJII"
	db $0A,$17
	%row("HIDEKI") : db " " : %row("FUJII")
	db $08,$1F
	db "YOSHIAKI KOIZUMI"
	db $08,$1F
	%row("YOSHIAKI") : db " " : %row("KOIZUMI")
	db $09,$1B
	db "YASUHIRO SAKAI"
	db $09,$1B
	%row("YASUHIRO") : db " " : %row("SAKAI")

	db $08,$1D
	db "TOMOAKI KUROUME"
	db $08,$1D
	%row("TOMOAKI") : db " " : %row("KUROUME")

	db $07,$21
	db "special thanks to"	; Color 3, Red
	db $09,$19
	db "NOBUO OKAJIMA"
	db $09,$19
	%row("NOBUO") : db " " : %row("OKAJIMA")
	db $07,$21
	db "YASUNORI TAKETANI"
	db $07,$21
	%row("YASUNORI") : db " " : %row("TAKETANI")
	db $0A,$17
	db "KIYOSHI KODA"
	db $0A,$17
	%row("KIYOSHI") : db " " : %row("KODA")
	db $07,$23
	db "TAKAMITSU KUZUHARA"
	db $07,$23
	%row("TAKAMITSU") : db " " : %row("KUZUHARA")
	db $09,$1B
	db "HIRONOBU KAKUI"
	db $09,$1B
	%row("HIRONOBU") : db " " : %row("KAKUI")
	db $07,$21
	db "SHIGEKI YAMASHIRO"
	db $07,$21
	%row("SHIGEKI") : db " " : %row("YAMASHIRO")

	db $07,$21
	%green("object") : db " " : %green("programmer")	; Color 2, Green
	db $09,$1B
	db "TOSHIO IWAWAKI"
	db $09,$1B
	%row("TOSHIO") : db " " : %row("IWAWAKI")

	db $06,$25
	db "SHIGEHIRO KASAMATSU"
	db $06,$25
	%row("SHIGEHIRO") : db " " : %row("KASAMATSU")

	db $0A,$19
	db "QUEST HISTORY"
	db $0A,$19
	%row("QUEST") : db " " : %row("HISTORY")

	; 0x073713
	db $03,$33
	db "location            deaths"	; Color 3, Red

	db $04,$19
	%yellow("hyrule") : db " " : %yellow("castle")	; Color 1, Yellow (castle of hyrule)
	db $04,$1B
	%green("castle") : db " " : %green("dungeon")	; Color 2, Green
	db $04,$1B
	%yellow("eastern") : db " " : %yellow("temple")	; Color 1, Yellow "east palace"
	db $04,$19
	%green("desert") : db " " : %green("temple")	; Color 2, Green "desert palace"
	db $04,$19
	%yellow("tower") : db " " : %yellow("of") : db " " : %yellow("hera")	; Color 1, Yellow "mountain tower"

	db $08,$1D
	db "1 SHADOW TEMPLE"	; "DARK PALACE"
	db $03,$27
	db "level"
	%num("1") : db " " : %row("SHADOW") : db " " : %row("TEMPLE")	; Color 3, Red "DARK PALACE"
	db $08,$1B
	db "2 WATER SHRINE"	; "SWAMP PALACE"
	db $03,$25
	db "level"
	%num("2") : db " " : %row("WATER") : db " " : %row("SHRINE")	; Color 3, Red "SWAMP PALACE"
	db $08,$19
	db "3 SKULL WOODS"
	db $03,$23
	db "level"
	%num("3") : db " " : %row("SKULL") : db " " : %row("WOODS")	; Color 3, Red
	db $08,$21
	db "4 OUTCAST VILLAGE"	; "THIEVES' TOWN"
	db $03,$2B
	db "level"
	%num("4") : db " " : %row("OUTCAST") : db " " : %row("VILLAGE")	; Color 3, Red "SWAMP PALACE"
	db $08,$15
	db "5 ICE TOWER"	; "ICE PALACE"
	db $03,$1F
	db "level"
	%num("5") : db " " : %row("ICE") : db " " : %row("TOWER")	; Color 3, Red "ICE PALACE"
	db $08,$19
	db "6 DEVIL`S BOG"	; "MISERY MIRE"
	db $03,$23
	db "level"
	%num("6") : db " " : %row("DEVIL") : db $9D : %row("S") : db " " : %row("BOG")	; Color 3, Red "MISERY MIRE"
	db $08,$19
	db "7 TURTLE ROCK"
	db $03,$23
	db "level"
	%num("7") : db " " : %row("TURTLE") : db " " : %row("ROCK")	; Color 3, Red
	db $08,$1D
	db "8 GANON`S TOWER"
	db $03,$27
	db "level"
	%num("8") : db " " : %row("GANON") : db $9D : %row("S") : db " " : %row("TOWER")	; Color 3, Red

	db $04,$1F
	db "TOTAL LIVES LOST"	; "TOTAL GAMES PLAYED"
	db $04,$1F
	%row("TOTAL") : db " " : %row("LIVES") : db " " : %row("LOST")	; "TOTAL GAMES PLAYED"

	db $08,$1F
	db "YASUNARI NISHIDA"	; 1st row
	db $08,$1F
	%row("YASUNARI") : db " " : %row("NISHIDA")	; 2nd row

	db $05,$29
	%yellow("english") : db " " : %yellow("retranslation")	; Color 1, Yellow
	db $07,$21
	db "TRANSLATION QUEST"
	db $07,$21
	%row("TRANSLATION") : db " " : %row("QUEST")

;----------------------------------------
; If there's free space afterwards, pad it out with $FF
padbyte $FF : pad $0EB93D

warnpc $0EB93D	; 0x07393D
