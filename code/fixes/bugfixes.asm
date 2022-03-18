;****************************************************************
;	General bugfixes
;****************************************************************

;----------------------------------------
; Dark World Spawn Fix
; If you go into the dark world, when you are collecting pendants and you are defeated outside, you will spawn in light world. But if you are defeated inside, the game will bug out, since it assumes you are in the light world (when infact you are in the dark world). This can result in heavy buggs when crossing the overworld. Fix is:

org $09F526	; 0x04F526
	bra $10		; Originally BCS $10

; This will spawn the player at Pyramid exit.
; So now you can collect the pendants in the dark world.

;----------------------------------------
; Water Gate Gix
; When you pull the switch in the Water Gate Room to unleash the water, the entire room is flooded instead just the corridor:

org $01CBAC	; 0x00CBAC
	lda #$0004	; LDA #$000C

; Note: in some cases the fix will not work since the rom is bugged to much

;----------------------------------------
; Modify the power of the Sword-Beam:

org $06EC8A	; 0x036C8A
	db $02		; Make beam damage equal to Master Sword

; $01 = Default
; $02 = Sword-2 power
; $03 = Sword-3 power
; $04 = Sword-4 power
; $00 = Stun only, like the boomerang (suitable for Master Quests)

;----------------------------------------
; Kholdstare Shell Fix (by MathOnNapkins):
; Additional info: The fade is supposed to occur when the shell is defeated and is meant to simulate melting, probably.
; -Original code: the ice from cold stare disappears in an instant. 
; -New code: the ice disappears slowly. (Amazing what 4 bytes can do)

org $00EC58	; 0x006C58
	lda $7EC3A0,x	; BF A0 C3 7E
	sta $7EC5A0,x	; 9F A0 C5 7E

org $00ECBB	; 0x006CBB
	ldx #$00A0	; A2 A0 00
	lda #$00B0	; A9 B0 00
	jmp $EB98	; 4C 98 EB


;----------------------------------------
; Bunny Glove Fix (by Conn)
; This fixes the glove palette when wearing ingame reseting to skin color - it happens in native Zelda when:
; * opening the overworld map
; * opening the dungeon map (makes the glove palette to disappear from the moment you visit another room in the dungeon)
; * being electrocuted
; * using Ether
; * being hit by a rabbit beam

org $07FDD0	; 0x03FDD0
	lda $02E0	; AD E0 02
	and #$00FF	; 29 FF 00
	beq +		; F0 05
	sep #$30	; E2 30
	inc $15		; E6 15
	rtl		; 6B

+	jsl $1BEE1D	; 22 1D EE 1B
	rtl		; 6B

org $0ED73C	; 0x07573C
	jsl $07FDD0	; 22 D0 FD 07

;----------------------------------------
; Mothula L4 Fix (by Conn)
; This patch fixes that the boss Mothula is immune against the Golden Sword and the spin attack from the Tempered Sword.

org $028136	; 0x010136
	jsl $04EC60	; 22 60 EC 04 ($04EC78 in Redux)

org $04EC60	; 0x026C60
	lda #$01	; A9 01
	sta $7F6884	; 8F 84 68 7F
	sta $8F6885	; 8F 85 68 7F
	jsl $00893D	; 22 3D 89 00
	rtl

org $06E840	; 0x036840
	cpy #$09F7	; C0 F7 09

org $09F7C0	; 0x04F7C0
	lda $0E20,x	; BD 20 0E
	cmp #$88	; C9 88
	bne +		; D0 09
	lda $0EF0	; AD F0 0E
	bne ++		; D0 0A
	lda #$06	; A9 06
	bra +++		; 80 02
+	lda #$04	; A9 04
+++	jsl $06ECE0	; 22 E0 EC 06
++	rtl

;----------------------------------------
; Death Counter Fix (by Conn)
; This patch prevents that it is counted as death when:
; - Pressing select -> Save&Quit
; - Dying and choose "Don't save and continue"
; Dying and choosing "Save and Continue" as well as "Save and Quit" still count as death of course

org $04EC70	; 0x026C70
	lda $10		; A5 10
	cmp #$0912	; C9 12 09
	beq +		; F0 01
	rtl

+	lda $B0		; A5 B0
	and #$00FF	; 29 FF 00
	cmp #$0002	; C9 02 00
	bne +		; D0 01 
	rtl

+	lda $7EF403	; AF 03 F4 7E
	inc		; 1A
	sta $7EF403	; 8F 03 F4 7E
	rtl

org $09F597	; 0x04F597
	jsl $04EC70	; 22 70 EC 04 
	nop #5

;----------------------------------------
; Shield Fix (by Conn)
; If a shield is stolen by a Pikit (that pumpkin monster with the long tongue e.g., in front of ice dungeon) and you use the ether, get the L2 shield back, your shield will have a blue palette.
; This patch restores the normal gold-red palette
org $04EC90	; 0x026C90
	phx		; DA
	phy		; 5A
	sta $7EF35A	; 8F 5A F3 7E
	jsl $1BED29	; 22 29 ED 1B
	ply		; 7A
	plx		; FA
	rtl

org $06D173	; 0x035173
	jsl $04EC90	; 22 90 EC 04

;----------------------------------------
; Cane of Somaria Fix (by Conn)
; Disables frequent use of the Cane of Somaria that causes bugs

org $07AED4	; 0x03AED4
	jmp $FC62	; 4C 62 FC

org $07FC62	; 0x03FC62
	lda $0C4A,x	; BD 4A 0C
	cmp #$2C	; C9 2C
	bne +		; D0 03
	jmp $AEE5	; 4C E5 AE
+	cmp #$01	; C9 01
	bne +		; D0 03
	jmp $AE87	; 4C 87 AE
+	jmp $AEDB	; 4C DB AE

;----------------------------------------
; Cape Fix (by Conn)
; Disables grabbing with magic cape and thus having no magic drain when pulling a statue

org $07FCA4	; 0x03FCA4
	stz $0376	; 9C 76 03
	rep #$30	; C2 30
	lda $0352	; AD 52 03
	rtl

org $0DAA65	; 0x06AA65
	jsl $07FCA4	; 22 A4 FC 07
	nop

;----------------------------------------
; Flickering Fix (by Conn)
; Fixes the flickering that appears sometimes in the start or select menu

org $00876B	; 0x00076B
	jsl $02C4E0	; 22 E0 C4 02
	nop #2

org $02C4C0	; 0x0144C0
	stx $0FA0	; 8E A0 0F
	lda $10		; A5 10
	cmp #$0E	; C9 0E
	beq +		; F0 04
	lda $0C4A,x	; BD 4A 0C
	rtl

+	lda $11		; A5 11
	cmp #$01	; C9 01
	beq +		; F0 04
	lda $0C4A,x	; BD 4A 0C
	rtl

+	lda #$00	; A9 00
	rtl

org $02C4E0	; 0x0144E0
	sta $0AF2	; 8D F2 0A
	lda $10		; A5 10
	cmp #$0B0E	; C9 0E 0B
	beq +		; F0 04
	lda $0AF4	; AD F4 0A
	rtl

+	stz $0AF4	; 9C F4 0A
	rtl

org $08832D	; 0x04032D
	jsl $02C4C0	; 22 C0 C4 02
	nop #2

;----------------------------------------
; Whirl Fix (by Conn)
; Fixes the music restart when using a whirlpool and you looked at the map before

org $02B434	; 0x013434
	jsr $C4DA	; 20 DA C4

org $02C4DA	; 0x0144DA
	sta $012E	; 8D 2E 01
	jmp $C4F2	; 4C F2 C4

org $02C4F2	; 0x0144F2
	lda $0133	; AD 33 01
	cmp #$F3	; C9 F3
	bne +		; D0 06
	lda $0130	; AD 30 01
	sta $0133	; 8D 33 01
+	rts

;----------------------------------------
; Chime Teleport Native ONLY (by Conn)
; As the name tells, use this hack only on NATIVE ALTTP. If you lift the teleport in Lake Hylia to access the ice dungeon you hear no chime. The reason is that the cave in the bottom-left corner is bombed open.
; This patch lets you hear a chime everytime you lift the stone (as you hear it for other teleports).

org $04ECA0	; 0x026CA0
	cpx #$0035	; E0 35 00
	bne +		; D0 04
	jml $1BC90B	; 5C 0B C9 1B
+	lda $7EF280,x	; BF 80 F2 7E
	jml $1BC906	; 5C 06 C9 1B

org $1BC902	; 0x0DC902
	jml $04ECA0	; 5C A0 EC 04

;----------------------------------------
; Cane Fix (by Conn)
; When having a trap door switch in a dungeon room with exit, and you use the cane somaria to keep the door open and leave the dungeon, the game breaks (e.g., skull wood dungeon, big key entrance).

org $01C4B8	; 0x00C4B8
	jsl $0EFCA1	; 22 A1 FC 0E

org $01C501	; 0x00C501
	jsl $0EFCA1	; 22 A1 FC 0E

org $01C592	; 0x00C592
	jsl $0EFCA1	; 22 A1 FC 0E

org $01C65F	; 0x00C65F
	jsl $0EFCA1	; 22 A1 FC 0E

org $02B7BB	; 0x0137BB
	jsl $8EFC70	; 22 70 FC 8E

org $0EFC70	; 0x077C70
	lda #$0F	; A9 0F
	sta $10		; 85 10
	lda #$01	; A9 01
	sta $0468	; 8D 68 04
	rtl

org $0EFCA1	; 0x077CA1
	lda $10		; A5 10
	cmp #$0F	; C9 0F
	bne +		; D0 04
	stz $012F	; 9C 2F 01
	rtl

+	lda #$05	; A9 05
	sta $11		; 85 11
	rtl

;----------------------------------------
; Moldrum Bounce SFX (by Conn)
; Originally it was thought to hear a bounce back sfx when hitting Moldrum's head. The malcode by Nintendo can cause noise in hacks, so better apply it

org $06F35C	; 0x03735C
	jsl $0DBB8A	; 22 A1 BB 0D, Originally JSL $0DBBA1

org $1DD7B8	; 0x0ED7B8
	jsl $0DBB8A	; 22 A1 BB 0D, Originally JSL $0DBBA1



