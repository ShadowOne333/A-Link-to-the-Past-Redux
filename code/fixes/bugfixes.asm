;****************************************************************
;	General bugfixes
;****************************************************************

;----------------------------------------
; Dark World Spawn Fix
; If you go into the dark world, when you are collecting pendants and you are defeated outside, you will spawn in light world. But if you are defeated inside, the game will bug out, since it assumes you are in the light world (when infact you are in the dark world). This can result in heavy bugs when crossing the overworld. Fix is:

; NOT NEEDED IN REDUX, CAUSES BUNNY LINK TO APPEAR IN THE PYRAMID IF THE PLAYER SAVES WHEN THEY GAIN CONTROL OF HIM IN THE DARK WORLD
;org $09F526	; 0x04F526
	;bra $10		; Originally BCS $10

; This will spawn the player at Pyramid exit.
; So now you can collect the pendants in the dark world.

;----------------------------------------
; Water Gate Fix
; When you pull the switch in the Water Gate Room to unleash the water, the entire room is flooded instead just the corridor:

org $01CBAC	; 0x00CBAC
	lda #$0004	; LDA #$000C

; Note: in some cases the fix will not work since the rom is bugged to much


; SIDE NOTE:
; Modifying the title screen with Hyrule Magic has the unintended behaviour of changing an LDA address to point to bugged data, causing the very first key door in Swamp Palace to get locked back if you exit the dungeon. This can cause a softlock if the player leaves the dungeon before finishing it.

; To fix it in case it happens again:
; 7EF051 is the room data containing the first door in the Swamp Palace. That code is responsible for flooding the room when you pull the lever in the floodgates

; %fseek($01CBA0)	; 0x00CBA0
	;lda $7EF051
	;ora #$01
	;sta $7EF051

; When the lda target gets corrupted, it loads a 0, clearing the door unlocked flag, then sets the room flooded flag and stores that back.
; However the flag saying you opened the chest containing the small key is 7EF050, so that DOESN'T get cleared, the chest stays opened, you can't grab the key again, and you're softlocked.

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

%fseek($04ECA0)	; 0x026CA0 -> 0x027
	cpx #$0035	; E0 35 00
	bne +		; D0 04
	jml $1BC90B	; 5C 0B C9 1B
+	lda $7EF280,x	; BF 80 F2 7E
	jml $1BC906	; 5C 06 C9 1B

%fseek($1BC902)	; 0x0DC902
	jml $04ECA0	; 5C A0 EC 04 -> 5C 80 EB 03

;----------------------------------------
; Cane of Somaria Fix (by Conn)
; When having a trap door switch in a dungeon room with exit, and you use the cane of somaria to keep the door open and leave the dungeon, the game breaks (e.g., skull wood dungeon, big key entrance).

%fseek($01C4B8)	; 0x00C4B8
	jsl $0EFCA1	; 22 A1 FC 0E

%fseek($01C501)	; 0x00C501
	jsl $0EFCA1	; 22 A1 FC 0E

%fseek($01C592)	; 0x00C592
	jsl $0EFCA1	; 22 A1 FC 0E

%fseek($01C65F)	; 0x00C65F
	jsl $0EFCA1	; 22 A1 FC 0E

%fseek($02B7BB)	; 0x0137BB
	jsl $8EFC70	; 22 70 FC 8E

%fseek($0EFC70)	; 0x077C70
	lda #$0F	; A9 0F
	sta $10		; 85 10
	lda #$01	; A9 01
	sta $0468	; 8D 68 04
	rtl

%fseek($0EFCA1)	; 0x077CA1
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
; Originally it was thought to hear a bounce back SFX when hitting Moldrum's head. The malcode by Nintendo can cause noise in hacks, so better apply it

%fseek($06F35C)	; 0x03735C
	jsl $0DBB8A	; 22 A1 BB 0D, Originally JSL $0DBBA1

%fseek($1DD7B8)	; 0x0ED7B8
	jsl $0DBB8A	; 22 A1 BB 0D, Originally JSL $0DBBA1



