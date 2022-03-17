;****************************************************************
;	General bugfixes
;****************************************************************

;----------------------------------------
; Dark World Spawn Fix
; If you go into the dark world, when you are collecting pendants and you are defeated outside, you will spawn in light world. But if you are defeated inside, the game will bug out, since it assumes you are in the light world (when infact you are in the dark world). This can result in heavy buggs when crossing the overworld. Fix is:
org $09F526	; 0x04F526
	db $80		; Originally $B0

; This will spawn the player at Pyramid exit.
; So now you can collect the pendants in the dark world.

;----------------------------------------
; Water Gate Gix
; When you pull the switch in the Water Gate Room to unleash the water, the entire room is flooded instead just the corridor:
org $01CBAD	; 0x00CBAD
	db $04		; Originally $0C

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
org $	; 0x006C59
	BF A0 C3 7E 9F A0 C5 7E
org $	; 0x006CBC
	A2 A0 00 A9 B0 00 4C 98


;----------------------------------------
; Bunny Glove Fix (by Conn)
; This fixes the glove palette when wearing ingame reseting to skin color - it happens in native Zelda when:
; * opening the overworld map
; * opening the dungeon map (makes the glove palette to disappear from the moment you visit another room in the dungeon)
; * being electrocuted
; * using Ether
; * being hit by a rabbit beam
org $	; 0x03FDD0
	AD E0 02 29 FF 00 F0 05 E2 30 E6 15 6B 22 1D EE 1B 6B
org $	; 0x07573C
	22 D0 FD 07

;----------------------------------------
; Mothula L4 Fix (by Conn)
; This patch fixes that the boss Mothula is immune against the Golden Sword and the spin attack from the Tempered Sword.
org $	; 0x010137
	60 EC 04
org $	; 0x026C60
	A9 01 8F 84 68 7F 8F 85 68 7F 22 3D 89 00 6B
org $	; 0x036840
	C0 F7 09
org $	; 0x04F7C0
	BD 20 0E C9 88 D0 09 AD F0 0E D0 0A A9 06 80 02 A9 04 22 E0 EC 06 6B

;----------------------------------------
; Death Counter Fix (by Conn)
; This patch prevents that it is counted as death when:
; - Pressing select -> Save&Quit
; - Dying and choose "Don't save and continue"
; Dying and choosing "Save and Continue" as well as "Save and Quit" still count as death of course
org $	; 0x026C70
	A5 10 C9 12 09 F0 01 6B A5 B0 29 FF 00 C9 02 00 D0 01 6B AF 03 F4 7E 1A 8F 03 F4 7E 6B
org $	; 0x04F597
	22 70 EC 04 
	nop #5

;----------------------------------------
; Shield Fix (by Conn)
; If a shield is stolen by a Pikit (that pumpkin monster with the long tongue e.g., in front of ice dungeon) and you use the ether, get the L2 shield back, your shield will have a blue palette.
; This patch restores the normal gold-red palette
org $	; 0x026C90
	DA 5A 8F 5A F3 7E 22 29 ED 1B 7A FA 6B
org $	; 0x035173
	22 90 EC 04

;----------------------------------------
; Cane of Somaria Fix (by Conn)
; Disables frequent use of the Cane of Somaria that causes bugs
org $	; 0x03AED4
	4C 62 FC
org $	; 0x03FC62
	BD 4A 0C C9 2C D0 03 4C E5 AE C9 01 D0 03 4C 87 AE 4C DB AE

;----------------------------------------
; Cape Fix (by Conn)
; Disables grabbing with magic cape and thus having no magic drain when pulling a statue
org $	; 0x03FCA4
	9C 76 03 C2 30 AD 52 03 6B
org $	; 0x06AA65
	22 A4 FC 07 EA

;----------------------------------------
; Flickering Fix (by Conn)
; Fixes the flickering that appears sometimes in the start or select menu
org $	; 0x00076B
	22 E0 C4 02
	nop #2
org $	; 0x0144C0
	8E A0 0F A5 10 C9 0E F0 04 BD 4A 0C 6B A5 11 C9 01 F0 04 BD 4A 0C 6B A9 00 6B
org $	; 0x0144E0
	8D F2 0A A5 10 C9 0E 0B F0 04 AD F4 0A 6B 9C F4 0A 6B
org $	; 0x04032D
	22 C0 C4 02 EA EA

;----------------------------------------
; Whirl Fix (by Conn)
; Fixes the music restart when using a whirlpool and you looked at the map before
org $	; 0x013434
	20 DA C4
org $	; 0x0144DA
	8D 2E 01 4C F2 C4
org $	; 0x0144F2
	AD 33 01 C9 F3 D0 06 AD 30 01 8D 33 01 60

;----------------------------------------
; Chime Teleport Native ONLY (by Conn)
; As the name tells, use this hack only on NATIVE ALTTP. If you lift the teleport in Lake Hylia to access the ice dungeon you hear no chime. The reason is that the cave in the bottom-left corner is bombed open.
; This patch lets you hear a chime everytime you lift the stone (as you hear it for other teleports).
org $	; 0x026CA0
	E0 35 00 D0 04 5C 0B C9 1B BF 80 F2 7E 5C 06 C9 1B
org $	; 0x0DC902
	5C A0 EC 04

;----------------------------------------
; Cane Fix (by Conn)
; When having a trap door switch in a dungeon room with exit, and you use the cane somaria to keep the door open and leave the dungeon, the game breaks (e.g., skull wood dungeon, big key entrance).
org $	; 0x00C4B8
	22 A1 FC 0E
org $	; 0x00C501
	22 A1 FC 0E
org $	; 0x00C592
	22 A1 FC 0E
org $	; 0x00C65F
	22 A1 FC 0E
org $	; 0x0137BB
	22 70 FC 8E
org $	; 0x077C70
	A9 0F 85 10 A9 01 8D 68 04 6B
org $	; 0x077CA1
	A5 10 C9 0F D0 04 9C 2F 01 6B A9 05 85 11 6B

;----------------------------------------
; Moldrum Bounce SFX (by Conn)
; Originally it was thought to hear a bounce back sfx when hitting Moldrum's head. The malcode by Nintendo can cause noise in hacks, so better apply it
org $	; 0x03735D
	db $8A		; Originally $
org $	; 0x0ED7B9
	db $8A		; Originally $



