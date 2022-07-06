;****************************************************************
; 	Zelda 3 Redux - Retranslation Dialogue 2 data
;****************************************************************

;****************************************
;    Include Table & Dictionary files
;****************************************
incsrc "code/text/tbl/main_font.txt"

;****************************************
; 	Definitions
;****************************************
; Definitions for the Dictionary
incsrc "code/text/tbl/dictionary.txt"

; Control codes definitions
incsrc "code/text/tbl/control_codes.txt"

; Re-define Choose2 and Choose3 as, for some reason, they get flipped in the text for the new bank (possibly a bug in the text code).
!Choose2 = $72
!Choose3 = $71

;****************************************
;	Text pointers
;****************************************
; Text pointer for dialogue table 2
org $0ED436	; 0x075436
	lda #(dialogue_table2)		; lda #$DF40	; A9 40 DF
	skip 2			; STA $00
	lda #(dialogue_table2)>>16	; lda #$000E	; A9 0E 00

;****************************************
;	Dialogue
;****************************************
; Starting address for Dialogue Table 2, size $14C0
org $0EDF40	; 0x075F40
dialogue_table2:
;----------------------------------------
.message_349:
	db "Hey! Wh!{at}!{s_}!{you}r !{pro}!{ble}m,",!Line2
	db "ya damn rabb!{it}?",!WaitKey,!Line3
	db "I ca!{me} h!{er}e !{lo}ok!{ing_}!{for} !{the}",!Scroll
	db "Gold!{en_}Pow!{er}, but !{go}t ch!{an}ged",!Scroll
	db "!{to} !{thi}s f!{re}ak!{is}h !{for}m !{and_}c!{an}'t",!WaitKey,!Scroll
	db "!{get} !{ba}!{ck} ho!{me}.",!WaitKey,!Scroll
	db "If I could !{get} !{the} Mo!{on} P!{ear}l",!Scroll
	db "!{fro}m !{the} Tow!{er_}!{of} H!{er}a, !{it}",!Scroll
	db "m!{ight_}!{be} !{the} key !{to} !{get}t!{in}g",!WaitKey,!Scroll
	db "!{ba}!{ck} !{to} my !{or}ig!{in}al !{for}m.",!WaitKey,!Scroll
	db "Grr, !{you} b!{ast}ard! !{You}'!{re}",!Scroll
	db "!{get}t!{ing_}!{on} my l!{ast} n!{er}ve. Get",!Scroll
	db "!{lo}!{st}! Shoo!",!End
;----------------------------------------
.message_350:
	db "Wh!{at}? !{You}r !{for}m !{di}dn't",!Line2
	db "ch!{an}ge? !{You} !{go}t !{the} Mo!{on}",!Line3
	db "P!{ear}l, eh?",!End
;----------------------------------------
.message_351:
	db "In such a d!{an}g!{er}ous w!{or}ld, !{you}",!Line2
	db "!{ma}y ne!{ed_}a few !{thin}gs. Select",!Line3
	db "!{wh}!{at}!{ev}!{er_}!{you} like.",!End
;----------------------------------------
.message_352:
	db "Wel!{com}e! F!{or} 30 r!{up}ees, I'll let",!Line2
	db "!{you} op!{en_}2 t!{re}asu!{re_}!{che}!{st}s.",!Line3
	db "Give !{it} a !{sh}ot!",!WaitKey,!Scroll
	db "Wh!{at_}!{wi}ll !{you} !{do}?",!Scroll
	db "!{4_}> I'll p!{la}y",!Scroll
	db "!{4_}!{4_}A!{not}h!{er_}ti!{me}",!Choose,!End
;----------------------------------------
.message_353:
	db "I'll !{be} h!{er}e !{wh}!{en_}!{you}'!{re_}!{re}ady",!Line2
	db "!{to} p!{la}y. Well, !{se}e ya ar!{ound}!",!End
;----------------------------------------
.message_354:
	db "Wa!{it} kid! !{You} !{have} !{to} pay",!Line2
	db "r!{up}ees !{be}!{for}e op!{en}!{ing_}!{che}!{st}s!",!End
;----------------------------------------
.message_355:
	db "!{You} c!{an}'t op!{en_}!{an}y m!{or}e",!Line2
	db "!{che}!{st}s. !{The} ga!{me} !{is} ov!{er}.",!End
;----------------------------------------
.message_356:
	db "All right! Go op!{en_}w!{hi}!{che}v!{er_}!{you}",!Line2
	db "like!",!End
;----------------------------------------
.message_357:
	db "Wel!{com}e! Walk !{up} !{to} !{an} !{it}em !{you}",!Line2
	db "!{wa}nt !{and_}p!{re}ss A !{to} buy !{it}!",!End
;----------------------------------------
.message_358:
	db "If !{you} buy !{tha}t, !{you}'ll !{have} ni",!Line2
	db "u!{se} !{for} !{it}. Why !{not} choo!{se}",!Line3
	db "!{some}!{thin}g el!{se}?",!End
;----------------------------------------
.message_359:
	db "!{Tha}nk !{you}! !{You} !{can_}al!{wa}ys",!Line2
	db "!{re}turn if !{you} !{lo}!{se} !{you}r !{sh}ield.",!End
;----------------------------------------
.message_360:
	db "!{Tha}nk !{you}! !{Tha}t!{s_}!{the} Red",!Line2
	db "Poti!{on}. Dr!{in}k !{it} !{to} !{re}!{st}!{or}e",!Line3
	db "!{you}r health.",!End
;----------------------------------------
.message_361:
	db "!{Tha}nk !{you}! !{The}!{se} !{are_}Arrows.",!Line2
	db "!{You} ne!{ed_}a !{bo}w !{to} u!{se} !{the}m.",!End
;----------------------------------------
.message_362:
	db "!{Tha}nk !{you}! Aft!{er_}p!{la}c!{ing_}a",!Line2
	db "Bomb, !{you} !{can_}pi!{ck} !{it} !{up} w!{it}h",!Line3
	db "!{the} A butt!{on}.",!End
;----------------------------------------
.message_363:
	db "!{Tha}nk !{you}! !{Tha}t!{s_}a !{be}e. I",!Line2
	db "!{do}!{nt_}!{have} a clue !{wh}!{at_}!{you}'d",!Line3
	db "u!{se} !{it} !{for}.",!End
;----------------------------------------
.message_364:
	db "!{Tha}nk !{you}! !{Thi}s !{re}!{st}!{or}es !{on}e",!Line2
	db "h!{ear}t.",!End
;----------------------------------------
.message_365:
	db "Uh oh!{Dots} !{You}'ll ne!{ed_}!{an} empty",!Line2
	db "!{bo}ttle !{for} !{me} !{to} !{se}ll !{you} !{tha}t.",!End
;----------------------------------------
.message_366:
	db "!{You} c!{an}'t carry !{an}y m!{or}e now,",!Line2
	db "but !{you} !{ma}y ne!{ed_}!{so}!{me} l!{at}!{er}!",!End
;----------------------------------------
.message_367:	; Ganon's text
	db "I n!{ev}!{er_}thought a br!{at_}like !{you}",!Line2
	db "could m!{an}age !{to} !{tr}a!{ck} !{me} !{do}wn",!Line3
	db "!{to} !{thi}s Pyramid.",!WaitKey,!Scroll
	db "And !{to} !{thin}k !{you} w!{er}e a!{ble} !{to}",!Scroll
	db "!{so}!{me}how defe!{at_}my !{do}u!{ble}, !{the}",!Scroll
	db "Dark B!{is}hop Agahnim, t!{wi}ce no",!WaitKey,!Scroll
	db "less!",!WaitKey,!Scroll
	db "But !{ev}!{en_}!{so}, !{you} !{wi}ll n!{ev}!{er}",!Scroll
	db "w!{re}!{st} !{the} Tri!{for}ce !{fro}m my",!Scroll
	db "h!{and}s.",!WaitKey,!Scroll
	db "I !{wi}ll !{des}!{tr}oy !{you}, l!{it}tle br!{at},",!Scroll
	db "!{and_}my w!{is}h !{to} rule !{the} w!{or}lds",!Scroll
	db "!{of} l!{ight_}!{and_}darkness !{wi}ll",!WaitKey,!Scroll
	db "f!{in}al!{ly_}!{be} !{re}alized!",!End
;----------------------------------------
.message_368:	; Ganon's 2nd phase
	db "Not !{ba}d, l!{it}tle br!{at}! But let's",!Line2
	db "!{se}e how !{you} !{do} ag!{ain}!{st} my",!Line3
	db "ultim!{at}e technique !{of}",!WaitKey,!Scroll
	db "darkness! Take !{thi}s!",!End
;----------------------------------------
.message_369:
	db "Hey, kid! !{Thi}s h!{er}e!{s_}a !{hi}deout",!Line2
	db "!{for} a g!{an}g !{of} !{thi}!{ev}es. Ya c!{an}'t",!Line3
	db "!{just} !{com}e !{wa}ltz!{ing_}!{in}!",!WaitKey,!Scroll
	db "Any!{wa}y, a !{for}m!{er_}!{me}m!{be}r's",!Scroll
	db "!{be}!{en_}h!{an}g!{in}' ar!{ound} !{the}",!Scroll
	db "!{en}!{tr}!{an}ce !{to} !{the} Des!{er}t !{of}",!WaitKey,!Scroll
	db "My!{st}!{er}y. I w!{on}d!{er_}!{wh}!{at_}he's",!Scroll
	db "!{up} !{to}!{Dots}",!End
;----------------------------------------
.message_370:
	db "Yo, !{Name}! !{Thi}s us!{ed_}!{to} !{be} a",!Line2
	db "!{thi}ef!{s_}!{hi}deout.",!WaitKey,!Line3
	db "Wh!{at_}!{wa}s !{hi}s na!{me}? Oh, yeah!",!Scroll
	db "!{The}y call!{ed_}!{hi}m Bl!{in}d !{be}cau!{se}",!Scroll
	db "he h!{at}!{ed_}br!{ight_}l!{ight_}!{so} !{mu}ch.",!End
;----------------------------------------
.message_371:	; Triforce / Ending text
	db !Speed02,!Position00,!Window02
	db "Wel!{com}e, !{Name}!{Dots} I am !{the}",!Line2
	db "spir!{it} !{of} !{the} Tri!{for}ce."
	db !Speed01,!WaitKey,!Line1
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line2
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line3
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}"
	db !Speed02,!Line1
	db "!{The} Tri!{for}ce, al!{so} !{know}n as",!Line2
	db "!{the} ""Gold!{en_}Pow!{er},"" !{wa}s",!Line3
	db "!{be}!{st}ow!{ed_}by God, !{and_}fulfills",!WaitKey,!Scroll
	db "!{the} h!{ear}t!{s_}!{des}i!{re_}!{of} !{an}y",!Scroll
	db "!{wh}o !{to}uch !{it}."
	db !Speed01,!WaitKey,!Line1
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line2
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line3
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}"
	db !Speed02,!Line1
	db "If !{on}e w!{it}h a righteous h!{ear}t",!Line2
	db "!{to}u!{che}s !{it}, a righteous w!{is}h",!Line3
	db "!{wi}ll !{be} gr!{an}ted. But if !{on}e",!WaitKey,!Scroll
	db "w!{it}h !{an} !{ev}il h!{ear}t !{to}u!{che}s !{it},",!Scroll
	db "!{an} !{ev}il w!{is}h !{wi}ll !{be} gr!{an}ted."
	db !Speed01,!WaitKey,!Line1
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line2
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line3
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}"
	db !Speed02,!Line1
	db "!{The} m!{or}e h!{ear}tfelt !{the} w!{is}h,",!Line2
	db "!{the} m!{or}e !{pow}!{er}ful!{ly_}!{the}",!Line3
	db "Tri!{for}ce !{wi}ll m!{an}ife!{st} !{it}."
	db !Speed01,!WaitKey,!Line1
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line2
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line3
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}"
	db !Speed02,!Line1
	db "G!{an}!{on}!{s_}w!{is}h !{wa}s !{to} c!{on}qu!{er}",!Line2
	db "!{the}!{se} w!{or}lds. Wh!{en_}he !{to}u!{che}d",!Line3
	db "!{the} Tri!{for}ce, th!{at_}!{ev}il w!{is}h",!WaitKey,!Scroll
	db "ch!{an}g!{ed_}!{the} Sacr!{ed_}Realm !{in}!{to}",!Scroll
	db "!{the} Dark W!{or}ld."
	db !Speed01,!WaitKey,!Line1
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line2
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line3
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}"
	db !Speed02,!Line1
	db "G!{an}!{on} !{re}m!{ain}!{ed_}!{in} !{thi}s l!{and},",!Line2
	db "bid!{ing_}!{hi}s ti!{me}, accu!{mu}l!{at}!{in}g",!Line3
	db "!{pow}!{er}. He !{so}ught !{to} c!{on}qu!{er}",!WaitKey,!Scroll
	db "!{the} L!{ight_}W!{or}ld !{so} !{hi}s w!{is}h",!Scroll
	db "could !{be} !{com}!{ple}te!{ly_}fulfilled."
	db !Speed01,!WaitKey,!Line1
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line2
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line3
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}"
	db !Speed02,!Line1
	db "!{The} Tri!{for}ce a!{wa}!{it}s a new",!Line2
	db "m!{ast}!{er}. Its ""Gold!{en_}Pow!{er}"" !{is}",!Line3
	db "!{in} !{you}r h!{and}s."
	db !Speed01,!WaitKey,!Line1
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line2
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line3
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}"
	db !Speed02,!Line1
	db "Co!{me} !{and_}!{to}uch !{it} w!{it}h a w!{is}h",!Line2
	db "!{in} !{you}r h!{ear}t.",!End
;----------------------------------------
.message_372:
	db "Ju!{st} take !{it}, !{you} g!{re}edy",!Line2
	db "b!{ast}ard!",!End
;----------------------------------------
.message_373:
	db "-!{hi}c- I saw !{on}e he!{ck} !{of} a",!Line2
	db "!{la}dy!{Dots} She !{wa}s ab!{so}lutely",!Line3
	db "!{in}c!{re}!{di}!{ble}!{Dots} Up !{the} riv!{er_}!{at}",!WaitKey,!Scroll
	db "!{the} W!{at}!{er}f!{all_}!{of} W!{is}!{hi}ng!{Dots} Wh!{at}",!Scroll
	db "a !{be}auty.",!WaitKey,!Scroll
	db "!{Name}, !{you}'ve !{go}tta !{go} !{me}et",!Scroll
	db "h!{er_}!{at_}le!{ast} !{on}ce. !{You} a!{re}",!Scroll
	db "!{go}nna !{re}al!{ly_}like h!{er}.",!End
;----------------------------------------
.message_374:
	db "Keep !{thi}s a !{se}c!{re}t !{be}t!{we}!{en_}us.",!End
;----------------------------------------
.message_375:
	db "!{The}!{re}!{s_}!{some}!{thin}' !{go}od !{in} !{the}",!Line2
	db "cave e!{ast} !{of} Lake Hylia.",!Line3
	db "Keep !{thi}s a !{se}c!{re}t !{be}t!{we}!{en_}us.",!End
;----------------------------------------
.message_376:
	db "!{You} !{can_}!{ear}n a !{lo}t !{of} r!{up}ees",!Line2
	db "by defe!{at}!{ing_}!{en}emies.",!Line3
	db "Keep !{thi}s a !{se}c!{re}t !{be}t!{we}!{en_}us.",!End
;----------------------------------------
.message_377:
	db "!{Name}, !{di}d !{you} !{know} th!{at_}if",!Line2
	db "!{you} !{sh}!{at}t!{er_}!{fro}z!{en_}!{en}emies",!Line3
	db "w!{it}h !{the} Magic Hamm!{er}, !{you}'ll",!WaitKey,!Scroll
	db "!{of}t!{en_}!{get} !{ma}gic jars?",!End
;----------------------------------------
.message_378:
	db "!{You} !{mu}!{st} s!{ear}chrah!{la}",!Line2
	db "!{to} f!{in}d Sa!{has}rah!{la}.",!End
;----------------------------------------
.message_379:
	db "As I though!{tr}ah!{la}, !{you} f!{ound}",!Line2
	db "Sa!{has}rah!{la}",!End
;----------------------------------------
.message_380:
	db "I'm s!{or}ry, but !{you} !{do}n't",!Line2
	db "!{se}em !{to} !{have} !{en}ough r!{up}ees!{Dots}",!End
;----------------------------------------
.message_381:
	db "Clu!{ck} clu!{ck}!{Dots} oh, my! W-!{wh}!{at}'s",!Line2
	db "!{thi}s? I've !{be}!{com}e a hum!{an}, !{and}",!Line3
	db "!{can_}!{ev}!{en_}speak !{the} l!{an}guage!",!WaitKey,!Scroll
	db "A!{re_}!{you} !{the} !{bo}y !{wh}o tea!{se}s my",!Scroll
	db "fri!{en}ds !{so} !{of}t!{en}? !{The}",!Scroll
	db "!{we}!{at}h!{er}co!{ck} !{is} al!{wa}ys",!WaitKey,!Scroll
	db "w!{at}c!{hi}ng, !{you} !{know}.",!WaitKey,!Scroll
	db "Any!{wa}y, !{thi}s hum!{an} !{for}m !{is}",!Scroll
	db "clu!{ck}!{ing_}!{in}c!{on}v!{en}i!{ent}. How I'd",!Scroll
	db "!{lo}ve !{to} !{be} a bird ag!{ain}!",!WaitKey,!Scroll
	db "Clu!{ck} clu!{ck}!{Dots}",!End
;----------------------------------------
.message_382:
	db "Let!{s_}!{se}e if !{you} !{can_}w!{in} r!{up}ees",!Line2
	db "!{or} if !{you} !{lo}!{se} em. A s!{in}gle",!Line3
	db "r!{ound} co!{st}s 20 r!{up}ees.",!WaitKey,!Scroll
	db "Will !{you} !{tr}y !{you}r lu!{ck}?",!Scroll
	db "!{4_}>!{2_}I'll p!{la}y",!Scroll
	db "!{4_}!{4_} I'm outta h!{er}e",!Choose,!End
;----------------------------------------
.message_383:
	db "All right!! Op!{en_}!{the} !{che}!{st} !{you}",!Line2
	db "like!",!End
;----------------------------------------
.message_384:
	db "I !{se}e!{Dots} !{Tha}t!{s_}!{to}o !{ba}d. Well,",!Line2
	db "save !{up} !{you}r r!{up}ees !{and_}!{com}e",!Line3
	db "!{ba}!{ck} !{an}oth!{er_}ti!{me}.",!End
;----------------------------------------
.message_385:
	db "Let!{s_}!{se}e if !{you} !{can_}w!{in} r!{up}ees",!Line2
	db "!{or} if !{you} !{lo}!{se} em. A s!{in}gle",!Line3
	db "r!{ound} co!{st}s 100 r!{up}ees.",!WaitKey,!Scroll
	db "Will !{you} !{tr}y !{you}r lu!{ck}?",!Scroll
	db "!{4_}>!{2_}I'll p!{la}y",!Scroll
	db "!{4_}!{4_} I'm outta h!{er}e",!Choose,!End
;----------------------------------------
.message_386:
	db "Hey !{the}!{re}, !{Name}. I'm gr!{at}eful",!Line2
	db "!{for} !{the} v!{is}!{it}. It !{mu}!{st}'ve !{be}!{en}",!Line3
	db "a !{re}al p!{ain} !{get}t!{ing_}!{in}.",!WaitKey,!Scroll
	db "Let !{me} !{ma}ke !{it} !{up} !{to} !{you} w!{it}h",!Scroll
	db "!{an} !{in}t!{er}e!{st}!{ing_}!{st}!{or}y. !{The}!{re}!{s_}a",!Scroll
	db "!{la}ke full !{of} Z!{or}a n!{ear} !{the}",!WaitKey,!Scroll
	db "!{so}urce !{of} !{the} riv!{er}.",!WaitKey,!Scroll
	db "I h!{ear}d tho!{se} Z!{or}a !{have} !{so}!{me}",!Scroll
	db "k!{in}d !{of} X-r!{at}!{ed_}t!{re}asu!{re}. Heh",!Scroll
	db "heh heh. I'd !{re}al!{ly_}!{lo}ve a !{lo}ok",!WaitKey,!Scroll
	db "!{at_}!{it}.",!End
;----------------------------------------
.message_387:
	db "I'm gr!{at}eful !{for} !{the} v!{is}!{it}. It",!Line2
	db "!{mu}!{st}'ve !{be}!{en_}a !{re}al p!{ain}",!Line3
	db "!{get}t!{ing_}!{in}. Let !{me} exp!{re}ss my",!WaitKey,!Scroll
	db "app!{re}ci!{at}i!{on} !{lo}ud !{and_}cl!{ear} -",!Scroll
	db "THANK YOU!",!WaitKey,!Scroll
	db "By !{the} !{wa}y, !{the}!{re} us!{ed_}!{to} !{be} a",!Scroll
	db "kid h!{er}e !{wh}o !{com}!{mu}nic!{at}!{ed_}w!{it}h",!Scroll
	db "!{an}i!{ma}ls by ocar!{in}a.",!WaitKey,!Scroll
	db "He !{ev}!{en_}!{ha}d a pet bird carry",!Scroll
	db "!{hi}m !{all_}ov!{er_}!{the} k!{in}g!{do}m. !{Tha}t",!Scroll
	db "ocar!{in}a !{mu}!{st} !{be} full !{of}",!WaitKey,!Scroll
	db "my!{st}!{er}ious !{pow}!{er}.",!End
;----------------------------------------
.message_388:
	db !Position00,!Speed00
	db ">Start !{fro}m !{Name}!{s_}Hou!{se}",!Line2
	db "!{2_}Start !{fro}m !{the} C!{ha}pel",!Choose2,!End
	; For some reason, this selection and the next one seem to be flipped in terms of the Control Code "Choose"
;----------------------------------------
.message_389:
	db !Position00,!Speed00
	db ">Start From !{Name}!{s_}Hou!{se}",!Line2
	db "!{2_}Start !{fro}m !{the} C!{ha}pel",!Line3
	db "!{2_}Start !{fro}m !{the} Mount!{ain} Cave",!Choose3,!End
;----------------------------------------
.message_390:
	db !Speed00
	db "> C!{on}t!{in}ue Ga!{me}",!Line2
	db "!{3_}Save !{and_}Qu!{it}",!Choose2,!End
	; This line is also affected by the "Choose" flip
;----------------------------------------
.message_391:
	db "Wel!{com}e !{to} !{the} Digg!{ing_}Ga!{me}.",!Line2
	db "Dig as !{mu}ch as !{you} like !{for} 30",!Line3
	db "!{se}c!{on}ds !{st}raight. Any t!{re}asu!{re}",!WaitKey,!Scroll
	db "!{you} uncov!{er_}!{is} !{you}rs !{to} keep!",!WaitKey,!Scroll
	db "How !{do}es 80 r!{up}ees s!{ound}?",!Scroll
	db "!{4_}> I !{wa}nt !{to} !{di}g",!Scroll
	db "!{4_}!{4_}I !{do}!{nt_}!{wa}nt !{to} !{di}g",!Choose,!End
;----------------------------------------
.message_392:
	db "In th!{at_}ca!{se}, I'll l!{en}d !{you} a",!Line2
	db "!{sh}ovel. Wh!{en_}!{you}'!{re_}!{re}ady,",!Line3
	db "p!{re}ss Y !{to} !{di}g!",!End
;----------------------------------------
.message_393:
	db "I !{se}e. !{The}n I wo!{nt_}pu!{sh} !{it}.",!Line2
	db "Plea!{se} !{com}e !{ba}!{ck} !{wh}!{en_}!{you}",!Line3
	db "!{have} !{en}ough r!{up}ees.",!End
;----------------------------------------
.message_394:
	db "Looks like !{you}r ti!{me}!{s_}!{up}.",!Line2
	db "Plea!{se} !{com}e !{ba}!{ck} ag!{ain}!",!End
;----------------------------------------
.message_395:
	db "Co!{me} !{ba}!{ck} !{an}oth!{er_}ti!{me}!",!Line2
	db "I'll !{be} !{wa}!{it}!{in}g.",!End
;----------------------------------------
.message_396:
	db "I wo!{nt_}!{get} !{in}!{to} !{the} details,",!Line2
	db "but !{it}!{s_}!{not} a !{go}od ti!{me}. Plea!{se}",!Line3
	db "!{com}e !{ba}!{ck} l!{at}!{er}. S!{or}ry.",!End
;----------------------------------------

warnpc $0EF400	; 0x077400
