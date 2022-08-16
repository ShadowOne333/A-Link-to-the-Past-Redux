;----------------------------------------------------------
;		Shovel Treasures in Overworld
;			by PowerPanda
;----------------------------------------------------------

org $07A3B2	; 0x03A3B2
	jsl $0EFBA0	; Load new check (07/7BA0)
	;bra $03		; Skip over the NOPs
	;nop #3		; 3 empty bytes
	nop #5

org $0EFBA0	; 0x077BA0
; Code originally from 03/A3B2, relocated so BEQ makes sense
	lda $03FC	; Check if digging mini game is inactive
	beq $05		; If it IS inactive, branch to new routine
	jsl $1DFD4B	; Otherwise, load the original digging game routine as a JSL
	rtl		; End this subroutine

; The new digging routine
	phb
	phk
	plb
	jsl $8DBA71	; Get random number
	and #$07	; Convert it to be between 0 and 7
	tay		; Make it the Y variable
	jsl $008781	; Treat the next portion of code as a jump table

; Jump Table
	dw $FBD4	;Jump to "Get Item"
	dw $FBD4	;Jump to "Get Item"
	dw $FC34	;Jump to Cleanup (PLB + RTL)
	dw $FC34	;Jump to Cleanup (PLB + RTL)
	dw $FC34	;Jump to Cleanup (PLB + RTL)
	dw $FC34	;Jump to Cleanup (PLB + RTL)
	dw $FC34	;Jump to Cleanup (PLB + RTL)
	dw $FC34	;Jump to Cleanup (PLB + RTL)

; Important references
	db $F0,$10	; X speeds
	db $00,$13	; X offsets, these determine where and how items spawn

; Possible Items
Possible_Items:
	db $D8		; Heart
	db $D8		; Heart
	db $DF		; Small magic
	db $DF		; Small magic
	db $DF		; Small magic
	db $D9		; 1 Ruppee
	db $D9		; 1 Ruppee 
	db $DA		; 5 Ruppees

; "Get Item" ($FBD4)
	jsl $8DBA71	; Get random number
	and #$07	; Convert it to be between 0 and 7
	tay		; Make it the Y variable
	lda Possible_Items,y	; $FBCC, Use your Y variable to choose an item from the list

; The rest is more or less copied from the original. I changed 4 bytes to point to relocated "important references" table.
; I don't understand everything going on here, but it handles sprite behavior and sound effects.
	jsl $9DF65D
	ldx #$00
	lda $2F
	cmp #$04
	beq $01
	inx
	lda $FBC8,x
	sta $0D50,y
	lda #$00
	sta $0D40,y
	lda #$18
	sta $0F80,y
	lda #$FF
	sta $0B58,y
	lda #$30
	sta $0F10,y
	lda $22
	clc
	adc $FBCA,x
	and #$F0
	sta $0D10,y
	lda $23
	adc #$00
	sta $0D30,y
	lda $20
	clc
	adc #$16
	and #$F0
	sta $0D00,y
	lda $21
	adc #$00
	sta $0D20,y
	lda #$00
	sta $0F20,y
	tyx
	lda #$30
	jsl $8DBB8A

; "Cleanup" ($FC34)
; Changed code that allows all of the new code to work as a Branch instead of nested JSL
	plb
	rtl
