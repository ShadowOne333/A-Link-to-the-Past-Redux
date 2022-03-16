;****************************************************************
; 	Zelda 3 Redux - Dialogue 1 data
;****************************************************************

;****************************************
;    Include Table & Dictionary files
;****************************************
pushtable
incsrc "code/text/main_font.txt"

;****************************************
; 	Definitions
;****************************************
; Definitions for the Dictionary
incsrc "code/text/dictionary.txt"

; Control codes definitions
incsrc "code/text/control_codes.txt"

;****************************************
;	Text pointers
;****************************************
; Text pointer for dialogue table 1
org $0ED3EE	; 0x0753EE
	lda.b #(dialogue_table1)>>16	; lda #$1C	; A9 1C
	sta $02
	rep #$30		; C2 30	
	lda #(dialogue_table1)	; lda #$8000	; A9 00 80

;****************************************
;	Dialogue
;****************************************
; Starting address for Dialogue Table 1, size $8000
org $1C8000	; 0x0E0000
dialogue_table1:
;----------------------------------------
.message_000:
	db !End
;----------------------------------------
.message_001:
	db !Speed00,!Line3
	db "!{4_}!{2_}",!Line2
	db "!{4_}>",!Choose,!End
;----------------------------------------
.message_002:
	db !Speed00,!Line2
	db "!{4_}!{2_}",!Line3
	db "!{4_}>",!Choose,!End
;----------------------------------------
.message_003:
	db !Speed00
	db "Save And C!{on}t!{in}ue",!Line2
	db "Save And Qu!{it}",!Line3
	db "Do Not Save And C!{on}t!{in}ue",!End
;----------------------------------------
.message_004:
	db !Speed00
	db "0- ",!{Number00},". 1- ",!{Number01},!Line2
	db "2- ",!{Number02},". 3- ",!{Number03},!End
;----------------------------------------
.message_005:
	db "!{You} c!{an}'t !{ent}!{er_}!{with} !{some}!{thin}g",!Line2
	db "fol!{lo}!{wi}ng !{you}.",!End
;----------------------------------------
.message_006:
	db !Speed00,!Line1
	db ">",!Line2
	db "!{2_}",!Line3
	db "!{2_}",!Choose2,!End
;----------------------------------------
.message_007:
	db !Speed00,!Line1
	db "!{2_}",!Line2
	db ">",!Line3
	db "!{2_}",!Choose2,!End
;----------------------------------------
.message_008:
	db !Speed00,!Line1
	db "!{2_}",!Line2
	db "!{2_}",!Line3
	db ">",!Choose2,!End
;----------------------------------------
.message_009:
	db !Speed00,!Line1
	db ">",!Line2
	db "!{2_}",!Choose3,!End
;----------------------------------------
.message_010:
	db !Speed00,!Line1
	db "!{2_}",!Line2
	db ">",!Choose3,!End
;----------------------------------------
.message_011:
	db !Speed00,!Line3
	db "!{4_}",!Line2
	db "!{2_}>",!SelChng,!End
;----------------------------------------
.message_012:
	db !Speed00,!Line2
	db "!{4_}",!Line3
	db "!{2_}>",!SelChng,!End
;----------------------------------------
.message_013:
	db "!{Name}, I'm !{go}!{ing_}!{out_}!{for} a",!Line2
	db "!{wh}ile.!{2_}I'll !{be} !{ba}!{ck} by m!{or}n!{in}g.",!Line3
	db "D!{on}'t leave !{the} hou!{se}.",!End
;----------------------------------------
.message_014:
	db "Unnh!{Dots} !{Name}, I !{di}d!{nt_}!{wa}nt",!Line2
	db "!{you} !{in}volv!{ed_}!{in} !{thi}s!{Dots}!{2_}I !{to}ld",!Line3
	db "!{you} !{not} !{to} leave !{the} hou!{se}!{Dots}",!WaitKey,!Scroll
	db "Take my sw!{or}d !{and_}!{sh}ield !{and}",!Scroll
	db "l!{is}t!{en}.!{2_}!{You} !{can_}focus !{pow}!{er_}!{in}",!Scroll
	db "!{the} b!{la}de (hold !{the} B But!{to}n).",!WaitKey,!Scroll
	db "!{Dots}!{The}n !{re}lea!{se} !{it} us!{ing_}!{the}",!Scroll
	db "!{se}c!{re}t technique !{ha}nd!{ed_}!{do}wn",!Scroll
	db "by our peo!{ple}!{Dots}",!WaitKey,!Scroll
	db "!{Name}, !{you} !{can_}!{do} !{it}!",!Scroll
	db "Save !{the} Pr!{in}cess!{Dots}",!Scroll
	db "Zelda !{is} !{you}r!{Dots} !{Dots} !{Dots}",!End
;----------------------------------------


warnpc $1D8000	; 0xE80000
