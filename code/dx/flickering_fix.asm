//******************************************************************************
//* flickering_fix.asm
//* (c)2014 Conn
//*
//* https://www.zeldix.net/t385-original-alttp-bug-fixes
//*
//* 
//******************************************************************************

include "snes_utils.inc"

// Game hooks
namespace _flickering_fix {
    store_state()


    fseek($08832D)
        jsl flickering_fix.fix_1
        nop
        nop


    fseek($00876B)
        jsl flickering_fix.fix_2
        nop
        nop

        
    load_state()
}


// Main patch code
function flickering_fix {
    fix_1:
        stx $0FA0
        lda $10
        cmp #$0E
        beq +
        lda $0C4A,x
        rtl
    +;  lda $11
        cmp #$01
        beq +
        lda $0C4A,x
        rtl
    +;  lda #$00
        rtl


    // flickering_fix.asm
    fix_2:
        sta $0AF2
        lda $10
        cmp #$0E
        phd
        beq +
        lda $0AF4
        rtl
    +;  stz $0AF4
        rtl
}
