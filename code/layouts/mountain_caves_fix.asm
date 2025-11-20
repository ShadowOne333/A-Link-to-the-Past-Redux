;*****************************************************************
; 		Death Mountain Caves Fix
;*****************************************************************
; There's a couple of cave entrances/exits in the West of Death Mountain (Rooms 00EF and 00FF), where their entrances don't match their floor layouts inside (1F/B1).
; Flipping them fixes this oversight.

arch snes.cpu		; Set processor architecture (SNES)
lorom			; Switch to LoROM mapping mode

;-------------------------------------
; Change Death Mountain Exits 00EF <-> 00FF
;-------------------------------------

; Change which room is assigned to a specific exit
org $02DDC8	; 0x015DC8
; Originally $00FF,$00EF
	dw $00EF,$00FF

org $02DEB6	; 0x015EB6
; Originally db $18 : skip 1 : db $0F
	db $0F : skip 1 : db $18

; Change rooms Scroll Y values
org $02DF53	; 0x015F53
; Originally $0308,$01E8
	;  00FF, 00EF
	dw $01E8,$0308

; Change rooms Y-Pos values
org $02E08F	; 0x01608F
; Originally $0357,$0237
	;  00FF, 00EF	<- Rooms
	dw $0237,$0357

org $02E12D	; 0x01612D
; Originally db $CA : skip 1 : db $AA
	db $AA : skip 1 : db $CA

; Change rooms Center Y values
org $02E1CB	; 0x0161CB
; Originally $0372,$0252
	;  00FF, 00EF	<- Rooms
	dw $0252,$0372

org $02E269	; 0x016269
; Originally db $D2 : skip 1 : db $B2
	db $B2 : skip 1 : db $D2

; Change unknown value from both Exits
org $02E2E8	; 0x0162E8
; Originally db $0B,$0A
	db $0A,$0B

;-------------------------------------
; Change Death Mountain Entrances $1E <-> $1F
;-------------------------------------

org $1BBAAB	; 0x0DBAAB
; Originally $1274,$1B78
	dw $1B78,$1274

;----------------------------------------

