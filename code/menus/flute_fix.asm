;****************************************************************
;	Flute fix for 24 Items Menu (by Conn)
;****************************************************************
; Since the shovel isn't replaced anymore by the flute it is possible to dig it up multiple times.
; To prevent this, apply the flute_fix.ips

; If you plan to make acquire the flute out of a chest, there's no need to apply this patch.
; In this case you may set a tree or something else not dig-able on the native flute location.

; Address: 0D/B1E0 (checks whether the flute is in inventory)
org $1BB1E0	; 0x0DB1E0
flute_fix:
	lda $7EF34C	; AF 4C F3 7E, RAM for flute obtained?
	and #$00FF	; 29 FF 00 
	cmp #$0002	; C9 02 00 
	bne +		; D0 01 
	rts
+	cmp #$0003	; C9 03 00 
	bne +		; D0 01 
	rts
+	stx $04B2	; 8E B2 04
	rts

org $1BBE55	; 0x0DBE55
	jsr flute_fix	; 20 E0 B1
