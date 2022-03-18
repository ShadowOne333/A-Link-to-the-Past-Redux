//******************************************************************************
//* bunny_glove_fix.asm
//* (c)2014 Conn
//*
//* https://www.zeldix.net/t385-original-alttp-bug-fixes
//*
//* Fixes various graphical glitches related to the glove palette.
//******************************************************************************

include "snes_utils.inc"

// Game hooks
namespace _bunny_glove_fix {
    store_state()


    fseek($0ED73C)
        jsl bunny_glove_fix

        
    load_state()
}


// Main patch code
function bunny_glove_fix {
        lda $02E0
        and #$FF
        brk #$F0
        ora $E2
        dw $E630 // bmi +$E6
        ora $6B,x
        jsf($1BEE1D)
        rtl
}
