//******************************************************************************
//* cane_somaria_fix.asm
//* (c)2014 Conn
//*
//* https://www.zeldix.net/t385-original-alttp-bug-fixes
//*
//* Fixes a magic underflow glitch related to the Cane of Somaria.
//******************************************************************************

include "snes_utils.inc"

// Game hooks
namespace _cane_somaria_fix {
    store_state()


    fseek($07AED4)
        jmp cane_somaria_fix

        
    load_state()
}


// Main patch code
function cane_somaria_fix {
        lda $0C4A,x
        cmp #$2C
        bne +
        jmp $AEE5
    +;  cmp #$01
        bne +
        jmp $AE87
    +;  jmp $AEDB
}
