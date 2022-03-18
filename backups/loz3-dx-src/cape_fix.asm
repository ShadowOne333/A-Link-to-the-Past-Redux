//******************************************************************************
//* cape_fix.asm
//* (c)2014 Conn
//*
//* https://www.zeldix.net/t385-original-alttp-bug-fixes
//*
//* Fixes an infinite magic glitch when pulling an object with the Magic Cape.
//******************************************************************************

include "snes_utils.inc"

// Game hooks
namespace _cape_fix {
    store_state()


    fseek($0DAA65)
        jsl cape_fix
        nop

        
    load_state()
}


// Main patch code
function cape_fix {
    stz $0376
    rep #$30
    lda $0352
    rtl
}
