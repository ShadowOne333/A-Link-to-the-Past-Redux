;*****************************************************************
; 	Miscellaneous assembly hacks for Redux
;*****************************************************************

; This ASM was written by Conn
; This is a ASM FrontEnd Code for Zelda ALTTP (US, no header) to move blocks multiple times.

org $01D87D	; 0x00D87D
	nop #2
	jsl $0EFE00	; (Below the icerod code to not overwrite it)

org $0EFE00	; 0x077E00
	cmp #$2727	; Check if block is already moved
	beq +		; If yes branch to after first RTL
	lda $7F2000,x	; Load block value (e.g., 70, 71, 72...)
	sta $7ED010	; Store to intermediate (unused) 7E/D000 is icerod
	lda $00		; Set old block value to 00 to indicate that it is moved
	sta $7F2000,x
	rtl
                  
+	lda $7ED010	; Branch here if 27 - load intermediate value
	sta $7F2000,x 	; Store intermediate instead of 27
	rtl

;----------------------------------------
; It is possible to hookshot through the in-move blocks - which may result in unwanted effects, this asm code will block this.

org $899CEB	; 0x049CEB
	jsl $A2F1A0	; Somewhere in expanded region 1MB< 0x1171A0<1.5MB

org $899D76	; 0x049D76
	jsl $A2F1A0	; Change it if you want it somewhere else

org $A2F1A0	; 0x1171A0
	tay
	cmp #$1F	; Is hookshot in use?
	beq +
	sta $0C4A,x	; If not let the hookshot routine proceed
	rtl

+	lda $05FD	; Check first byte whether block is currently in-move
	beq $01
	rtl		; If yes, return

	lda $05FC	; Check other byte whether block is currently in-move
	beq +
	rtl

+	tya		; Restore overwritten byte
	sta $0C4A,x	; Continue hookshot routine
	rtl

