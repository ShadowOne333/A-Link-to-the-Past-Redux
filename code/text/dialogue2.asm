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
; Text pointer for dialogue table 2
org $0ED3EE	; 0x0753EE
	lda #$(dialogue_table2)	; lda #$1C	; A9 1C
org $0ED3F4	; 0x0753F4	
	lda #$(dialogue_table2>>8)	; lda #$8000	; A9 00 80

;****************************************
;	Dialogue
;****************************************
; Starting address for Dialogue Table 2, size $14C0
org $0EDF40	; 0x075F40
dialogue_table2:

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

warnpc $0EF400	; 0x077400
