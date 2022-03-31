;****************************************************************
; 	Overworld Layout changes
;****************************************************************

; Overworld map data
org $02F94D	; 0x01794D
overworld_map:
	.high_byte_packs
	dl $0B8000,$0B80D6,$0B81C2,$0B8316
	dl $0B83EA,$0B850E,$0B8671,$0B880F
	dl $0B89D3,$0B8B90,$0BD6D8,$0B8D24
	dl $0B8EE3,$0B9070,$0B91EA,$0B93CC

	dl $0B951C,$0BE369,$0BE526,$0B96CA
	dl $0B9838,$0B9981,$0B9B4A,$0BED91
	dl $0B9CFC,$0B9E7E,$0BA00B,$0BA1FE
	dl $0BA39B,$0BA538,$0BA709,$0BA80D

	dl $0BA934,$0BAAB4,$0BAC45,$0BAE08
	dl $0BAF86,$0C84BD,$0BB126,$0BB2CC
	dl $0BB480,$0BB613,$0C8D6C,$0C8F2B
	dl $0C9106,$0BB7CF,$0C94D0,$0C96BF

	dl $0BB98A,$0BBACD,$0BBBCD,$0C9DAF
	dl $0C9F73,$0BBD96,$0BBF70,$0CA4BA
	dl $0BC15E,$0BC273,$0BC387,$0CAC5F
	dl $0CAE37,$0BC55F,$0BC73B,$0CB3D2

	dl $0BC90E,$0BC9E8,$0BCB29,$0BCC9F
	dl $0BCDE2,$0BCF3B,$0BD080,$0BD213
	dl $0BD3C5,$0BD557,$0BD6D8,$0BD8B8
	dl $0BDA76,$0BDC1C,$0BDDF2,$0BDFE0

	dl $0BE1AD,$0BE369,$0BE526,$0BE71A
	dl $0BE8AE,$0BEA06,$0BEBD0,$0BED91
	dl $0BEF69,$0BF125,$0BF2C3,$0BF4B3
	dl $0BF58A,$0BF682,$0BF873,$0BF979

	dl $0BFAE4,$0BFC88,$0C8000,$0C81C4
	dl $0C8321,$0C84BD,$0C8688,$0C880D
	dl $0C89CC,$0C8B9A,$0C8D6C,$0C8F2B
	dl $0C9106,$0C92E8,$0C94D0,$0C96BF

	dl $0C98B0,$0C9A48,$0C9BC2,$0C9DAF
	dl $0C9F73,$0CA132,$0CA329,$0CA4BA
	dl $0CA6B2,$0CA898,$0CAA6D,$0CAC5F
	dl $0CAE37,$0CB016,$0CB20B,$0CB3D2

	dl $0CB83C,$0CB97C,$0CBAF2,$0B8000
	dl $0B8000,$0B8000,$0B8000,$0B8000
	dl $0CC0B4,$0CBCAE,$0CBE4B,$0B8000
	dl $0B8000,$0B8000,$0B8000,$0B8000

	dl $0B8000,$0B8000,$0B8000,$0CC0B4
	dl $0CB83C,$0CBFFA,$0CBFD7,$0CB67B
	dl $0B8000,$0B8000,$0B8000,$0B8000
	dl $0CC0AC,$0CB67B,$0CB5C8,$0CB6BE

; $02FB2D,0x17B2D
    .lower_byte_packs
	dl $0B8004,$0B80DA,$0B8238,$0B8340
	dl $0B8460,$0B85A3,$0B8724,$0B88E0
	dl $0B8A91,$0B8C35,$0BD7BF,$0B8DF6
	dl $0B8F87,$0B9118,$0B92CF,$0B945A

	dl $0B95DC,$0BE437,$0BE619,$0B976A
	dl $0B98BC,$0B9A5A,$0B9C0D,$0BEE76
	dl $0B9DA1,$0B9F2E,$0BA0FC,$0BA2B6
	dl $0BA453,$0BA617,$0BA73A,$0BA850

	dl $0BA9E1,$0BAB5F,$0BAD14,$0BAEB3
	dl $0BB04A,$0C8598,$0BB1DE,$0BB399
	dl $0BB536,$0BB6E7,$0C8E3B,$0C900C
	dl $0C91F1,$0BB8A2,$0C95C4,$0C97B3

	dl $0BB9F4,$0BBB0B,$0BBCA9,$0C9E82
	dl $0CA049,$0BBE7B,$0BC05A,$0CA5B3
	dl $0BC1CF,$0BC2CF,$0BC469,$0CAD4A
	dl $0CAF24,$0BC642,$0BC817,$0CB4C8

	dl $0BC917,$0BCA47,$0BCBB2,$0BCD27
	dl $0BCE7F,$0BCFC5,$0BD138,$0BD2DA
	dl $0BD473,$0BD5EB,$0BD7BF,$0BD98E
	dl $0BDB2F,$0BDCF9,$0BDEE2,$0BE0BF

	dl $0BE272,$0BE437,$0BE619,$0BE7D6
	dl $0BE945,$0BEADE,$0BEC9A,$0BEE76
	dl $0BF036,$0BF1E2,$0BF3B2,$0BF4EE
	dl $0BF5E1,$0BF773,$0BF8AD,$0BFA0E

	dl $0BFBA4,$0BFD3C,$0C80D2,$0C8265
	dl $0C83E6,$0C8598,$0C8734,$0C88DD
	dl $0C8AA4,$0C8C73,$0C8E3B,$0C900C
	dl $0C91F1,$0C93D4,$0C95C4,$0C97B3

	dl $0C996E,$0C9AF4,$0C9CB3,$0C9E82
	dl $0CA049,$0CA226,$0CA3DC,$0CA5B3
	dl $0CA799,$0CA971,$0CAB64,$0CAD4A
	dl $0CAF24,$0CB10C,$0CB2E6,$0CB4C8

	dl $0CB8AC,$0CBA16,$0CBBB9,$0B8004
	dl $0B8004,$0B8004,$0B8004,$0B8004
	dl $0CC0B8,$0CBD5E,$0CBF05,$0B8004
	dl $0B8004,$0B8004,$0B8004,$0B8004

	dl $0B8004,$0B8004,$0B8004,$0CC0B8
	dl $0CB8AC,$0CC044,$0CBFDE,$0CB67F
	dl $0B8004,$0B8004,$0B8004,$0B8004
	dl $0CC0B0,$0CB67F,$0CB5CC,$0CB743

warnpc $02FD0D	; 0x017D0D

; Overworld map data, will be included as bin files since the amount of changes both Hyrule Magic & Super Zelda Editor do to these sections is far too large to be added manually.
; Almost the entire bank sections get changed when using those programs, so screw it,binary it is
org $0B93D0	; 0x0593D0
	;incbin map_data.bin
warnpc $C8000	; 0x060000

org $0CC118	; 0x064118
	db $2D,$FE,$05,$00,$0C,$41,$06,$00

;****************************************


; Object data
org $1F8000	; 0x0F8000
	incbin object_data.bin
warnpc $208000	; 0x100000

; Location of type, layout, and object information for each Dungeon room.
; It's a table of 24 bit pointers with an entry for each room. (all 320 of them ;) )

;size = 3C0h

;140h entries each 3 bytes in length. Each long snes cpu address in the table points to a structure with the following layout:

;byte layout:
;byte0: aaaa bbbb. The a bits are transformed to aaaa0000 and select the type of  empty space to fill in. Hyrule Magic calls this 'Floor 1'
;	Gets stored to $7E0490
;	The b bits are transformed to bbbb0000 and are the what Hyrule Magic calls
;	'Floor 2'
;	Gets stored to $7E046A

;byte1: aaab bbcd  The a bits are unused and should not be used
;	The b bits determine the room's layout type, ranging from 0 to 7.
;	The c and d bits are unknown, but I have a feeling it's related to $AA and $A9

;After that the bytes come in 3 or 2 byte object structures, used by routine $01:88E4.
;Objects are loaded until an object with value 0xFFFF occurs.
;If a value 0xFFF0 is loaded, the game will start loading Type 2 objects
;And will not go back to loading Type 1 objects until it is time to load the next layer. (Layer as in HM, not to be confused with the SNES' Backgrounds.
;A value of 0xFFFF will also terminate the loading of Type 2 objects.
;The routine immediately terminates if that happens during the loading of either object type.

;Type 1 Object structure: (3 bytes)

;Third Byte: Routine to use. If this byte is >= 0xF8 and < 0xFC, then it is a subtype 3 object. If the index is >= FC, it is a subtype 2 object. If not, it is a subtype 1 object.
;	Subtype 1 Objects ------------------------------------------------------

;	First and Second Byte:	High Byte	Low  Byte
;                               yyyy yycc	xxxx xxaa

;	The a bits are stored to $B2
;	The c bits are stored to $B4
;	The x and y bits are transformed into:  000y yyyy yxxx xxx0
;	This is a tilemap address that indexes into $7E2000 and / or $7E4000

;	Use the third byte * 2 as an index into the table at $8200
;	This is the routine that is used to draw and otherwise handle the object.
;	Subtype 1 objects have a maximum width and height of 4. width and height are measured in terms of 32 x 32 pixels. (<-- last part is questionable)

;	Subtype 2 Objects ------------------------------------------------------

;	Subtype 2 objects are those with an index >= 0xFC

;	1st, 2nd, & 3rd bytes:  Third Byte Second Byte  Byte
;                                ffdd dddd  eeee cccc   aaaa aabb
			
;	The a bits are unused, but after all they are the marker for this type of object subtype.
            
;	The b, c, e, and f bits are transformed into a VRAM tilemap address:
			
;	000c cccf fbbe eee0
            
;	Might I add this is one messed up format?

;	The d bits are used as an index into the table at $8470. Since such indicies are going to be even, the d bits are transformed into: 0000 0000 0ddd ddd0

;	Subtype 3 Objects ------------------------------------------------------

;	Similar to Subtype 1, with a few small exceptions.

;	The vram address is calculated the same way. However, $B2 and $B4 are not used as length or width dimensions here. The routine that is used is determined as follows:

;	Take the original index (times two) that a Subtype 1 would have used. AND that with 0x000E. Then shift left 3 times to produce 0000 0000 0eee 0000. Then, OR in $B2 and $B4 and shift left once, so the final result is: 
;	0000 0000 eeea abb0.

;	Also, this value indexes into $85F0 instead of $8200.
			
;Type 2 Object Structure: (2 bytes)

;	High Byte	Low Byte

;	cccc cccc 	bbbb ddaa

;	The a bits form a 2-bit value (0000 0aa0) that determines the routine to use for the object. In Hyrule Magic, corresponds to the "direction" of the door.
			
;	The b bits are transformed into 000b bbb0 and stored to $02 -> X.
;	Corresponds to "Pos" of door objects in the Hyrule Magic. Note that these range from 0x00 to 0x16 (always even) which if you halve those values is 0 - 11 in decimal. This is easily verifiable in Hyrule Magic.

;	The c bits are shifted into the lower byte and stored to $04 -> A and $0A. This is later used to grab the tiles used to draw the door and the area below it.
;	In Hyrule Magic, corresponds to "type". Note the type is 1/2 of the number listed here.
;	This is because to avoid using an ASL A command, the c bits are always even.
			
;	The d bits are unused.

;	Next I'll go into the nitty gritty of the various types (the value of $04). Again note that we'll only be dealing with even values b/c that's what you'll see in the code. To convert between here [as well as the code] and Hyrule Magic, take the hex value here and divide by two.
;	Convert to decimal and that's your Hyrule Magic "type."

;	Types:	0x00 - Basic door. Index = $0460
;		0x02 - Normal door?
;		0x04 - ???
;		0x06 - ???
;		0x08 - Waterfall door (only used in Swamp palace; in one room at that!)
;		0x0A - ???
;		0x0C - Trap door (probably other types but this seems to be most common)
;
;		0x12 - Adds a property to some doors allowing you to exit to the overworld
;				 (this is accomplished by writing to the tile attribute map)
;		0x14 - Transition to dark room?
;		0x16 - Toggles the target BG Link will emerge on. e.g. if Link starts on BG0 in the next
;				 room he'll be on BG1.

;		0x20 - Locked door specifically for BG0.
;		0x22 - "
;		0x24 - Locked door for either BG0 or BG1
;		0x26 - "
;		0x30 - Large exploded pathway resulting from a switch being pulled (unusual to have as a door as it's huge)
;		0x32 - Sword activated door (e.g. ;Agahnim's room with the curtain door you have to slash)
;		0x46 - warp door?

;------------------------------------------------------

;$F83C0 - Loaded when the header is loaded for each dungeon room. These appear to be the direct offset to where the door objects appear. The normal objects and the door objects are seperated by the byte sequence $FFF0. Apparently the offsets in this set are just there for convenience?



