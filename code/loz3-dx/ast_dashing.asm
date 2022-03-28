//******************************************************************************
//* ast_dashing.asm
//* (c)1997 Nintendo, 2016 Conn, Kazuto
//*
//* https://www.zeldix.net/t400-direction-change-while-running-with-pegasus-boots
//* http://forum.metroidconstruction.com/index.php/topic,3940
//*
//* Adds the Ancient Stone Tablets Pegasus Boots behavior to LoZ3, allowing
//* the player to turn while running, and to continue running between screen
//* transitions.
//******************************************************************************

include "snes_utils.inc"

// Game hooks
namespace _ast_dashing {
    store_state()

    
    seek($02857D)
        jsl ast_dashing.exit
        nop


    // Overworld screen transition
    seek($028B13)
        db $80  // beq -> bra


    fseek($07911B)
        jsl ast_dashing.dash
        bcc +
    -;  bra ++
    +;  lda #$12
        sta $5D
        dec
        sta $0374
    fseek($079138)
    +;


    seek($07BCB8)
        jsl ast_dashing.unk


    seek($099F32)
        jsl ast_dashing.inout
        nop

        
    load_state()
}


// Main patch code
namespace ast_dashing {
    unk:
        lda $5D
        cmp #$11
        bne +
        stz $5D
        stz $0372
    +;  lda $66
        and #$02
        rtl


    exit:
        stz $56
        stz $02E0
        stz $0372
        rtl


    dash:
        sta $00
        bit $F2
        bmi +
        clc
        rtl
    +;  lda $F0
        and #$0F
        bne +
        sec
        rtl
    +;  cmp #$0A
        beq +
        cmp #$05
        beq +
        cmp #$09
        beq +
        cmp #$06
        bne ++
    +;  and #$0C
    +;  cmp $26
        beq +
        sta $26
        sta $67
        sta $0340
        jsf($07E6A6)
    +;  sec
        rtl


    inout:
        stz $02D6
        stz $5E
        stz $5D
        stz $0372
        rtl
}
