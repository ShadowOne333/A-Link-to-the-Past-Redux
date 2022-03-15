;****************************************************************
; 	Zelda 3 Redux - Dialogue 2 data
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
;!\! = $60
;!\¡ = $61
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
!Speed = $7A		; 
!7B = $7B
!7C = $7C
!7D = $7D
!WaitKey = $7E	; Wait for prompt or button input
!End = $7F	; End current text message
;!... = $43
;![Ankh1] = $47
;![Waves1] = $48
;![Snake1] = $49
;![LinkL] = $4A
;![LinkR] = $4B
;![Up] = $4D
;![Down] = $4E
;![Left] = $4F
;![Right] = $50
;![A] = $5B
;![B] = $5C
;![X] = $5D
;![Y] = $5E
;![!] = $60
;!¡ = $61
;[NextPic] = $67
;[Choose] = $68
;[Item] = $69
;[Name] = $6A
;[Window = $6B
;[Number = $6C
;[Position = $6D
;[ScrollSpd = $6E
;[SelChng] = $6F
;[70] = $70
;[Choose2] = $71
;[Choose3] = $72
;[Scroll] = $73
;[Line1] = $74
;[Line2] = $75
;[Line3] = $76
;[Color = $77
;[Wait = $78
;[Sound = $79
;[Speed = $7A
;[7B] = $7B
;[7C] = $7C
;[7D] = $7D
;[WaitKey] = $7E
;[End] = $7F

;****************************************
;	Text pointers
;****************************************
; Text pointer for dialogue table 2
org $0ED436	; 0x075436
	lda #(dialogue_table2)		; lda #$DF40	; A9 40 DF
	sta $00		; 85 00
	lda #(dialogue_table2)>>16	; lda #$000E	; A9 0E 00
	sta $02		; 85 02

;****************************************
;	Dialogue
;****************************************
; Starting address for Dialogue Table 2, size $14C0
org $0EDF40	; 0x075F40
dialogue_table2:
;----------------------------------------
.message_000:
	db !End
;----------------------------------------
.message_001:
	db !Speed00,!Line3
	db $88,''
	db !Line2
	db $88
	db ">",!Choose,!End
;----------------------------------------

warnpc $0EF400	; 0x077400
