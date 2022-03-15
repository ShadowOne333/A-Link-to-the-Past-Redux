;****************************************************************
; 	Zelda 3 Redux - Dialogue 1 data
;****************************************************************

;****************************************
; 	Table file
;****************************************
table "code/text/text.txt",ltr

;****************************************
; 	Definitions
;****************************************
; Include dictionary file
;incsrc "code/text/dictionary.asm"

!dots = $43
!Ankh1 = $47
!Waves1 = $48
!Snake1 = $49
!LinkL = $4A
!LinkR = $4B
!Up = $4D
!Down = $4E
!Left = $4F
!Right = $50
!A = $5B
!B = $5C
!X = $5D
!Y = $5E
;!! = $60
;!¡ = $61
!NextPic = $67
!Choose = $68
!Item = $69
!Name = $6A
!Window = $6B		; 
!Number = $6C		; 
!Position = $6D		; 
!ScrollSpd = $6E	; 
!SelChng = $6F
!70 = $70
!Choose2 = $71
!Choose3 = $72
!Scroll = $73
!Line1 = $74
!Line2 = $75
!Line3 = $76
!Color = $77		; 
!Wait = $78		; 
!Sound = $79		; 
!Speed00 = $7A,$00	; Speed 00 
!Speed01 = $7A,$00	; Speed 01
!7B = $7B
!7C = $7C
!7D = $7D
!WaitKey = $7E	; Wait for prompt or button input
!End = $7F	; End current text message
!in = $B4
!it = B6
!on = $C7

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
	db $88,$8A
	db !Line2
	db $88
	db ">",!Choose,!End
;----------------------------------------
.message_002:
	db !Speed00,!Line2
	db $88,$8A
	db !Line3
	db $88
	db ">",!Choose,!End
;----------------------------------------
.message_003:
	db !Speed00
	db "Save And C",!on,"t",!in,"ue",!Line2
	db "Save And Qu",!it,!Line3
	db "Do Not Save And C",!on,"t",!in,"ue",!End
;----------------------------------------

warnpc $1D8000	; 0xE80000
