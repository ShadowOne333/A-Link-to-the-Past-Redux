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

; Macro for coloured texts (yellow, green and red)
; PENDING
!Red = $00
!Yellow = $1A
!Green = $38

; Macro for 2nd row big text
macro row(str)
	!i = 0
	while !i < stringlength("<str>")
		db char("<str>",!i)*2
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

;****************************************
; 	Main credits text
;****************************************

org $0EBF4C	; 0x073F4C-0x074302
credits_text:
	db $62,$65,$00,$2B	; Length 22
	db "the return of the king"|!Yellow	; Color 1, Yellow

	db $62,$E9,$00,$19	; Length 30
	db "HYRULE CASTLE"	; First row
	db $63,$09,$00,$19	; Length 30
	%row("HYRULE CASTLE")	; Second row

	db $62,$68,$00,$1B	; Length 14
;	db " loyal priest "	; Color 1, Yellow "the loyal sage"
;	db $62,$EB,$00,$11	; Length 9

;	db $63,$0B,$00,$11
;	...

;	loyal priest - SANCTUARY	; Color 1, Yellow
;	sahasralah's homecoming - KAKARIKO TOWN	; Color 1, Yellow
;	vultures rule the desert - DESERT PALACE	; Color 1, Yellow
;	the bully makes a friend - MOUNTAIN TOWER	; Color 1, Yellow
;	your uncle recovers - YOUR HOUSE	; Color 1, Yellow
;	flippers for sale - ZORA'S WATERFALL	; Color 1, Yellow
;	the witch and assistant - MAGIC SHOP	; Color 1, Yellow
;	twin lumberjacks - WOODSMEN'S HUT	; Color 1, Yellow
;	flute boy plays again - HAUNTED GROVE	; Color 1, Yellow
;	venus, queen of fairies - WISHING WELL	; Color 1, Yellow
;	the dwarven swordsmiths	- SMITHERY	; Color 1, Yellow
;	the bug-catching kid - KAKARIKO TOWN	; Color 1, Yellow
;	the lost old man - DEATH MOUNTAIN	; Color 1, Yellow
;	the forest thief - LOST WOODS	; Color 1, Yellow
;	and the master sword	; Color 1, Yellow
;	sleeps again...		; Color 2, Green
;	FOREVER!

;----------------------------------------

org $0EB178	; 0x073178
credits_roll:
	db $0723		; 0723-18
	db "executive producer"	; Color 2, Green
	db $FF
	db $081F		; 081F-16
	db "HIROSHI YAMAUCHI"	; 1st row
	db $081F		; 081F-16
	db "HIROSHI YAMAUCHI"	; 2nd row

	db $0C0F		; 0C0F-8
	db "producer"		; Color 1, Yellow
	db $081F		; 081F-16
	db "SHIGERU MIYAMOTO"	; 1st row
	db $081F		; 081F-16
	db "SHIGERU MIYAMOTO"	; 2nd row

	db $0C0F		; 0C0F-8
	db "director"		; Color 3, Red
	db $091B		; 091B
	db "TAKASHI TEZUKA"	; 1st row
	db $091B
	db "TAKASHI TEZUKA"	; 2nd row

	db $0919		; 0919
	db "script writer"	; Color 2, Green
	db $091B		; 091B
	db "KENSUKE TANABE"	; 1st row
	db $091B		; 091B
	db "KENSUKE TANABE"	; 2nd row

	db $0625		; 0625
	db "assistant directors"	; Color 1, Yellow
	db $0721		; 0721
	db "YASUHISA YAMAMURA"
	db $0721		; 0721
	db "YASUHISA YAMAMURA"
	db $0919		; 0919
	db "YOICHI YAMADA"
	db $0919		; 0919
	db "YOICHI YAMADA"

	db $0331		; 0331
	db "screen graphics designers"	; Color 2, Green
	db $081F		; 081F
	db "object designers"	; Color 1, Yellow
	db $081D		; 081D
	db "SOICHIRO TOMITA"
	db $081D		; 081D
	db "SOICHIRO TOMITA"
	db $091B		; 091B
	db "TAKAYA IMAMURA"
	db $091B		; 091B
	db "TAKAYA IMAMURA"

	db $0529		; 0529
	db "background designers"	; Color 1, Yellow
	db $081D
	db "MASANAO ARIMOTO"
	db $081D
	db "MASANAO ARIMOTO"
	db $0721		; 0721
	db "TSUYOSHI WATANABE"
	db $0721		; 0721
	db "TSUYOSHI WATANABE"

	db $081F	; 0x07335F
	db "program director"	; Color 3, Red
	db $081F
	db "YOSHIHIKO NAKAGO"
	db $081F
	db "YOSHIHIKO NAKAGO"

	db $081D	
	db "main programmer"	; Color 2, Green
	db $081F
	db "YASUNARI SOEJIMA"
	db $081F
	db "YASUNARI SOEJIMA"
	db $091B
	db "KAZUAKI MORITA"
	db $091B
	db "KAZUAKI MORITA"

	db $0A15	; 0x0733EA
	db "programmers"
	db $081F
	db "TATSUO NISHIYAMA"
	db $081F
	db "TATSUO NISHIYAMA"
	db $081D
	db "YUICHI YAMAMOTO"
	db $081D
	db "YUICHI YAMAMOTO"
	db $081F
	db "YOSHIHIRO NOMOTO"
	db $081F
	db "YOSHIHIRO NOMOTO"
	db $1B11
	db "EIJI NOTO"
	db $1B11
	db "EIJI NOTO"
	db $081D
	db "SATORU TAKAHATA"
	db $081D
	db "SATORU TAKAHATA"

	db $091B
	db "sound composer"	; Color 3, Red
	db $0B13
	db "KOJI KONDO"
	db $0B13
	db "KOJI KONDO"

	db $0A17
	db "coordinators"	; Color 2, Green
	db $0B13
	db "KEIZO KATO"
	db $0B13
	db "KEIZO KATO"

	db $0A19
	db "TAKAO SHIMIZU"
	db $0A19
	db "TAKAO SHIMIZU"

	db $081F
	db "printed art work"	; Color 1, Yellow
	db $0919
	db "YOICHI KOTABE"
	db $0919
	db "YOICHI KOTABE"
	db $0A17
	db "HIDEKI FUJII"
	db $0A17
	db "HIDEKI FUJII"
	db $081F
	db "YOSHIAKI KOIZUMI"
	db $081F
	db "YOSHIAKI KOIZUMI"
	db $091B
	db "YASUHIRO SAKAI"
	db $091B
	db "YASUHIRO SAKAI"

	db $081D
	db "TOMOAKI KUROUME"
	db $081D
	db "TOMOAKI KUROUME"

	db $0721
	db "special thanks to"	; Color 3, Red
	db $0919
	db "NOBUO OKAJIMA"
	db $0919
	db "NOBUO OKAJIMA"
	db $0721
	db "YASUNORI TAKETANI"
	db $0721
	db "YASUNORI TAKETANI"
	db $0A17
	db "KIYOSHI KODA"
	db $0A17
	db "KIYOSHI KODA"
	db $0723
	db "TAKAMITSU KUZUHARA"
	db $0723
	db "TAKAMITSU KUZUHARA"
	db $091B
	db "HIRONOBU KAKUI"
	db $091B
	db "HIRONOBU KAKUI"
	db $0721
	db "SHIGEKI YAMASHIRO"
	db $0721
	db "SHIGEKI YAMASHIRO"

	db $0721
	db "object programmer"	; Color 2, Green
	db $091B
	db "TOSHIO IWAWAKI"
	db $091B
	db "TOSHIO IWAWAKI"

	db $0625
	db "SHIGEHIRO KASAMATSU"
	db $0625
	db "SHIGEHIRO KASAMATSU"

	db $0A19
	db "QUEST HISTORY"
	db $0A19
	db "QUEST HISTORY"

	; 0x073713
	db $0333
	db "location            deaths"	; Color 3, Red

	db $041F
	db "hyrule castle"	; Color 1, Yellow (castle of hyrule)
	db $041B
	db "castle dungeon"	; Color 2, Green
	db $0415
	db "eastern temple"	; Color 1, Yellow "east palace"
	db $0419
	db "desert temple"	; Color 2, Green "desert palace"
	db $041B
	db "tower of hera"	; Color 1, Yellow "mountain tower"

	db $0819
	db "1 SHADOW TEMPLE"	; "DARK PALACE"
	db $0323
	db "level1 SHADOW TEMPLE"	; Color 3, Red "DARK PALACE"
	db $081B
	db "2 WATER SHRINE"	; "SWAMP PALACE"
	db $0325
	db "level2 WATER SHRINE"	; Color 3, Red "SWAMP PALACE"
	db $0819
	db "3 SKULL WOODS"
	db $0323
	db "level3 SKULL WOODS"	; Color 3, Red
	db $081B
	db "4 OUTCAST VILLAGE"	; "THIEVES' TOWN"
	db $0325
	db "level4 OUTCAST VILLAGE"	; Color 3, Red "SWAMP PALACE"
	db $0817
	db "5 ICE TOWER"	; "ICE PALACE"
	db $0321
	db "level5 ICE TOWER"	; Color 3, Red "ICE PALACE"
	db $0819
	db "6 DEVIL'S BOG"	; "MISERY MIRE"
	db $0323
	db "level6 DEVIL'S BOG"	; Color 3, Red "MISERY MIRE"
	db $0819
	db "7 TURTLE ROCK"
	db $0323
	db "level7 TURTLE ROCK"	; Color 3, Red
	db $081D
	db "8 GANON'S TOWER"
	db $0327
	db "level8 GANON'S TOWER"	; Color 3, Red

	db $0423
	db "TOTAL LIVES LOST"	; "TOTAL GAMES PLAYED"
	db $0423
	db "TOTAL LIVES LOST"	; "TOTAL GAMES PLAYED"

	db $081F
	db "YASUNARI NISHIDA"	; 1st row
	db $081F
	db "YASUNARI NISHIDA"	; 2nd row

	db $052B
	db "english script writers"	; Color 1, Yellow
	db $0A17
	db "DANIEL OWSEN"
	db $0A17
	db "DANIEL OWSEN"
	db $081D
	db "HIROYUKI YAMADA"
	db $081D
	db "HIROYUKI YAMADA"

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
