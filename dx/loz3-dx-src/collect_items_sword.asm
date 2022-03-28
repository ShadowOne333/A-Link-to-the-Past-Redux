//******************************************************************************
//* collect_items_sword.asm
//* (c)2014 Conn
//*
//* https://www.zeldix.net/t591-collect-items-with-sword
//*
//* Allows the player to collect dropped items by hitting them with the sword.
//******************************************************************************

include "snes_utils.inc"

// Game hooks
namespace _collect_items_sword {
    store_state()


    fseek($06F725)
        jsl collect_items_sword

        
    load_state()
}


// Main patch code
function collect_items_sword {
        adc #$00
        sta $09
        lda $79
        beq +
        rtl
    +;  lda $0E20,x
        sec
        sbc #$D8
        bcs +
        rtl
    +;  lda $0E20,x
        sec
        sbc #$E7
        bcc +
        rtl
    +;  phy
        ldy $3C
        bpl +
        ply
        rtl
    +;  lda $F571,y
        beq +
        ply
        rtl
    +;  phx
        lda $2f
        asl
        asl
        asl
        clc
        adc $3C
        tax
        inx
        ldy #$00
        lda $45
        clc
        adc $F46D,x
        bpl +
        dey
    +;  clc
        adc $22
        sta $00
        tya
        adc $23
        sta $08
        ldy #$00
        lda $44
        clc
        adc $F4EF,x
        bpl +
        dey
    +;  clc
        adc $20
        sta $01
        tya
        adc $21
        sta $09
        lda $F4AE,x
        sta $02
        lda $F530,x
        sta $03
        plx
        ply
        rtl
}
