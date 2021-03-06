;****************************************************************
; 	Overworld Layout changes
;****************************************************************

; Overworld map data
org $02F94D	; 0x01794D
overworld_map:
	.high_byte_packs
	incsrc code/layouts/ow-packs.bin
	;dl $8B8000,$8B80D6,$8B81C2,$8B8316
	;dl $8B83EA,$8B850E,$8B8671,$8B880F
	;dl $8B89D3,$8B8B90,$8BD6D8,$8B8D24
	;dl $8B8EE3,$8B9070,$8B91EA,$8B93CC

	;dl $8B951C,$8BE369,$8BE526,$8B96CA
	;dl $8B9838,$8B9981,$8B9B4A,$8BED91
	;dl $8B9CFC,$8B9E7E,$8BA00B,$8BA1FE
	;dl $8BA39B,$8BA538,$8BA709,$8BA80D

	;dl $8BA934,$8BAAB4,$8BAC45,$8BAE08
	;dl $8BAF86,$8C84BD,$8BB126,$8BB2CC
	;dl $8BB480,$8BB613,$8C8D6C,$8C8F2B
	;dl $8C9106,$8BB7CF,$8C94D0,$8C96BF

	;dl $8BB98A,$8BBACD,$8BBBCD,$8C9DAF
	;dl $8C9F73,$8BBD96,$8BBF70,$8CA4BA
	;dl $8BC15E,$8BC273,$8BC387,$8CAC5F
	;dl $8CAE37,$8BC55F,$8BC73B,$8CB3D2

	;dl $8BC90E,$8BC9E8,$8BCB29,$8BCC9F
	;dl $8BCDE2,$8BCF3B,$8BD080,$8BD213
	;dl $8BD3C5,$8BD557,$8BD6D8,$8BD8B8
	;dl $8BDA76,$8BDC1C,$8BDDF2,$8BDFE0

	;dl $8BE1AD,$8BE369,$8BE526,$8BE71A
	;dl $8BE8AE,$8BEA06,$8BEBD0,$8BED91
	;dl $8BEF69,$8BF125,$8BF2C3,$8BF4B3
	;dl $8BF58A,$8BF682,$8BF873,$8BF979

	;dl $8BFAE4,$8BFC88,$8C8000,$8C81C4
	;dl $8C8321,$8C84BD,$8C8688,$8C880D
	;dl $8C89CC,$8C8B9A,$8C8D6C,$8C8F2B
	;dl $8C9106,$8C92E8,$8C94D0,$8C96BF

	;dl $8C98B0,$8C9A48,$8C9BC2,$8C9DAF
	;dl $8C9F73,$8CA132,$8CA329,$8CA4BA
	;dl $8CA6B2,$8CA898,$8CAA6D,$8CAC5F
	;dl $8CAE37,$8CB016,$8CB20B,$8CB3D2

	;dl $8CB83C,$8CB97C,$8CBAF2,$8B8000
	;dl $8B8000,$8B8000,$8B8000,$8B8000
	;dl $8CC0B4,$8CBCAE,$8CBE4B,$8B8000
	;dl $8B8000,$8B8000,$8B8000,$8B8000

	;dl $8B8000,$8B8000,$8B8000,$8CC0B4
	;dl $8CB83C,$8CBFFA,$8CBFD7,$8CB67B
	;dl $8B8000,$8B8000,$8B8000,$8B8000
	;dl $8CC0AC,$8CB67B,$8CB5C8,$8CB6BE

; $02FB2D,0x17B2D
    .lower_byte_packs
	;dl $8B8004,$8B80DA,$8B8238,$8B8340
	;dl $8B8460,$8B85A3,$8B8724,$8B88E0
	;dl $8B8A91,$8B8C35,$8BD7BF,$8B8DF6
	;dl $8B8F87,$8B9118,$8B92CF,$8B945A

	;dl $8B95DC,$8BE437,$8BE619,$8B976A
	;dl $8B98BC,$8B9A5A,$8B9C0D,$8BEE76
	;dl $8B9DA1,$8B9F2E,$8BA0FC,$8BA2B6
	;dl $8BA453,$8BA617,$8BA73A,$8BA850

	;dl $8BA9E1,$8BAB5F,$8BAD14,$8BAEB3
	;dl $8BB04A,$8C8598,$8BB1DE,$8BB399
	;dl $8BB536,$8BB6E7,$8C8E3B,$8C900C
	;dl $8C91F1,$8BB8A2,$8C95C4,$8C97B3

	;dl $8BB9F4,$8BBB0B,$8BBCA9,$8C9E82
	;dl $8CA049,$8BBE7B,$8BC05A,$8CA5B3
	;dl $8BC1CF,$8BC2CF,$8BC469,$8CAD4A
	;dl $8CAF24,$8BC642,$8BC817,$8CB4C8

	;dl $8BC917,$8BCA47,$8BCBB2,$8BCD27
	;dl $8BCE7F,$8BCFC5,$8BD138,$8BD2DA
	;dl $8BD473,$8BD5EB,$8BD7BF,$8BD98E
	;dl $8BDB2F,$8BDCF9,$8BDEE2,$8BE0BF

	;dl $8BE272,$8BE437,$8BE619,$8BE7D6
	;dl $8BE945,$8BEADE,$8BEC9A,$8BEE76
	;dl $8BF036,$8BF1E2,$8BF3B2,$8BF4EE
	;dl $8BF5E1,$8BF773,$8BF8AD,$8BFA0E

	;dl $8BFBA4,$8BFD3C,$8C80D2,$8C8265
	;dl $8C83E6,$8C8598,$8C8734,$8C88DD
	;dl $8C8AA4,$8C8C73,$8C8E3B,$8C900C
	;dl $8C91F1,$8C93D4,$8C95C4,$8C97B3

	;dl $8C996E,$8C9AF4,$8C9CB3,$8C9E82
	;dl $8CA049,$8CA226,$8CA3DC,$8CA5B3
	;dl $8CA799,$8CA971,$8CAB64,$8CAD4A
	;dl $8CAF24,$8CB10C,$8CB2E6,$8CB4C8

	;dl $8CB8AC,$8CBA16,$8CBBB9,$8B8004
	;dl $8B8004,$8B8004,$8B8004,$8B8004
	;dl $8CC0B8,$8CBD5E,$8CBF05,$8B8004
	;dl $8B8004,$8B8004,$8B8004,$8B8004

	;dl $8B8004,$8B8004,$8B8004,$8CC0B8
	;dl $8CB8AC,$8CC044,$8CBFDE,$8CB67F
	;dl $8B8004,$8B8004,$8B8004,$8B8004
	;dl $8CC0B0,$8CB67F,$8CB5CC,$8CB743

warnpc $02FD0D	; 0x017D0D

; Overworld map data, will be included as bin files since the amount of changes both Hyrule Magic & Super Zelda Editor do to these sections is far too large to be added manually.
; Almost the entire bank sections get changed when using those programs, so screw it, binary it is
;org $8B93D0	; 0x0593D0
org $8A8000	; 0x050000
	;incbin pre-map.bin	; Something here fixes indoors!
org $8B8000	; 0x0560B0
	incbin map_data.bin
warnpc $8C8000	; 0x060000

org $8CC118	; 0x064118
	db $53,$FE,$05,$00,$0C,$41,$06,$00
	;db $2D,$FE,$05,$00,$0C,$41,$06,$00

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



