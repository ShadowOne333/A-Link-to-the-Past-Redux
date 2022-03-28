//******************************************************************************
//* death_counter.asm
//* (c)2014 Conn
//*
//* https://www.zeldix.net/t385-original-alttp-bug-fixes
//*
//* Fixes the death counter to not increment on save-and-quit.
//******************************************************************************

include "snes_utils.inc"

// Game hooks
namespace _death_counter {
    store_state()


    fseek($09F597)
        jsl death_counter
        nop
        nop
        nop
        nop
        nop

        
    load_state()
}


// Main patch code
function death_counter {
        lda $10
        cmp #$12
        ora #$F0
        ora ($6B,x)
        lda $B0
        and #$FF
        brk #$C9
        cop #$00
        bne +
        rtl
    +;  lda $7EF403
        inc
        sta $7EF403
        rtl
}
