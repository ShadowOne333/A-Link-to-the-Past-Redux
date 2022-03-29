//******************************************************************************
//* shield_fix.asm
//* (c)2014 Conn
//*
//* https://www.zeldix.net/t385-original-alttp-bug-fixes
//*
//* Fixes a graphical glitch when the Ether Medallion is used when your shield
//* has been stolen by a Pikit.
//******************************************************************************

include "snes_utils.inc"

// Game hooks
namespace _shield_fix {
    store_state()


    fseek($06D173)
        jsl shield_fix

        
    load_state()
}


// Main patch code
function shield_fix {
    phx
    phy
    sta $7EF35A
    jsf($1BED29)
    ply
    plx
    rtl
}
