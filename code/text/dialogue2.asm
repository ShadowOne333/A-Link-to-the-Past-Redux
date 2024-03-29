;****************************************************************
; 	Zelda 3 Redux - Dialogue 2 data
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
.message_352:
	db "Hi, !{ma}y I help !{you}?!{2_}!{You} c!{an}",!Line2
	db "op!{en_}two !{che}!{st}s !{for} 30 R!{up}ees.",!Line3
	db "Why !{do}!{nt_}!{you} p!{la}y?",!WaitKey,!Scroll
	db "Wh!{at_}!{wi}ll !{you} !{do}?",!Scroll
	db "!{4_}> P!{la}y h!{er}e",!Scroll
	db "!{4_}!{3_}May!{be} next ti!{me}",!Choose,!End
;----------------------------------------
.message_353:
	db "Well, !{com}e !{ba}!{ck} !{and_}p!{la}y !{so}!{me}",!Line2
	db "ti!{me}.!{2_}I'll !{be} !{wa}!{it}!{ing_}!{for} !{you}.",!Line3
	db "Until !{the}n, !{go}od bye!",!End
;----------------------------------------
.message_354:
	db "Hey kid!",!Line2
	db "!{You} !{can_}op!{en_}a !{che}!{st} aft!{er}",!Line3
	db "pay!{ing_}R!{up}ees!",!End
;----------------------------------------
.message_355:
	db "!{You} c!{an}'t op!{en_}!{an}y m!{or}e",!Line2
	db "!{che}!{st}s.!{2_}!{The} ga!{me} !{is} ov!{er}.",!End
;----------------------------------------
.message_356:
	db "All right, kid.",!Line2
	db "Choo!{se} !{we}ll!!{2_}Good lu!{ck}!",!End
;----------------------------------------
.message_357:
	db "May I help !{you}?!{2_}Select !{the}",!Line2
	db "!{thin}g !{you} like !{and_}p!{re}ss A",!Line3
	db "!{to} buy !{it}.!{2_}Prices as !{ma}rked!",!End
;----------------------------------------
.message_358:
	db "!{You} !{do}!{nt_}ne!{ed_}th!{at_}!{it}em!{Dots}",!Line2
	db "Why !{not} !{se}lect !{some}!{thin}g el!{se}?",!End
;----------------------------------------
.message_359:
	db "!{Tha}nk !{you} v!{er}y !{mu}ch.",!Line2
	db "Wh!{en}!{ev}!{er_}!{you} !{lo}!{se} !{you}r !{sh}ield,",!Line3
	db "!{com}e !{ba}!{ck} h!{er}e ag!{ain}.",!End
;----------------------------------------
.message_360:
	db "!{Tha}nk !{you} v!{er}y !{mu}ch.",!Line2
	db "!{Thi}s !{is} !{the} R!{ed_}Poti!{on}.",!Line3
	db "It helps !{you} !{re}cov!{er_}!{you}r Life.",!End
;----------------------------------------
.message_361:
	db "!{Tha}nk !{you}! !{The}!{se} !{are_}Arrows.",!Line2
	db "!{You} ne!{ed_}a !{bo}w !{to} u!{se} !{the}m.",!End
;----------------------------------------
.message_362:
	db "!{The}!{se} !{are_}Bombs.",!Line2
	db "Did !{you} !{know} !{you} !{can_}pi!{ck} !{up}",!Line3
	db "a Bomb !{you} al!{re}ady p!{la}c!{ed_}",!WaitKey,!Scroll
	db "w!{it}h !{the} A Butt!{on}?",!End
;----------------------------------------
.message_363:
	db "!{Tha}nk !{you} v!{er}y !{mu}ch.",!Line2
	db "Th!{at_}!{is} a Bee.!{2_}D!{on}'t ask !{me}",!Line3
	db "!{wh}!{at_}!{it} !{is} us!{ed_}!{for}, e!{it}h!{er}.",!End
;----------------------------------------
.message_364:
	db "!{Tha}nk !{you} v!{er}y !{mu}ch.",!Line2
	db "!{You} !{can_}!{re}cov!{er_}!{on}e H!{ear}t.",!End
;----------------------------------------
.message_365:
	db "No no no!{Dots}!{2_}I c!{an}'t !{se}ll !{the}",!Line2
	db "m!{er}ch!{and}!{is}e !{be}cau!{se} !{you} !{do}n't",!Line3
	db "!{have} !{an} empty !{bo}ttle.",!End
;----------------------------------------
.message_366:
	db "!{You} c!{an}'t carry !{an}y m!{or}e",!Line2
	db "now, but !{you} !{ma}y need",!Line3
	db "!{so}!{me} l!{at}!{er}!",!End
;----------------------------------------
.message_367:	; Ganon's text
	db "I n!{ev}!{er_}thought a br!{at_}like !{you}",!Line2
	db "could !{give_}!{me} !{so} !{mu}ch !{tr}ou!{ble}.",!WaitKey,!Line3
	db "And !{to} !{thin}k !{you} w!{er}e a!{ble} !{to}",!Scroll
	db "defe!{at}!{ed_}my alt!{er_}e!{go}, Agahnim",!Scroll
	db "!{the} Dark Prie!{st}, t!{wi}ce!",!WaitKey,!Scroll
	db "But !{ev}!{en_}!{so}, !{you} !{wi}ll n!{ev}!{er}",!Scroll
	db "w!{re}!{st} !{the} Tri!{for}ce !{fro}m my",!Scroll
	db "h!{and}s.",!WaitKey,!Scroll
	db "I !{wi}ll !{des}!{tr}oy !{you}, l!{it}tle br!{at},",!Scroll
	db "!{and_}my w!{is}h !{to} rule !{the} w!{or}lds",!Scroll
	db "!{of} l!{ight_}!{and_}darkness !{wi}ll",!WaitKey,!Scroll
	db "!{com}e !{tr}ue w!{it}h!{out_}de!{la}y.",!End
;----------------------------------------
.message_368:	; Ganon's 2nd phase
	db "!{You} !{are_}!{do}!{ing_}!{we}ll, !{la}d.!{2_}But",!Line2
	db "!{can_}!{you} b!{re}ak through !{thi}s",!Line3
	db "!{se}c!{re}t technique !{of} Darkness?",!WaitKey,!Scroll
	db "En Garde!",!End
;----------------------------------------
.message_369:
	db "Hey kid, !{thi}s !{is} a !{se}c!{re}t !{hi}de-",!Line2
	db "!{out_}!{for} a g!{an}g !{of} !{thi}!{ev}es!",!Line3
	db "D!{on}'t !{ent}!{er_}w!{it}h!{out_}p!{er}m!{is}si!{on}!",!WaitKey,!Scroll
	db "By !{the} !{wa}y, a !{for}m!{er_}!{me}m!{be}r's",!Scroll
	db "!{be}!{en_}h!{an}g!{in}' ar!{ound} !{the}",!Scroll
	db "!{en}!{tr}!{an}ce !{to} !{the} Des!{er}t !{of}",!WaitKey,!Scroll
	db "My!{st}!{er}y. ",!Scroll
	db "I w!{on}d!{er_}!{wh}!{at_}he!{s_}!{up} !{to}!{Dots}",!End
;----------------------------------------
.message_370:
	db "Yo !{Name}!!{2_}!{Thi}s hou!{se} u!{se}d",!Line2
	db "!{to} !{be} a !{hi}de!{out_}!{for} a g!{an}g !{of}",!Line3
	db "!{thi}!{ev}es.",!WaitKey,!Scroll
	db "Wh!{at_}!{wa}s !{the}ir lead!{er}!{s_}na!{me}!{Dots}",!Scroll
	db "Oh yeah, !{hi}s na!{me} !{wa}s Bl!{in}d,",!Scroll
	db "he h!{at}!{ed_}br!{ight_}l!{ight_}a !{lo}t.",!End
;----------------------------------------
.message_371:	; Triforce / Ending text
	db !Speed02,!Position00,!Window02
	db "Wel!{com}e, !{Name}!{Dots}",!Line2
	db "I!{3_}am!{3_}!{the}!{3_}Spir!{it}",!Line3
	db "Of!{3_}!{The}!{3_}Tri!{for}ce.",!WaitKey,!Scroll
	db "!{Dots}!{3_}!{Dots}!{3_}!{Dots}"
	db !Speed01,!WaitKey,!Line1
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line2
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line3
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}"
	db !Speed02,!Line1
	db "!{The} Tri!{for}ce !{wi}ll gr!{an}t !{the}",!Line2
	db "w!{is}hes !{in} !{the} h!{ear}t !{and_}m!{in}d !{of}",!Line3
	db "!{the} p!{er}s!{on} !{wh}o !{to}u!{che}s !{it}."
	db !Speed01,!WaitKey,!Line1
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line2
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line3
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}"
	db !Speed02,!Line1
	db "If !{on}e w!{it}h a righteous h!{ear}t",!Line2
	db "!{to}u!{che}s !{it}, a righteous w!{is}h",!Line3
	db "!{wi}ll !{be} gr!{an}ted!{Dots}",!WaitKey,!Scroll
	db "But if !{on}e w!{it}h !{an} !{ev}il h!{ear}t",!Scroll
	db "!{to}u!{che}s !{it}, !{an} !{ev}il w!{is}h",!Scroll
	db "!{wi}ll !{be} gr!{an}ted."
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
	db "Ho!{we}!{ver}, now !{tha}t G!{an}!{on} !{has}",!Line2
	db "fall!{en}, h!{is} Dark W!{or}ld !{sh}!{all_}",!Line3
	db "d!{is}app!{ear} as !{we}ll."
	db !Speed01,!WaitKey,!Line1
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line2
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line3
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}"
	db !Speed02,!Line1
	db "!{The} Tri!{for}ce a!{wa}!{it}s a new",!Line2
	db "m!{ast}!{er}.!{2_}Its Gold!{en_}Pow!{er_}!{is}",!Line3
	db "!{in} !{you}r h!{and}s!{Dots}"
	db !Speed01,!WaitKey,!Line1
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line2
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}",!Line3
	db "!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{4_}!{2_}"
	db !Speed02,!Line1
	db "Now, !{to}uch !{it} w!{it}h a w!{is}h !{in}",!Line2
	db "!{you}r h!{ear}t.",!Line3
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots}!{2_}!{Dots}",!End
;----------------------------------------
.message_372:
	db "All right!",!Line2
	db "Take !{it}, greedy !{thi}ef!",!End
;----------------------------------------
.message_373:
	db "-hic-!{2_}I saw !{on}e he!{ck}",!Line2
	db "!{of} a !{la}dy!{Dots}",!Line3
	db "She !{wa}s ab!{so}lutely !{in}c!{re}!{di}!{ble}!{Dots}",!WaitKey,!Scroll
	db "Up !{the} riv!{er_}!{at_}!{the} W!{at}!{er}f!{all_}",!Scroll
	db "Of W!{is}!{hi}ng !{in} !{the} !{hi}lls !{wh}!{er}e",!Scroll
	db "!{the} riv!{er_}!{be}g!{in}s!{Dots}",!WaitKey,!Scroll
	db "Wh!{at_}a !{be}auty!",!Scroll
	db "!{Name}, !{you}'ve !{go}tta !{go} !{me}et",!Scroll
	db "h!{er_}!{at_}le!{ast} !{on}ce.",!WaitKey,!Scroll
	db "!{You} a!{re} !{go}nna !{re}al!{ly_} like h!{er}.",!End
;----------------------------------------
.message_374:
	db "Take !{so}!{me} R!{up}ees, but !{do}n't",!Line2
	db "tell !{an}y!{on}e I gave !{the}m !{to} !{you}.",!Line3
	db "Keep !{thi}s a !{se}c!{re}t !{be}t!{we}!{en_}us.",!End
;----------------------------------------
.message_375:
	db "!{The}!{re}!{s_}!{some}!{thin}' !{go}od !{in} !{the}",!Line2
	db "cave e!{ast} !{of} Lake Hylia.",!Line3
	db "Keep !{thi}s a !{se}c!{re}t !{be}t!{we}!{en_}us.",!End
;----------------------------------------
.message_376:
	db "!{You} !{can_}!{ear}n a !{lo}t !{of} R!{up}ees",!Line2
	db "by defe!{at}!{ing_}!{en}emies.!{2_}It's",!Line3
	db "!{the} !{se}c!{re}t !{of} my success!{Dots}",!End
;----------------------------------------
.message_377:
	db "!{Name}, !{di}d !{you} !{know} th!{at_}if",!Line2
	db "!{you} !{sh}!{at}t!{er_}!{fro}z!{en_}!{en}emies",!Line3
	db "w!{it}h !{the} Hamm!{er}, !{you} !{wi}ll !{of}t!{en}",!WaitKey,!Scroll
	db "!{get} a Magic Jars?",!End
;----------------------------------------
.message_378:
	db "!{You} !{mu}!{st} s!{ear}chrah!{la}",!Line2
	db "!{for} Sa!{has}rah!{la}.",!Line3
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots}",!End
;----------------------------------------
.message_379:
	db "Oh yah, as I though!{tr}ah!{la},",!Line2
	db "!{you} f!{ound} Sa!{has}rah!{la}!",!Line3
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots}",!End
;----------------------------------------
.message_380:
	db "I'm s!{or}ry, but !{you} !{do}n't",!Line2
	db "!{se}em !{to} !{have} !{en}ough R!{up}ees!{Dots}",!End
;----------------------------------------
.message_381:
	db "Clu!{ck} clu!{ck}!{Dots}!{2_}Wh!{at}?!",!Line2
	db "!{You} turn!{ed_}!{me} !{in}!{to} a hum!{an}.",!Line3
	db "I !{can_}!{ev}!{en_}speak !{the} l!{an}guage!",!WaitKey,!Scroll
	db "A!{ha}, !{it} !{mu}!{st} !{be} !{you} !{wh}o !{is}",!Scroll
	db "al!{wa}ys teas!{ing_}my fri!{en}ds.",!Scroll
	db "!{The} We!{at}h!{er}co!{ck} !{is} al!{wa}ys",!WaitKey,!Scroll
	db "w!{at}c!{hi}ng !{you} !{ha}rass !{the}m.",!Scroll
	db "Well, !{thi}s hum!{an} s!{ha}pe !{is}",!Scroll
	db "un!{com}!{for}ta!{ble} !{for} !{me}.",!WaitKey,!Scroll
	db "Ahhh, I !{wa}nt !{to} !{be} a c!{hi}!{ck}!{en}",!Scroll
	db "ag!{ain}!!{2_}Clu!{ck} clu!{ck}!{Dots}",!End
;----------------------------------------
.message_382:
	db "Pay !{me} 20 R!{up}ees !{and_}I'll",!Line2
	db "let !{you} op!{en_}!{on}e !{che}!{st}.",!Line3
	db "!{You} c!{an} keep !{wh}!{at_}!{is} !{in}side.",!WaitKey,!Scroll
	db "Wh!{at_}!{wi}ll !{you} !{do}?",!Scroll
	db "!{4_}> Op!{en_}a che!{st}",!Scroll
	db "!{4_}!{3_}Escape",!Choose,!End
;----------------------------------------
.message_383:
	db "All right!!",!Line2
	db "Op!{en_}!{the} !{che}!{st} !{you} like!",!End
;----------------------------------------
.message_384:
	db "Oh, I !{se}e!{Dots}!{2_}Too !{ba}d.",!Line2
	db "Drop by ag!{ain} aft!{er_}collect!{in}g",!Line3
	db "R!{up}ees.",!End
;----------------------------------------
.message_385:
	db "F!{or} 100 R!{up}ees, I'll let !{you}",!Line2
	db "op!{en_}!{on}e !{che}!{st} !{and_}keep !{the}",!Line3
	db "t!{re}asu!{re_}th!{at_}!{is} !{in}side.",!WaitKey,!Scroll
	db "Wh!{at_}!{wi}ll !{you} !{do}?",!Scroll
	db "!{4_}> Op!{en_}a che!{st}",!Scroll
	db "!{4_}!{3_}Escape",!Choose,!End
;----------------------------------------
.message_386:
	db "Hi, !{Name}.",!Line2
	db "S!{or}ry a!{bo}ut my yard.",!Line3
	db "It!{s_}a l!{it}tle ov!{er} grown.",!WaitKey,!Scroll
	db "!{Tha}nks !{for} v!{is}!{it}!{in}g.",!WaitKey,!Scroll
	db "I'm g!{la}d !{to} !{have} !{com}p!{an}y !{to}",!Scroll
	db "talk !{to}.!{2_}I !{wi}ll tell !{you} !{an}",!Scroll
	db "!{in}t!{er}e!{st}!{ing_}!{st}!{or}y.",!WaitKey,!Scroll
	db "!{The}!{re} !{is} a !{la}ke s!{wi}mm!{ing_}w!{it}h",!Scroll
	db "Z!{or}as !{at_}!{the} !{so}urce !{of} !{the}",!Scroll
	db "riv!{er}, but !{it} !{is} !{ha}rd !{to} f!{in}d.",!WaitKey,!Scroll
	db "!{The} t!{re}asu!{re_}!{of} Z!{or}a !{can_}turn",!Scroll
	db "peo!{ple} !{in}!{to} f!{is}h.!{2_}Heh heh heh.",!Scroll
	db "I'd !{lo}ve !{to} !{se}e !{tha}t.",!End
;----------------------------------------
.message_387:
	db "I !{ha}v!{en}'t !{ha}d a ch!{an}ce !{to}",!Line2
	db "!{tr}im my hedges !{re}c!{ent}ly.",!Line3
	db "!{Tha}nks !{for} v!{is}!{it}!{ing_}!{an}y!{wa}y!{Dots}",!WaitKey,!Scroll
	db "A w!{hi}le a!{go}, !{the}!{re} !{wa}s a !{bo}y !{in}",!Scroll
	db "!{thi}s vil!{la}ge !{wh}o could talk !{to}",!Scroll
	db "!{an}i!{ma}ls w!{it}h !{hi}s Ocar!{in}a.",!WaitKey,!Scroll
	db "He !{ha}d a pet bird th!{at_}flew",!Scroll
	db "w!{it}h !{hi}m !{ev}!{er}y!{wh}!{er}e, but",!Scroll
	db "he w!{ent} !{to} !{the} mount!{ain} !{and}",!WaitKey,!Scroll
	db "n!{ev}!{er_}!{re}turned.",!End
;----------------------------------------
.message_388:
	db !Position00,!Speed00
	db ">Start !{fro}m !{Name}!{s_}Hou!{se}",!Line2
	db "!{2_}Start !{fro}m S!{an}ctuary",!Choose2,!End
	; For some reason, this selection and the next one seem to be flipped in terms of the Control Code "Choose"
;----------------------------------------
.message_389:
	db !Position00,!Speed00
	db ">Start !{fro}m !{Name}!{s_}Hou!{se}",!Line2
	db "!{2_}Start !{fro}m !{the} S!{an}ctuary",!Line3
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
	db "!{The} object !{is} !{to} !{di}g as m!{an}y",!Line3
	db "holes as !{you} !{can_}!{in} 30 !{se}c!{on}ds.",!WaitKey,!Scroll
	db "Any t!{re}asu!{re}s !{you} uncov!{er_}",!Scroll
	db "!{wi}ll !{be} !{you}rs !{to} keep.",!Scroll
	db "It!{s_}!{on}!{ly_}80 R!{up}ees !{to} p!{la}y.",!WaitKey,!Scroll
	db "Wh!{at_}!{do} !{you} say?",!Scroll
	db "!{4_}> I !{wa}nt !{to} !{di}g",!Scroll
	db "!{4_}!{3_}I !{do}!{nt_}!{wa}nt !{to} !{di}g",!Choose,!End
;----------------------------------------
.message_392:
	db "!{The}n I !{wi}ll l!{en}d !{you} a !{sh}ovel.",!Line2
	db "Wh!{en_}!{you} !{have} !{it} !{in} !{you}r h!{and},",!Line3
	db "p!{re}ss Y !{to} !{st}art !{di}gg!{in}g!",!End
;----------------------------------------
.message_393:
	db "I !{se}e.!{2_}!{The}n I !{give_}!{up}.!{2_}Save",!Line2
	db "!{so}!{me} R!{up}ees !{and_}!{com}e !{ba}!{ck}.",!End
;----------------------------------------
.message_394:
	db "OK!!{2_}Ti!{me}!{s_}!{up}, ga!{me}!{s_} ov!{er}.",!Line2
	db "Co!{me} !{ba}!{ck} ag!{ain}.!{2_}Good bye!{Dots}",!End
;----------------------------------------
.message_395:
	db "Co!{me} !{ba}!{ck} ag!{ain}!",!Line2
	db "I !{wi}ll !{be} !{wa}!{it}!{ing_}!{for} !{you}.",!End
;----------------------------------------
.message_396:
	db "I c!{an}'t tell !{you} details,",!Line2
	db "but !{it}!{s_}!{not} a c!{on}v!{en}i!{ent}",!Line3
	db "ti!{me} !{for} !{me} now.",!WaitKey,!Scroll
	db "Co!{me} !{ba}!{ck} h!{er}e ag!{ain}.!{2_}S!{or}ry.",!End
;----------------------------------------
padbyte $FF : pad $0EF400
warnpc $0EF400	; 0x077400
