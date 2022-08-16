;****************************************************************
;	Several Virtual Console patches
;****************************************************************

;----------------------------------------
; Adjusts two consecutive entries in a data table. Those extend the last two states in the Ether Medallion animation to make them last 8 times longer.

org $07A50D	; 0x03A50D
	dw $1818	; Originally $0303

;----------------------------------------
; Modifies the immediate operand of a LDA instruction. This lowers the intensity of the flashing colors that tint the title screen as the sword is dropping into place. Instead of cycling between tints of full intensity red, green, and blue, it's now cycling between dull red, green and blue.

org $0CFE6E	; 0x067E6E
	lda #$1511	; Original VC patch had #$1505
	; Original game had $151F

;----------------------------------------
; Modifies immediate operands to ADC instructions in a routine that adjusts colors to gradually tint more towards white. IIRC this is used when the seal on Ganon's Tower is being broken by the Crystal Maidens. The tweaks put in place cause the flashing process to take about 7 times longer.
;00075805: 0E 02
;00075818: C0 40
;00075819: 01 00
;0007582C: 38 08

org $0ED804	; 0x075804
	adc #$0002	; Originally ADC #$000E
org $0ED817	; 0x075817
	adc #$0040	; Originally ADC #$01C0
org $0ED82A	; 0x07582A
	adc #$0800	; Originally ADC #$3800

;----------------------------------------
; These modify the lower bytes of entries in a large table full of palettes. The first two reduce the red component, and the last change reduces the red and green components of a color. Which palettes? It would take more effort I'd rather not do at the moment to figure that out. Best I can say at the moment is that they are palettes meant for BG tiles in indoor parts of the game. Specifically, my notes mark them as "DungeonMain BG palettes (6 in each group)"
;000DE03C: 72 70
;000DE03E: 9C 95
;000DE040: FF 57

org $01BE03C	; 0x0DE03C
	db $70
org $01BE03E	; 0x0DE03E
	db $95
org $01BE040	; 0x0DE040
	db $57

;----------------------------------------

