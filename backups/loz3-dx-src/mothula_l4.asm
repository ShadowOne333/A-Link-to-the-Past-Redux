//******************************************************************************
//* mothula_l4.asm
//* (c)2014 Conn
//*
//* https://www.zeldix.net/t385-original-alttp-bug-fixes
//*
//* Fixes Mothula's immunity to the L4 sword and L3 spin slash.
//******************************************************************************

include "snes_utils.inc"

// Game hooks
namespace _mothula_l4 {
    store_state()


    fseek($028136)
        jsl mothula_l4.fix_1


    fseek($06E83F)
        jsl mothula_l4.fix_2

        
    load_state()
}


// Main patch code
function mothula_l4 {
    fix_1:
        lda #$01
        sta $7F6884
        sta $7F6885
        jsf($00893D)
        rtl


    fix_2:
        lda $0E20,x
        cmp #$88
        bne ++
        lda $0EF0
        beq +
        rtl
    +;  lda #$06
        bra ++
    +;  lda #$04
    +;  jsf($06ECE0)
        rtl
}
