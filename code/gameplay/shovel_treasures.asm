;*****************************************************************
; 	Allow the shovel to dig up treasures in other places
;		For New GFX (original code by Conn)
;*****************************************************************

;----------------------------------------
; Hijack for the shovel treasures
; Jump to unused region
org $008793	; 0x000793
	jmp shovel_treasures

;----------------------------------------
; NOP out restriction to only collect treasures in field:

; Check if treasure hunt game is on
org $07A3B2	; 0x03A3B2
	nop #5

; Check if you are in field coordinates
org $1DFD65	; 0x0EFD65
	nop #2

;----------------------------------------

; Disable random Heart Container-piece dig-up:
; 0E/FD7A: 90 FD -> 8F FD
; You need to place this HC via HM to another location, since it isn't available anymore, also the treasure field is now obsolete
;org $1DFD7A	; 0x0EFD7A
;	db $8F

;----------------------------------------

org $0EFE30	; 0x077E30
shovel_treasures:
	sta $00                  
	cmp #$FD8A	; Check if you digged     
	beq $0B		; [$FE42]
	cmp #$FD8F
	beq $06
	sep #$30
	jmp $008797	;[$00:8797], If not digged, return
	txy		; Storage of native X
	sep #$30
	ldx #$00
	lda $8A		; Load screen number
	cmp $0EFED0,x	; Compare with table
	beq $0A		; Branch if screen matches
	inx
	cpx #$08
	bne $F5		; Loop if not until 8 screens are checked
	tyx
	jmp $008797     ; Return if no screen matched
	rep #$30
	lda $0004	; Load coordinate
	ldx #$0000
	cmp $0EFEE0,x	; Compare coordinate with table
	beq $0E		; Match proceed
	inx #2
	cpx #$0010	; If no match loop until checked 8 coordinates
	bne $F3
	sep #$30
	tyx
	jmp $008797	; Return if no coordinate matched
	sep #$30
	txa
	lsr
	tax
	lda $0EFED8,x	; [$0E:FEEB], if coordinate matched, load treasure
	tyx
	jmp $1DFDAC	; Return and display treasure

; The table starts at 07/7ED0. The first 8 bytes are the screens you want to have the treasure hidden. The next 8 bytes (07/7ED8) are the treasure keys you can get from HM. I use default EB (Heart Piece). The next 16 bytes (07/EED0) are the coordinates.
org $0EFED0	; 0x077ED0
treasure_table:
; Treasures table
	db $00,$01,$02,$03,$04,$05,$06,$07
	db $EB,$EB,$EB,$EB,$EB,$EB,$EB,$EB
; Coordinates table
	db $01,$00,$01,$01,$01,$02,$01,$03
	db $01,$04,$01,$05,$01,$06,$01,$07

;----------------------------------------

