//*******************************
//     Fast ROM v2.1
//	    by
//     wiiqwertyuiop
//
// Note: You can't expand your ROM past 4MB!
//*******************************
//
// Defines:
architecture wdc65816

include "snes_utils.inc"

variable Freespace = $0FFFE0    // Freespace. should be fine like this. (unless Hyrule Magic uses it, in which case change this)

variable BankSpace = $0089D8    // Freespace in bank 00. This should be fine.

//Possible locations
//98B0
//CF50
//E870
//F7E0

//
//*******************************

//header            // If you ROM has a header remove the "// " in front of it
//lorom

//*******************************
// Code below
//*******************************

org($808016)        // \ Enable Fast ROM
jml MainCode        // /

org(Freespace|$800000)

MainCode:
lda #$01            // \ Enable fast ROM
sta $420D           // /
lda #$80            // \ Restore old code
sta $2100           // /
pha                 // \ Set DBR to fastrom area
plb                 // /
jml $80801B         //  Return

org(BankSpace|$800000)
jml $8080C9         // Jump to FastROM NMI


jml $8082D8         // Jump to FastROM IRQ

org($80FFEA)                 // \ 
dw BankSpace&$FFFF           //  |
                             //  | Modify internal ROM header so NMI and IRQ run faster
                             //  |
dw BankSpace+$0004&$FFFF     // /

org($89F81A)
ora $89F8,x

include "FastROM-JSL.asm"      //  Change all JSL's to fastrom area
include "FastROM-JML.asm"      //  Change all JML's to fastrom area
include "FastROM-tables.asm"   //  Change all DL's and some tables to fastrom area

// Done

org($80FFD5)        // \ ROM is now fast ROM
db $30              // /