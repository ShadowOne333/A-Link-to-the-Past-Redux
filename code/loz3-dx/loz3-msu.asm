incsrc "snes_utils.inc"

!REG_MSU_STATUS   = $2000

!REG_MSU_ID_0     = $2002
!REG_MSU_ID_1     = $2003
!REG_MSU_ID_2     = $2004
!REG_MSU_ID_3     = $2005
!REG_MSU_ID_4     = $2006
!REG_MSU_ID_5     = $2007

!REG_MSU_ID_01    = $2002
!REG_MSU_ID_23    = $2004
!REG_MSU_ID_45    = $2006


!VAL_MSU_ID_0     = #$53      ; 'S'
!VAL_MSU_ID_1     = #$2D      ; '-'
!VAL_MSU_ID_2     = #$4D      ; 'M'
!VAL_MSU_ID_3     = #$53      ; 'S'
!VAL_MSU_ID_4     = #$55      ; 'U'
!VAL_MSU_ID_5     = #$31      ; '1'

!VAL_MSU_ID_01    = #$2D53    ; 'S-'
!VAL_MSU_ID_23    = #$534D    ; 'MS'
!VAL_MSU_ID_45    = #$3155    ; 'U1'


!REG_MSU_TRACK    = $2004
!REG_MSU_TRACK_LO = $2004
!REG_MSU_TRACK_HI = $2005
!REG_MSU_VOLUME   = $2006
!REG_MSU_CONTROL  = $2007


!FLAG_MSU_PLAY                    = #$01
!FLAG_MSU_REPEAT                  = #$02
!FLAG_MSU_STATUS_TRACK_MISSING    = #$08
!FLAG_MSU_STATUS_AUDIO_PLAYING    = #$10
!FLAG_MSU_STATUS_AUDIO_REPEATING  = #$20
!FLAG_MSU_STATUS_AUDIO_BUSY       = #$40
!FLAG_MSU_STATUS_DATA_BUSY        = #$80


!REG_CURRENT_VOLUME           = $0127
!REG_TARGET_VOLUME            = $0129
!REG_CURRENT_MSU_TRACK        = $012B
!REG_MUSIC_CONTROL            = $012C
!REG_CURRENT_TRACK            = $0130
!REG_CURRENT_COMMAND          = $0133

!REG_SPC_CONTROL              = $2140
!REG_NMI_FLAGS                = $4210

!VAL_COMMAND_FADE_OUT         = #$F1
!VAL_COMMAND_FADE_HALF        = #$F2
!VAL_COMMAND_FULL_VOLUME      = #$F3
!VAL_COMMAND_LOAD_NEW_BANK    = #$FF

!VAL_VOLUME_INCREMENT = #$10
!VAL_VOLUME_DECREMENT = #$02
!VAL_VOLUME_MUTE      = #$0F
!VAL_VOLUME_HALF      = #$80
!VAL_VOLUME_FULL      = #$FF

macro wait_for_track(playing,done)
    rep #$20
    lda !REG_MSU_ID_01
    cmp !VAL_MSU_ID_01
    bne ++
    lda !REG_MSU_ID_23
    cmp !VAL_MSU_ID_23
    bne ++
    lda !REG_MSU_ID_45
    cmp !VAL_MSU_ID_45
    bne ++
    sep #$20
    lda !REG_MSU_STATUS
    bit !FLAG_MSU_STATUS_TRACK_MISSING
    bne ++
    bit !FLAG_MSU_STATUS_AUDIO_PLAYING
    bne +
--
    jml done
-
+
    jml playing
++
    sep #$20
    lda !REG_SPC_CONTROL
    bne -
    bra --
endmacro

%fseek($0080D7)
spc_nmi:
    jml msu_main
    nop
spc_continue:
%fseek($008103)
spc_skip:


%fseek($08C3FD)
    jml pendant_fanfare
    nop
pendant_continue:
%fseek($08C407)
pendant_done:


%fseek($08C606)
    jml crystal_fanfare
    nop
crystal_done:
%fseek($08C613)
crystal_continue:


%fseek($0EBD14)
    jsl ending_wait


%fseek($07F89D)
track_list:
    db $00,$01,$03,$03,$03,$03,$03,$03
    db $01,$03,$01,$03,$03,$03,$03,$03
    db $03,$03,$03,$01,$03,$03,$03,$03
    db $03,$03,$03,$03,$03,$01,$03,$03
    db $03,$01,$01

%fseek($07F8C0)
msu_main:
    lda $4210
    lda !REG_MSU_ID_01
    cmp !VAL_MSU_ID_01
    beq +
msu_not_found:
    sep #$30
    jml spc_continue
+
    lda !REG_MSU_ID_23
    cmp !VAL_MSU_ID_23
    bne msu_not_found
    lda !REG_MSU_ID_45
    cmp !VAL_MSU_ID_45
    bne msu_not_found
    sep #$30
    ldx !REG_MUSIC_CONTROL
    bne command_ff
    
do_fade:
    lda !REG_CURRENT_VOLUME
    cmp !REG_TARGET_VOLUME
    bne +
    jml spc_skip
+
    bcc +
    sbc !VAL_VOLUME_DECREMENT
;    cmp !VAL_VOLUME_MUTE
    bcs ++
    stz !REG_CURRENT_VOLUME
    stz !REG_MSU_CONTROL
    stz !REG_MUSIC_CONTROL
    stz !REG_CURRENT_TRACK
    stz !REG_CURRENT_COMMAND
    stz !REG_CURRENT_MSU_TRACK
    bra ++
+
    adc !VAL_VOLUME_INCREMENT
    bcc ++
    lda !VAL_VOLUME_FULL
++
    sta !REG_CURRENT_VOLUME
    sta !REG_MSU_VOLUME
    jml spc_continue

command_ff:
    cpx !VAL_COMMAND_LOAD_NEW_BANK
    bne command_f3
    jml spc_continue

command_f3:
    cpx !VAL_COMMAND_FULL_VOLUME
    bne command_f2
    stx !REG_SPC_CONTROL
    stx !REG_CURRENT_COMMAND
    lda !VAL_VOLUME_FULL
    sta !REG_TARGET_VOLUME
    stz !REG_MUSIC_CONTROL
    jml spc_skip

command_f2:
    cpx !VAL_COMMAND_FADE_HALF
    bne command_f1
    stx !REG_SPC_CONTROL
    stx !REG_CURRENT_COMMAND
    lda !VAL_VOLUME_HALF
    sta !REG_TARGET_VOLUME
    stz !REG_MUSIC_CONTROL
    jml spc_skip

command_f1:
    cpx !VAL_COMMAND_FADE_OUT
    bne load_track
    stx !REG_SPC_CONTROL
    stx !REG_CURRENT_COMMAND
    stx !REG_CURRENT_TRACK
    stz !REG_TARGET_VOLUME
    stz !REG_MUSIC_CONTROL
    jml spc_skip

load_track:
    cpx !REG_CURRENT_MSU_TRACK
    bne +
    cpx #$1B
    beq +
    jml spc_skip
+
    stx !REG_MSU_TRACK_LO
    stz !REG_MSU_TRACK_HI
    stz !REG_MSU_CONTROL
    lda !VAL_VOLUME_FULL
    sta !REG_TARGET_VOLUME
    sta !REG_CURRENT_VOLUME
    sta !REG_MSU_VOLUME
    cpx #$0F
    bne msu_check_busy
    ldx #$0C

msu_check_busy:
    lda !REG_MSU_STATUS
    bit !FLAG_MSU_STATUS_AUDIO_BUSY
    bne msu_check_busy
    bit !FLAG_MSU_STATUS_TRACK_MISSING
    beq msu_play

spc_fallback:
    stz !REG_MSU_CONTROL
    stz !REG_CURRENT_MSU_TRACK
    stz !REG_TARGET_VOLUME
    stz !REG_CURRENT_VOLUME
    stz !REG_MSU_VOLUME
    jml spc_continue

msu_play:
    lda !VAL_COMMAND_FADE_OUT
    sta !REG_SPC_CONTROL
    lda.l track_list,x
    sta !REG_MSU_CONTROL
    stx !REG_CURRENT_COMMAND
    stx !REG_CURRENT_TRACK
    stx !REG_CURRENT_MSU_TRACK
    stz !REG_MUSIC_CONTROL
    jml spc_skip


pendant_fanfare:
    rep #$20
    lda !REG_MSU_ID_01
    cmp !VAL_MSU_ID_01
    bne pendant_spc
    lda !REG_MSU_ID_23
    cmp !VAL_MSU_ID_23
    bne pendant_spc
    lda !REG_MSU_ID_45
    cmp !VAL_MSU_ID_45
    bne pendant_spc
    sep #$20
    lda !REG_MSU_STATUS
    bit !FLAG_MSU_STATUS_AUDIO_PLAYING
    bne +
--
    jml pendant_done
-
+
    jml pendant_continue

pendant_spc:
    sep #$20
    lda !REG_SPC_CONTROL
    bne -
    bra --


crystal_fanfare:
    rep #$20
    lda !REG_MSU_ID_01
    cmp !VAL_MSU_ID_01
    bne crystal_spc
    lda !REG_MSU_ID_23
    cmp !VAL_MSU_ID_23
    bne crystal_spc
    lda !REG_MSU_ID_45
    cmp !VAL_MSU_ID_45
    bne crystal_spc
    sep #$20
    lda !REG_MSU_STATUS
    bit !FLAG_MSU_STATUS_AUDIO_PLAYING
    bne +
--
    jml crystal_done
-
+
    jml crystal_continue

crystal_spc:
    sep #$20
    lda !REG_SPC_CONTROL
    bne -
    bra --


ending_wait:
    rep #$20
    lda !REG_MSU_ID_01
    cmp !VAL_MSU_ID_01
    bne +
    lda !REG_MSU_ID_23
    cmp !VAL_MSU_ID_23
    bne +
    lda !REG_MSU_ID_45
    cmp !VAL_MSU_ID_45
    bne +
    sep #$20
-
    lda !REG_MSU_STATUS
    bit !FLAG_MSU_STATUS_AUDIO_PLAYING
    bne -
+
    sep #$20
    lda #$22
    rtl
