arch snes.cpu

macro seek(variable offset) {
  origin ((offset & $7F0000) >> 1) | (offset & $7FFF)
  base offset
}

// Kholdstare_shell.asm
origin 0x006C59
    db 0xA0

origin 0x006C5D
    db 0xA0

origin 0x006CBC
    db 0xA0

origin 0x006CBF
    db 0xB0


// alttp_msu.asm
seek($8080D9)
    jsl msu_main
    nop
    nop


// alttp_msu.asm
seek($8080F3)
    jsl msu_check
    nop
    nop


// flickering_fix.asm
seek($80876B)
    jsl flickering_fix_2
    nop
    nop


// alttp_msu.asm
seek($80F40F)
    jsl enter_house
    nop
    nop
    nop


// alttp_msu.asm
seek($80F9C3)
    jsl fade_out
    nop


// pott_l2sword.asm
seek($81DABD)
    jml sword_pot_smash
    nop
    nop
    nop
    nop


// pott_l2sword.asm
seek($81DAFC)
    jml sword_post_fix
    nop


// mothula_l4.asm
seek($828136)
    jsl mothula_fix_1


// pegasus_upgrade.asm
seek($82857D)
    jsl $07FF33
    nop


// pegasus_upgrade.asm
seek($828B13)
    db $80  // beq -> bra


// alttp_msu.asm
seek($82934F)
    jsl enter_house
    nop
    nop
    nop


// alttp_msu.asm
seek($829A04)
    jsl fade_out
    nop


// alttp_msu.asm
seek($829B14)
    jsl fade_out
    nop


// alttp_msu.asm
seek($82A027)
    jsl fade_out
    nop


// alttp_msu.asm
seek($82AAB1)
    jsl fade_out
    nop


// alttp_msu.asm
seek($82AE7E)
    jsl fade_out
    nop


// flickering_fix.asm
seek($82C4C0)
flickering_fix_1:
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
seek($82C4E0)
flickering_fix_2:
    sta $0AF2
    lda $10
    cmp #$0E
    phd
    beq +
    lda $0AF4
    rtl
+;  stz $0AF4
    rtl


// alttp_msu.asm
seek($86B0D8)
    jsl map_open
    nop


// alttp_msu.asm
seek($86B112)
    jsl full_volume
    nop


// alttp_msu.asm
seek($86C621)
    jsl great_fairy
    nop


// alttp_msu.asm
seek($86C847)
    jsl great_fairy
    nop


// shield_fix.asm
seek($86D173)
    jsl shield_fix


// mothula_l4.asm
seek($86E83F)
    jsl mothula_fix_2


// collect_items_sword.asm
seek($86F725)
    jsl collect_items_sword


// pegasus_upgrade.asm
seek($87911D)
    jmp $FF40
    nop


// alttp_msu.asm
seek($87AA9C)
    jsl map_open
    nop


// cane_somaria_fix.asm
seek($87AED4)
    jmp cane_fix


// pegasus_upgrade.asm
seek($87BCB8)
    jsl $07FF20


// alttp_msu.asm
seek($87EB90)
    jsl full_volume
    nop


// alttp_msu.asm
seek($87F8A0)
set_loop:
    lda $0129
    cmp #$01
    bne +
    lda #$01
    rts
+;  cmp #$08
    bne +
    lda #$01
    rts
+;  cmp #$0A
    bne +
    lda #$01
    rts
+;  cmp #$0F
    bne +
    lda #$01
    rts
+;  cmp #$13
    bne +
    lda #$01
    rts
+;  cmp #$1D
    bne +
    lda #$01
    rts
+;  cmp #$21
    bne +
    lda #$01
    rts
+;  cmp #$22
    bne +
    lda #$01
    rts
+;  lda #$03
    rts


// alttp_msu.asm
seek($87F8E0)
msu_main:
    lda $4210
    jsr do_fade
    jsr msu_play
    lda $012C
    rtl


// alttp_msu.asm
seek($87F8F0)
do_fade:
    lda $0133
    bne +
    rts
+;  cmp #$F1
    beq +
    jsr track_select
    rts
+;  lda $7EE004
    bne +
    rts
+;  dec
    dec
    cmp #$20
    bcc +
    sta $7EE004
    sta $2006
    rts
+;  lda #$00
    sta $7EE004
    sta $2006
    stz $2005
    stz $0129
    rts


// alttp_msu.asm
seek($87F930)
msu_check:
    sta $0133
    pha
    lda $2002
    cmp #$53
    beq +
    pla
    sta $2140
    rtl
+;  lda $2000
    and #$08
    bne +
    lda #$F1
    sta $2140
+;  pla
    rtl


// alttp_msu.asm
seek($87F950)
spc_play:
    lda $2000
    and #$08
    bne +
    rts
+;  lda $0129
    sta $2140
    sta $0133
    sta $0130
    stz $2007
    sta $012C
    rts


// alttp_msu.asm
seek($87F970)
track_select:
    lda $0133
    cmp #$F4
    bne +
    rts
+;  cmp #$F1
    bne +
    rts
+;  lda $2002
    cmp #$53
    beq +
    rts
+;  lda #$00
    sta $7EE004
    lda $0133
    sta $0130
    cmp $0129
    beq ++
    lda $0133
    bne +
    lda $012C
+;  sta $2004
    sta $0129
    stz $2005
    stz $012C
    lda #$FF
    sta $2006
    lda #$01
    sta $0127
    lda $2000
    beq ++
+;  rts
+;  lda #$F1
    sta $2140
    sta $0133
    rts


// alttp_msu.asm
seek($87F9D0)
fade_out:
    lda $2002
    cmp #$53
    bne ++
    lda $7EE004
    bne +
    lda #$F1
    sta $7EE004
+;  lda #$F1
    sta $012C
    sta $0130
    sta $2140
    sta $0133
    rtl
+;  lda #$F1
    sta $012C
    rtl


// alttp_msu.asm
seek($87FA00)
map_open:
    lda $2002
    cmp #$53
    bne +
    lda #$75
    sta $2006
    rtl
+;  lda #$F2
    sta $012C
    rtl


// alttp_msu.asm
seek($87FA20)
full_volume:
    lda $2002
    cmp #$53
    bne +
    lda #$FF
    sta $2006
    rtl
+;  lda #$F3
    sta $012C
    rtl


// alttp_msu.asm
seek($87FA40)
enter_house:
    cmp #$FF
    bne +
    rtl
+;  tax
    lda $2002
    cmp #$53
    beq +
    stx $012C
    rtl
+;  lda #$FF
    sta $2006
    cpx #$F2
    beq +
    cpx #$F3
    beq ++
    txa
    sta $0130
    sta $012C
    rtl
+;  lda #$75
    sta $2006
+;  rtl


// alttp_msu.asm
seek($87FA70)
unk_label:
    bne +
    ldx #$F3
+;  lda $2002
    cmp #$53
    bne ++
    cpx #$F3
    bne +
    lda #$FF
    sta $2006
    rtl
+;  txa
    stz $0129
    sta $0130
+;  stx $012C
    rtl


// alttp_msu.asm
seek($87FA90)
great_fairy:
    lda $2002
    cmp #$53
    bne +
    lda #$FF
    sta $2006
    lda #$1B
    stz $0129
    sta $0130
    sta $012C
    rtl
+;  lda #$1B
    sta $012C
    rtl


// alttp_msu.asm
seek($87FAB0)
ganons_message:
    lda $2002
    cmp #$53
    bne +
    lda #$FF
    sta $2006
    lda #$1E
    sta $0133
    sta $0130
    sta $012C
    rtl
+;  lda #$1E
    sta $012C
    rtl


// alttp_msu.asm
seek($87FAD0)
get_pendant:
    lda $2002
    cmp #$53
    beq ++
    lda $2140
    beq +
    jml $08C402
+;  jml $08C407
+;  lda $2000
    and #$10
    beq +
    jml $08C402
+;  jml $08C407
    

// alttp_msu.asm
seek($87FB00)
boss_victory:
    lda $2002
    cmp #$53
    beq ++
    lda $2140
    bne +
    jml $08C60B
+;  jml $08C613
+;  lda $2000
    and #$10
    bne +
    jml $08C60B
+;  jml $08C613


// alttp_msu.asm
seek($87FB30)
msu_play:
    lda $0127
    beq +
    bit $2000
    bvs +
    stz $0127
    lda $0130
    jsr set_loop
    sta $2007
    jsr spc_play
+;  rts


// cane_somaria_fix.asm
seek($87FB50)
cane_fix:
    lda $0C4A,x
    cmp #$2C
    bne +
    jmp $AEE5
+;  cmp #$01
    bne +
    jmp $AE87
+;  jmp $AEDB


// cape_fix.asm
seek($87FB70)
cape_fix:
    stz $0376
    rep #$30
    lda $0352
    rtl


// bunny_glove_fix.asm
seek($87FB80)
bunny_glove_fix:
    lda $02E0
    and #$FF
    brk #$F0
    ora $E2
    dw $E630 // bmi +$E6
    ora $6B,x
    jsl $1BEE1D
    rtl


// flute_fix.asm
seek($87FBA0)
flute_cancel_1:
    lda $F2
    ora $F0
    and #$C0
    bne +
    jml $0AB79D
+;  inc $0200
    lda $F0
    cmp #$80
    bne ++
+;  lda #$01
    sta $7F5006
+;  rtl


// flute_fix.asm
seek($87FBC0)
flute_cancel_2:
    lda $7F5006
    cmp #$01
    beq +
    jsl $02EC39
+;  lda #$00
    sta $7F5006
    rtl


// flute_fix.asm
seek($87FBE0)
flute_cancel_icon:
    sta $0B
    ldx #$10
    lda $1A
    and #$10
    bne +
    lda $11
    cmp #$0A
    bne +
    lda #$7E
    sta $0D
    lda #$38
    sta $0C
    stz $0B
    clc
    lda $0E
    adc #$04
    sta $0E
    clc
    lda $0F
    adc #$04
    sta $0F
+;  rtl


// mothula_l4.asm
seek($87FC10)
mothula_fix_1:
    lda #$01
    sta $7F6884
    sta $7F6885
    jsl $00893D
    rtl


// mothula_l4.asm
seek($87FC20)
mothula_fix_2:
    lda $0E20,x
    cmp #$88
    bne ++
    lda $0EF0
    beq +
    rtl
+;  lda #$06
    bra ++
+;  lda #$04
+;  jsl $06ECE0
    rtl


// death_counter.asm
seek($87FC40)
death_counter:
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


// shield_fix.asm
seek($87FC60)
shield_fix:
    phx
    phy
    sta $7EF35A
    jsl $1BED29
    ply
    plx
    rtl


// pott_l2sword.asm
seek($87FC70)
sword_pot_smash:
    lda $0301
    and #$0002
    beq +
    jml $01DAC5
+;  lda $0354
    and #$0027
    bne +
    jml $01DAB6
+;  lda $7EF359
    and #$00FF
    cmp #$0001
    bra +  // bra: L1+, bne: L2+
    jml $01DAB6
+;  jml $01DAC5


// pott_l2sword.asm
seek($87FCA0)
sword_post_fix:
    cmp #$4040
    beq +
    sec
    jsl sword_switch_fix
    jml $01DB16
+;  lda $0301
    and #$0002
    bne +
    jml $01DAB6
+;  jml $01DB01


// pott_l2sword.asm
seek($87FCC0)
sword_switch_fix:
    cmp #$1010
    bne ++
    pha
    lda $5D
    cmp #$1011
    bne +
    lda $2F
    and #$00FF
    cmp #$0002
    bne +
    lda $20
    sbc #$0002
    sta $20
+;  pla
+;  rtl


// collect_items_sword.asm
seek($87FE00)
collect_items_sword:
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


// pegasus_upgrade.asm
seek($87FF20)
    lda $5D
    cmp #$11
    bne +
    stz $5D
    stz $0372
+;  lda $66
    and #$02
    rtl


// pegasus_upgrade.asm
seek($87FF33)
    stz $56
    stz $02E0
    stz $0372
    rtl


// pegasus_upgrade.asm
seek($87FF40)
    bit $F2
    dw $3010 // bpl +$30
    lda $F0
    and #$0F
    bne +
    jmp $FF8B
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
    bne +
    jmp $9138
+;  sta $26
    sta $67
    sta $0340
    jsl $07E6A6
    jmp $9138
    lda #$12
    sta $5D
    lda $3A
    and #$7F
    sta $3A
    stz $3C
    stz $3D
    lda #$11
    sta $0374
    jmp $915E


// pegasus_upgrade.asm
seek($87FF8B)
    lda $0130
    cmp #$F1
    beq +
    lda $5E
    cmp #$10
    beq ++
+;  stz $5D
    stz $0372
+;  jmp $9138


// pegasus_upgrade.asm
seek($87FFF4)
    stz $02D6
    stz $5E
    stz $5D
    stz $0372
    rtl


// flickering_fix.asm
seek($88832D)
    jsl flickering_fix_1
    nop
    nop


// alttp_msu.asm
seek($88C3FD)
    jml get_pendant
    nop


// alttp_msu.asm
seek($88C606)
    jml boss_victory
    nop


// alttp_msu.asm
seek($88CD07)
    jsl fade_out
    nop


// alttp_msu.asm
seek($88D05C)
    jsl full_volume
    nop


// alttp_msu.asm
seek($898D2C)
    jsl map_open
    nop


// pegasus_upgrade.asm
seek($899F32)
    jsl $07FFF4
    nop


// alttp_msu.asm
seek($89F2B2)
    jsl fade_out
    nop


// alttp_msu.asm
seek($89F50F)
    jsl fade_out
    nop


// death_counter.asm
seek($89F597)
    jsl death_counter
    nop
    nop
    nop
    nop
    nop


// flute_fix.asm
seek($8AB78F)
    jml flute_cancel_1
    nop
    nop


// flute_fix.asm
seek($8AB7D7)
    nop
    nop


// flute_fix.asm
seek($8AB7F6)
    jsl flute_cancel_icon


// flute_fix.asm
seek($8AB8ED)
    jsl flute_cancel_2


// alttp_msu.asm
seek($8AB940)
    jsl unk_label
    nop
    nop
    nop


// alttp_msu.asm
seek($8ABA1E)
    jsl map_open
    nop


// alttp_msu.asm
seek($8ABC90)
    jsl full_volume
    nop


// alttp_msu.asm
seek($8AEFB5)
    jsl full_volume
    nop


// alttp_msu.asm
seek($8CCF7A)
    jsl fade_out
    nop


// alttp_msu.asm
seek($8CF105)
    jsl fade_out
    nop


// cape_fix.asm
seek($8DAA65)
    jsl cape_fix
    nop


// bunny_glove_fix.asm
seek($8ED73C)
    jsl bunny_glove_fix


// alttp_msu.asm
seek($8EDA31)
    jsl map_open
    nop


// alttp_msu.asm
seek($9D8D39)
    jsl ganons_message
    nop