;****************************************************************
; 	Zelda 2 Redux - Text data
;****************************************************************

;****************************************
; 	Table file
;****************************************
table code/text/text.tbl

;****************************************
; 	Control codes
;****************************************
;define line  $FD  ; line break
;define delay $FE  ; text delay
;define end   $7F  ; end

;****************************************
;	Text pointers
;****************************************
; Text pointer for dialogue table 1
org $0ED437	; 0x075437
	lda #$(dialogue_table1)>>16	;	lda #$DF40	; A9 40 DF
	sta $00		; 85 00
	lda #$(dialogue_table1)		; lda #$000E	; A9 0E 00
	sta $02		; 85 02

;****************************************
;	Dialogue
;****************************************
; Starting address for Dialogue Table 1, size $8000
org $1C8000	; 0x0E0000
dialogue_table1:

;----------------------------------------
message_000:
	db "[End]"
;----------------------------------------
message_001:
	db "[Speed 00][Line3]"
	db $88,$8A
	db "[Line2]"
	db $88
	db ">[Choose][End]"
;----------------------------------------

warnpc $1D8000	; 0xE80000
