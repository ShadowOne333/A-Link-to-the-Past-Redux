//******************************************************************************
//* Kholdstare_shell.asm
//* (c)2014 Conn
//*
//* https://www.zeldix.net/t385-original-alttp-bug-fixes
//*
//* Fixes Kholdstare's melting animation palette.
//******************************************************************************

namespace Kholdstare_shell {
    store_state()
    
    origin $006C59
        db $A0

    origin $006C5D
        db $A0

    origin $006CBC
        db $A0

    origin $006CBF
        db $B0
        
    load_state()
}
