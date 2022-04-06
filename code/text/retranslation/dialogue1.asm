;****************************************************************
; 	Zelda 3 Redux - Retranslation Dialogue 1 data
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

;****************************************
;	Text pointers
;****************************************
; Text pointer for dialogue table 1
org $0ED3EE	; 0x0753EE
	lda.b #(dialogue_table1)>>16	; lda #$1C	; A9 1C
	skip 4			; STA $02, REP #$30
	lda #(dialogue_table1)	; lda #$8000	; A9 00 80

;****************************************
;	Dialogue
;****************************************
; Starting address for Dialogue Table 1, size $8000
org $1C8000	; 0x0E0000
dialogue_table1:
;----------------------------------------
.message_000:
	db !End
;----------------------------------------
.message_001:
	db !Speed00,!Line3
	db "!{4_}!{2_}",!Line2
	db "!{4_}>",!Choose,!End
;----------------------------------------
.message_002:
	db !Speed00,!Line2
	db "!{4_}!{2_}",!Line3
	db "!{4_}>",!Choose,!End
;----------------------------------------
.message_003:
	db !Speed00
	db "Save !{and_}C!{on}t!{in}ue",!Line2
	db "Save !{and_}Qu!{it}",!Line3
	db "D!{on}'t Save !{and_}C!{on}t!{in}ue",!End
;----------------------------------------
.message_004:
	db !Speed00
	db "0- !{Number00}. 1- !{Number01}",!Line2
	db "2- !{Number02}. 3- !{Number03}",!End
;----------------------------------------
.message_005:
	db "I c!{an}'t !{ent}!{er_}!{the}!{re} w!{hi}le !{be}!{in}g",!Line2
	db "fol!{lo}!{we}d.",!End
;----------------------------------------
.message_006:
	db !Speed00,!Line1
	db ">",!Line2
	db "!{2_}",!Line3
	db "!{2_}",!Choose2,!End
;----------------------------------------
.message_007:
	db !Speed00,!Line1
	db "!{2_}",!Line2
	db ">",!Line3
	db "!{2_}",!Choose2,!End
;----------------------------------------
.message_008:
	db !Speed00,!Line1
	db "!{2_}",!Line2
	db "!{2_}",!Line3
	db ">",!Choose2,!End
;----------------------------------------
.message_009:
	db !Speed00,!Line1
	db ">",!Line2
	db "!{2_}",!Choose3,!End
;----------------------------------------
.message_010:
	db !Speed00,!Line1
	db "!{2_}",!Line2
	db ">",!Choose3,!End
;----------------------------------------
.message_011:
	db !Speed00,!Line3
	db "!{4_}",!Line2
	db "!{2_}>",!SelChng,!End
;----------------------------------------
.message_012:
	db !Speed00,!Line2
	db "!{4_}",!Line3
	db "!{2_}>",!SelChng,!End
;----------------------------------------
.message_013:
	db "!{Name}, I'm !{go}!{ing_}!{out_}!{for} a",!Line2
	db "l!{it}tle w!{hi}le.",!Line3
	db "D!{on}'t w!{or}ry. I'll !{be} !{ba}!{ck} by",!Scroll
	db "m!{or}n!{in}g. Plea!{se} !{do}!{nt_}leave,"!Scroll
	db "!{the} hou!{se}.",!End
;----------------------------------------
.message_014:
	db "Ugh!{Dots} !{Name}, I !{di}d!{nt_}!{wa}nt !{to}",!Line2
	db "drag !{you} !{in}!{to} !{thi}s!{Dots} I !{to}ld !{you}",!Line3
	db "!{not} !{to} leave ho!{me}.",!WaitKey,!Scroll
	db "But !{ple}a!{se}!{Dots} !{You} !{mu}!{st} now take",!Scroll
	db "!{up} my sw!{or}d !{and_}!{sh}ield!{Dots}",!WaitKey,!Scroll
	db "If !{you} hold B !{to} ch!{an}nel !{pow}!{er}",!Scroll
	db "!{in}!{to} !{the} sw!{or}d, !{you} c!{an}",!Scroll
	db "unlea!{sh} a technique !{tha}t's",!WaitKey,!Scroll
	db "!{lo}ng !{be}!{en_}pass!{ed_}!{do}wn !{in} our",!Scroll
	db "family. Be su!{re_}!{to} !{ma}ke u!{se} !{of}",!Scroll
	db "!{it}, !{Name}!{Dots}",!WaitKey,!Scroll
	db "Now, !{go} !{re}scue Pr!{in}cess Zelda.",!Scroll
	db "!{You} a!{re}!{Dots} !{the} pr!{in}cess's!{Dots}",!Scroll
	db "!{on}ly!{Dots}",!End
;----------------------------------------
.message_015:
	db "Hey kid, !{wh}!{at_}!{are_}!{you} !{do}!{in}g",!Line2
	db "w!{and}!{er}!{ing_}ar!{ound} !{at_}!{thi}s ti!{me}?",!Line3
	db "On!{ly_}adults !{sh}ould !{be} !{out_}!{thi}s",!WaitKey,!Scroll
	db "l!{at}e.",!End
;----------------------------------------
.message_016:
	db "If !{you}'!{re_}!{lo}!{st}, !{just} pu!{sh} X !{to}",!Line2
	db "!{che}!{ck} !{out_}!{you}r !{ma}p. Did !{you}",!Line3
	db "!{know} th!{at_}al!{re}ady, kid?",!End
;----------------------------------------
.message_017:
	db "M!{an}y objects !{can_}!{be} lift!{ed_}!{up}",!Line2
	db "by p!{re}ss!{ing_}A w!{hi}le fac!{in}g",!Line3
	db "!{the}m. Did !{you} !{know} !{tha}t",!WaitKey,!Scroll
	db "al!{re}ady, kid?",!End
;----------------------------------------
.message_018:
	db "Once !{you} !{get} !{you}r h!{and}s !{on} a",!Line2
	db "sw!{or}d, !{you} !{can_}u!{se} !{it} by",!Line3
	db "p!{re}ss!{ing_}B. D!{on}'t !{you} !{for}!{get}!",!End
;----------------------------------------
.message_019:
	db "!{The} g!{lo}w!{ing_}!{ma}rk !{on} !{you}r !{ma}p",!Line2
	db "!{is} !{you}r !{des}t!{in}!{at}i!{on}. Did !{you}",!Line3
	db "!{know} th!{at_}al!{re}ady, kid?",!End
;----------------------------------------
.message_020:
	db "P!{re}ss A !{in} !{fro}nt !{of} !{che}!{st}s !{to}",!Line2
	db "op!{en_}!{the}m !{up}. Did !{you} !{know}",!Line3
	db "th!{at_}al!{re}ady, kid?",!End
;----------------------------------------
.message_021:
	db "!{You} !{can_}l!{ear}n a !{lo}t !{fro}m us",!Line2
	db "!{so}l!{di}!{er}s. But !{you} al!{re}ady knew",!Line3
	db "!{tha}t, !{di}d!{nt_}!{you}?",!End
;----------------------------------------
.message_022:
	db "Fir!{st}, !{me}et w!{it}h !{the} eld!{er_}!{of}",!Line2
	db "!{the} vil!{la}ge, !{and_}!{the}n, obt!{ain}",!Line3
	db "!{the} M!{ast}!{er_}Sw!{or}d.",!End
;----------------------------------------
.message_023:
	db "Oh, Pr!{in}cess Zelda, !{you} a!{re}",!Line2
	db "safe! And !{you}, !{Name}, app!{ear}",!Line3
	db "!{to} !{be} !{the} !{on}e !{wh}o !{re}scued",!WaitKey,!Scroll
	db "h!{er}.",!End
;----------------------------------------
.message_024:
	db "!{Name}, I s!{en}!{se} th!{at_}!{so}!{me} k!{in}d",!Line2
	db "!{of} !{ev}il spir!{it} !{has} tak!{en}",!Line3
	db "pos!{se}ssi!{on} !{of} !{the} b!{is}hop.",!WaitKey,!Scroll
	db "F!{or} !{an}y hope !{of} defe!{at}!{ing_}!{hi}m,",!Scroll
	db "!{you} !{mu}!{st} !{se}ek !{out_}!{the}",!Scroll
	db "leg!{en}dary b!{la}de th!{at_}b!{an}!{is}hes",!WaitKey,!Scroll
	db "!{ev}il !{know}n as !{the} M!{ast}!{er}",!Scroll
	db "Sw!{or}d.",!WaitKey,!Scroll
	db "So!{me} say th!{at_}!{the} eld!{er_}!{of} !{the}",!Scroll
	db "n!{ear}by vil!{la}ge !{is} !{on}e !{of} !{the}",!Scroll
	db "!{des}c!{en}d!{an}ts !{of} !{the} S!{ev}!{en}",!WaitKey,!Scroll
	db "Sages. I'd !{get} !{st}art!{ed_}by",!Scroll
	db "pay!{ing_}!{hi}m a v!{is}!{it}, as he",!Scroll
	db "!{sh}ould !{have} m!{or}e !{to} tell !{you}.",!WaitKey,!Scroll
	db "Let!{s_}!{ma}rk !{hi}s hou!{se} !{on} !{you}r",!Scroll
	db "!{ma}p.",!Sound2D,!WaitKey,!Scroll
	db "Now, !{wh}!{en_}!{you} depart, !{you}",!Scroll
	db "!{mu}!{st} !{pro}ce!{ed_}w!{it}h g!{re}!{at}",!Scroll
	db "cauti!{on}. !{The} c!{ast}le guards !{wi}ll",!WaitKey,!Scroll
	db "!{be} !{out_}s!{ear}c!{hi}ng !{for} !{bo}th !{of}",!Scroll
	db "!{you}.",!WaitKey,!Scroll
	db "I'll !{be} keep!{ing_}Pr!{in}cess Zelda",!Scroll
	db "safe!{ly_}!{hi}dd!{en_}h!{er}e w!{it}h !{me}. Do",!Scroll
	db "!{not} !{be} !{an}xious.",!WaitKey,!Scroll
	db "Do !{you} und!{er}!{st}!{and}?",!Scroll
	db "!{4_}> Yes",!Scroll
	db "!{4_}!{4_}Not !{at_}all",!Choose,!End
;----------------------------------------
.message_025:
	db "If !{you} defe!{at_}!{the} b!{is}hop, !{the}",!Line2
	db "peo!{ple} !{in} !{the} c!{ast}le might",!Line3
	db "!{re}g!{ain} !{the}ir s!{an}!{it}y.",!WaitKey,!Scroll
	db "Go collect !{all_}th!{re}e p!{en}d!{an}ts!",!End
;----------------------------------------
.message_026:
	db "Oh, !{Name}! !{You} w!{er}e a !{se}c!{on}d",!Line2
	db "!{to}o l!{at}e. I!{Dots} I !{wa}s a co!{wa}rd!{Dots}",!Line3
	db "!{The}y abduct!{ed_}Zelda !{and_}!{to}ok",!WaitKey,!Scroll
	db "h!{er_}!{to} !{the} c!{ast}le!{Dots}",!WaitKey,!Scroll
	db "She!{s_}!{pro}!{ba}b!{ly_}!{be}!{ing_}held !{on}",!Scroll
	db "!{the} !{to}p f!{lo}!{or} !{of} !{the} c!{ast}le's",!Scroll
	db "!{to}w!{er}.",!WaitKey,!Scroll
	db "!{You} !{mu}!{st} f!{in}d Pr!{in}cess Zelda",!Scroll
	db "!{be}!{for}e !{the}y sacrifice h!{er}.",!Scroll
	db "P-!{ple}a!{se}!{Dots} s-save h!{er}!{Dots}",!End
;----------------------------------------
.message_028:
	db "!{Tha}nk !{you}, !{Name}. I !{ha}d a",!Line2
	db "feel!{ing_}!{you} w!{er}e n!{ear}.",!End
;----------------------------------------
.message_029:
	db "F!{at}h!{er}, I !{in}de!{ed_}!{have} !{Name}",!Line2
	db "!{to} !{tha}nk !{for} my f!{re}e!{do}m.",!WaitKey,!Line3
	db "Wh!{en_}I !{wa}s impr!{is}!{on}ed, !{the}",!Scroll
	db "b!{is}hop said, ""Once !{you} !{be}!{com}e",!Scroll
	db "!{the} f!{in}al sacrifice, !{the} !{se}al",!WaitKey,!Scroll
	db "!{of} !{the} S!{ev}!{en_}Sages !{wi}ll !{be}",!Scroll
	db "brok!{en_}!{at_}l!{ast}.""",!WaitKey,!Scroll
	db "!{Name}, !{you} !{mu}!{st} !{not} let !{the}",!Scroll
	db "k!{in}g!{do}m !{of} Hyrule f!{all_}!{in}!{to} !{hi}s",!Scroll
	db "clut!{che}s. If !{the} !{se}al !{is} brok!{en},",!WaitKey,!Scroll
	db "dem!{on}ic !{pow}!{er_}!{wi}ll su!{re}!{ly_}pour",!Scroll
	db "!{out_}!{in}!{to} !{thi}s l!{and}.",!WaitKey,!Scroll
	db "Plea!{se} defe!{at_}!{the} b!{is}hop",!Scroll
	db "!{be}!{for}e !{it}!{s_}!{to}o l!{at}e! Protect",!Scroll
	db "our k!{in}g!{do}m! I !{know} !{you} !{can_}!{do}",!WaitKey,!Scroll
	db "!{it}. I !{know} !{it}!{Dots}",!End
;----------------------------------------
.message_030:
	db "!{Name}, !{ple}a!{se} !{be} ca!{re}ful! I'll",!Line2
	db "!{be} h!{er}e, pray!{ing_}!{for} !{you}r",!Line3
	db "safety!",!End
;----------------------------------------
.message_031:
	db !Window02,!Speed03
	db "Help !{me}!{Dots}",!WaitKey,!Line2
	db "Plea!{se} help !{me}!{Dots}",!WaitKey,!Line3
	db "I'm !{be}!{ing_}held pr!{is}!{on}!{er_}!{in} !{the}",!Scroll
	db "c!{ast}le dunge!{on}. My na!{me} !{is}",!Scroll
	db "Zelda.",!WaitKey,!Scroll
	db "Six !{ma}id!{en}s !{have} al!{re}ady !{be}!{en}",!Scroll
	db "sacrificed, !{and_}I'm !{go}!{ing_}!{to} !{be}",!Scroll
	db "!{the} l!{ast}.",!WaitKey,!Scroll
	db "!{The} b!{is}hop !{wh}o !{re}c!{ent}ly",!Scroll
	db "!{sh}ow!{ed_}!{up} !{at_}!{the} c!{ast}le,",!Scroll
	db "Agahnim, !{be}li!{ev}es he c!{an}",!WaitKey,!Scroll
	db "b!{re}ak !{the} !{se}al !{of} !{the} S!{ev}!{en}",!Scroll
	db "Sages by !{do}!{ing_}!{thi}s.",!WaitKey,!Scroll
	db "I am h!{er}e !{in} !{the} dunge!{on} !{of} !{the}",!Scroll
	db "c!{ast}le.",!WaitKey,!Scroll
	db "Plea!{se} help !{me}!{Dots}",!End
;----------------------------------------
.message_032:
	db !Window02,!Speed03
	db "Help !{me}!{Dots}",!WaitKey,!Line2
	db "I'm !{be}!{ing_}held pr!{is}!{on}!{er_}!{in} !{the}",!Line3
	db "c!{ast}le dunge!{on}.",!WaitKey,!Scroll
	db "!{The}!{re} !{sh}ould !{be} a passage !{fro}m",!Scroll
	db "outside !{the} c!{ast}le lea!{di}ng",!Scroll
	db "!{di}!{re}ct!{ly_}!{in}!{to} !{the} courtyard.",!End
;----------------------------------------
.message_033:
	db "!{The}!{re}!{s_}a !{se}c!{re}t passage",!Line2
	db "lead!{ing_}!{fro}m !{the} thr!{on}e room",!Line3
	db "!{to} !{the} C!{ha}pel.",!WaitKey,!Scroll
	db "!{The} prie!{st} !{the}!{re} !{wi}ll c!{er}t!{ain}ly",!Scroll
	db "help us.",!End
;----------------------------------------
.message_034:
	db "!{Thi}s !{di}sp!{la}y !{sh}ould !{be}",!Line2
	db "movea!{ble}. Do !{you} !{have} a",!Line3
	db "L!{an}t!{er}n? It!{s_}p!{it}ch b!{la}!{ck}",!WaitKey,!Scroll
	db "!{in}side, !{and_}!{you} c!{an}'t !{se}e",!Scroll
	db "w!{it}h!{out_}!{on}e.",!WaitKey,!Scroll
	db "If !{you}'!{re_}!{re}ady, let!{s_}!{get} !{to}",!Scroll
	db "!{it}! Help !{me} pu!{sh} !{it} !{fro}m !{the}",!Scroll
	db "left!",!End
;----------------------------------------
.message_035:
	db "Try pull!{ing_}!{thi}s l!{ev}!{er}. Hold A",!Line2
	db "!{to} grab !{it}, th!{en_}pull by",!Line3
	db "p!{re}ss!{ing_}!{do}wn !{on} !{the} D-pad.",!End
;----------------------------------------
.message_036:
	db "All right, let!{s_}!{get} !{out_}!{of} h!{er}e",!Line2
	db "!{be}!{for}e !{the} b!{is}hop !{not}ices. I",!Line3
	db "!{ha}pp!{en_}!{to} !{know} !{an} escape",!WaitKey,!Scroll
	db "route.",!WaitKey,!Scroll
	db "We !{sh}ould head !{to} !{the} m!{ain} !{ha}ll",!Scroll
	db "!{on} !{the} fir!{st} f!{lo}!{or}. Let!{s_}!{go}!",!End
;----------------------------------------
.message_037:
	db "!{Name}, l!{is}t!{en_}ca!{re}fully. !{The}",!Line2
	db "c!{ast}le guards !{are_}und!{er_}!{the}",!Line3
	db "spell !{of} Agahnim!{s_}dark !{ma}gic. I",!WaitKey,!Scroll
	db "f!{ear} !{the} w!{or}!{st} !{for} my f!{at}h!{er}.",!WaitKey,!Scroll
	db "And !{the} b!{is}hop, I suspect he",!Scroll
	db "!{is}!{nt_}!{ev}!{en_}hum!{an}. I !{thin}k he's",!Scroll
	db "!{so}!{me} k!{in}d !{of} d!{ev}il, !{and_}!{on}e",!WaitKey,!Scroll
	db "w!{it}h t!{er}rify!{ing_}!{pow}!{er}s.",!WaitKey,!Scroll
	db "Do !{you} und!{er}!{st}!{and}?",!Scroll
	db "!{4_}> Yes",!Scroll
	db "!{4_}!{4_}Not !{at_}all",!Choose,!End
;----------------------------------------
.message_038:
	db "!{You} !{sh}ould fol!{lo}w !{the} !{ma}rk!{in}gs",!Line2
	db "!{the} eld!{er_}!{ma}de !{on} !{you}r !{ma}p",!Line3
	db "!{wh}!{en_}!{you} exp!{lo}!{re}.",!WaitKey,!Scroll
	db "If !{you} !{do}!{nt_}!{know} !{wh}!{at_}!{to} !{do}",!Scroll
	db "next, !{you} !{can_}al!{so} v!{is}!{it} a",!Scroll
	db "!{for}tune tell!{er}.",!End
;----------------------------------------
.message_039:
	db "!{Name}, !{you} !{are_}w!{on}d!{er}ful! As",!Line2
	db "I thought, !{the} !{pow}!{er_}!{of} !{the}",!Line3
	db "H!{er}o !{re}!{st}s w!{it}!{hi}n !{you}!",!WaitKey,!Scroll
	db "Now, !{all_}!{tha}t!{s_}left !{is} !{to} obt!{ain}",!Scroll
	db "!{the} M!{ast}!{er_}Sw!{or}d. !{You} !{wi}ll",!Scroll
	db "defe!{at_}!{the} b!{is}hop!",!End
;----------------------------------------
.message_040:
	db !Window02,!Speed03
	db "!{Name}! Help! !{The} c!{ast}le",!Line2
	db "guards !{are_}!{com}!{ing_}!{in}!{to} !{the}",!Line3
	db "C!{ha}pel! AIEEEEE!",!End
;----------------------------------------
.message_041:
	db "Aft!{er_}pass!{ing_}through !{the}!{se}",!Line2
	db "!{se}w!{er}s, !{we}'ll !{be} v!{er}y c!{lo}!{se} !{to}",!Line3
	db "!{the} C!{ha}pel.",!WaitKey,!Scroll
	db "Let!{s_}!{be} ca!{re}ful.",!End
;----------------------------------------
.message_042:
	db "Bey!{on}d th!{at_}!{do}!{or} !{is} !{the} C!{ha}pel.",!Line2
	db "Go pull !{the} sw!{it}ch ov!{er_}!{the}!{re}.",!End
;----------------------------------------
.message_043:
	db "Oh, !{it}!{s_}!{you}, !{Name}. Wh!{at_}c!{an}",!Line2
	db "!{an} old wom!{an} like !{me} !{do} !{for}",!Line3
	db "!{you}?",!WaitKey,!Scroll
	db "!{The} eld!{er}? I !{se}e!{Dots} He!{s_}!{be}!{en}",!Scroll
	db "a!{wa}y !{for} a !{lo}ng ti!{me}, !{ev}!{er}",!Scroll
	db "s!{in}ce th!{at_}b!{is}hop !{be}g!{an}",!WaitKey,!Scroll
	db "sacrific!{ing_}girls.",!WaitKey,!Scroll
	db "Wh!{at}!{s_}!{thi}s a!{bo}ut !{the} M!{ast}!{er}",!Scroll
	db "Sw!{or}d? I !{do}!{nt_}!{re}!{me}m!{be}r !{the}",!Scroll
	db "details exactly, but!{Dots}",!End
;----------------------------------------
.message_044:
	db "L!{on}g a!{go}, a peo!{ple} !{know}n as",!Line2
	db "!{the} Hyli!{an}s !{pro}sp!{er}!{ed_}!{in} !{thi}s",!Line3
	db "l!{and}.",!WaitKey,!Scroll
	db "Leg!{en}ds tell !{of} t!{re}asu!{re}s !{the}y",!Scroll
	db "!{hi}d through!{out_}our k!{in}g!{do}m.",!WaitKey,!Scroll
	db "Am!{on}g !{the}m !{is} !{the} M!{ast}!{er}",!Scroll
	db "Sw!{or}d, a b!{la}de !{for}g!{ed_}!{to} f!{en}d",!Scroll
	db "ag!{ain}!{st} dem!{on}ic !{be}!{in}gs.",!WaitKey,!Scroll
	db "Th!{at_}b!{la}de !{is} said !{to} !{be}",!Scroll
	db "sleep!{ing_}deep !{in} !{the} !{for}e!{st},",!Scroll
	db "!{ev}!{en_}!{to} !{thi}s day!{Dots}",!WaitKey,!Scroll
	db "Do !{you} und!{er}!{st}!{and}?",!Scroll
	db "!{4_}> Yes",!Scroll
	db "!{4_}!{4_}Not !{at_}all",!Choose,!End
;----------------------------------------
.message_045:
	db "In !{an}y ca!{se}, !{you} !{sh}ould !{se}ek",!Line2
	db "!{out_}!{the} eld!{er}. !{The}!{re} !{mu}!{st} !{be}",!Line3
	db "!{so}!{me}!{on}e !{in} !{the} vil!{la}ge !{wh}o",!WaitKey,!Scroll
	db "!{know}s !{hi}s !{wh}!{er}ea!{bo}uts.",!WaitKey,!Scroll
	db "Well, I s!{up}po!{se} !{it}!{s_}ti!{me} !{for}",!Scroll
	db "!{you} !{to} !{be} !{on} !{you}r !{wa}y. And",!Scroll
	db "!{Name}, !{ple}a!{se} !{be} ca!{re}ful!{Dots}",!End
;----------------------------------------
.message_046:
	db "Oh, !{Name}! Wh!{at_}a f!{in}e !{you}ng",!Line2
	db "m!{an} !{you}'ve !{be}!{com}e. Plea!{se}",!Line3
	db "save us vil!{la}g!{er}s.",!End
;----------------------------------------
.message_047:
	db "Hey! H!{er}e !{is} !{Name}, !{the}",!Line2
	db "!{wa}nt!{ed_}m!{an}! Sol!{di}!{er}s! Any!{on}e!",!Line3
	db "Co!{me} qui!{ck}ly!",!End
;----------------------------------------
.message_048:
	db "Hmmm!{Dots} At l!{ast}, !{you} !{have}",!Line2
	db "collect!{ed_}!{the} th!{re}e p!{en}d!{an}ts!",!Line3
	db "It!{s_}ti!{me} !{to} head !{to} !{the} Lo!{st}",!WaitKey,!Scroll
	db "Woods.",!WaitKey,!Scroll
	db "If !{you} !{tr}u!{ly_}pos!{se}ss !{the}",!Scroll
	db "courage, !{the} sw!{or}d !{it}!{se}lf s!{ha}ll",!Scroll
	db "choo!{se} !{you}!{Dots}",!End
;----------------------------------------
.message_049:
	db "I am !{to}o old !{to} fight. My hope",!Line2
	db "!{re}!{st}s !{ent}i!{re}!{ly_}w!{it}h !{you}!{Dots}",!End
;----------------------------------------
.message_050:
	db "I am !{in}de!{ed_}Sa!{has}rah!{la}, vil!{la}ge",!Line2
	db "eld!{er_}!{and_}!{des}c!{en}d!{an}t !{of} !{the}",!Line3
	db "S!{ev}!{en_}Sages.",!WaitKey,!Scroll
	db "!{Dots}Truly? !{Name}, I'm surpr!{is}ed",!Scroll
	db "th!{at_}a !{you}ng m!{an} like !{you} !{is}",!Scroll
	db "s!{ear}c!{hi}ng !{for} !{the} sw!{or}d !{of}",!WaitKey,!Scroll
	db "!{ev}il!{s_}b!{an}e.",!WaitKey,!Scroll
	db "Not !{just} !{an}y!{on}e !{can_}!{wi}eld !{thi}s",!Scroll
	db "b!{la}de. We !{have} a leg!{en}d say!{in}g",!Scroll
	db "th!{at_}!{on}!{ly_}a H!{er}o !{wh}o defe!{at}s",!WaitKey,!Scroll
	db "th!{re}e g!{re}!{at_}m!{on}!{st}!{er}s !{and}",!Scroll
	db "obt!{ain}s th!{re}e p!{en}d!{an}ts c!{an}",!Scroll
	db "!{be}!{com}e !{it}s m!{ast}!{er}.",!WaitKey,!Scroll
	db "Will !{you} accept !{thi}s c!{ha}ll!{en}ge?",!Scroll
	db "!{4_}> Yeah!",!Scroll
	db "!{4_}!{4_}Of Cour!{se}!",!Choose,!End
;----------------------------------------
.message_051:
	db "Good. !{You} !{sh}ould fir!{st} obt!{ain}",!Line2
	db "!{the} P!{en}d!{an}t !{of} Courage !{fro}m",!Line3
	db "!{the} n!{ear}by tem!{ple}.",!WaitKey,!Scroll
	db "If !{you} succeed, I'll !{have} a tale",!Scroll
	db "!{to} pass !{on} !{to} !{you}. Now, head",!Scroll
	db "!{for} !{the} tem!{ple}.",!End
;----------------------------------------
.message_052:
	db "!{The}!{re} !{ma}y !{be} oth!{er_}!{des}c!{en}d!{an}ts",!Line2
	db "!{of} !{the} S!{ev}!{en_}Sages !{hi}d!{ing_}!{fro}m",!Line3
	db "!{the} c!{ast}le !{so}l!{di}!{er}s. Seek !{the}m",!WaitKey,!Scroll
	db "out.",!End
;----------------------------------------
.message_053:
	db !Window02,!Speed03
	db "!{Name}, !{it} !{is} I, Sa!{has}rah!{la}. !{The}",!Line2
	db "w!{or}ld !{wh}!{er}e !{you} !{st}!{and_}!{wa}s",!Line3
	db "!{on}ce call!{ed_}!{the} Sacr!{ed_}Realm.",!WaitKey,!Scroll
	db "But !{be}cau!{se} dem!{on}s now run",!Scroll
	db "ramp!{an}t !{the}!{re}, !{we} !{re}f!{er_}!{to} !{it}",!Scroll
	db "as !{the} Dark W!{or}ld.",!WaitKey,!Scroll
	db "Wh!{en_}!{the} b!{is}hop broke !{the}",!Scroll
	db "sages' !{se}al, he op!{en}!{ed_}a",!Scroll
	db "passage !{at_}!{the} !{en}!{tr}!{an}ce !{of}",!WaitKey,!Scroll
	db "!{the} c!{ast}le th!{at_}c!{on}nects !{the}",!Scroll
	db "L!{ight_}!{and_}Dark W!{or}lds.",!WaitKey,!Scroll
	db "To save our w!{or}ld, !{you} !{mu}!{st}",!Scroll
	db "take pos!{se}ssi!{on} !{of} !{the}",!Scroll
	db "Gold!{en_}Pow!{er}!",!WaitKey,!Scroll
	db "Beg!{in} by !{re}scu!{ing_}!{the} s!{ev}!{en}",!Scroll
	db "!{ma}id!{en}s !{des}c!{en}d!{ing_}!{fro}m !{the}",!Scroll
	db "S!{ev}!{en_}Sages. !{The}ir !{pow}!{er_}!{wi}ll",!WaitKey,!Scroll
	db "su!{re}!{ly_}aid !{you}.",!WaitKey,!Scroll
	db "!{The} !{ma}id!{en}s !{are_}c!{on}f!{in}!{ed_}!{in} !{the}",!Scroll
	db "!{la}irs !{of} m!{on}!{st}!{er}s. Go fir!{st} !{to}",!Scroll
	db "!{the} S!{ha}!{do}w Tem!{ple}.",!WaitKey,!Scroll
	db "!{Name}, !{you} !{are_}our !{on}!{ly_}hope.",!Scroll
	db "Plea!{se} fulfill !{wh}!{at_}I ask, !{and}",!Scroll
	db "!{know} th!{at_}!{we} !{are_}!{all_}count!{in}g",!WaitKey,!Scroll
	db "!{on} !{you}!",!End
;----------------------------------------
.message_054:
	db !Window02,!Speed03
	db "How!{ev}!{er}, !{you} wo!{nt_}ac!{com}pl!{is}h",!Line2
	db "!{mu}ch !{in} th!{at_}!{for}m.",!WaitKey,!Line3
	db "Seek !{the} Mo!{on} P!{ear}l !{in} !{the}",!Scroll
	db "!{to}w!{er_}!{on} Hebra Mount!{ain}. It",!Scroll
	db "!{pro}tects ag!{ain}!{st} !{the} Dark",!WaitKey,!Scroll
	db "W!{or}ld!{s_}!{ma}gic !{so} !{you} c!{an}",!Scroll
	db "!{re}t!{ain} !{you}r h!{er}oic !{for}m.",!End
;----------------------------------------
.message_055:
	db "A helpful !{it}em !{is} !{hi}dd!{en_}!{in} a",!Line2
	db "cave!{2_}e!{ast} !{of} Lake Hylia. Go",!Line3
	db "!{get} !{it}!",!End
;----------------------------------------
.message_056:
	db "Oh? So !{you}'ve obt!{ain}!{ed_}!{the}",!Line2
	db "P!{en}d!{an}t !{of} Courage! I !{sh}!{all_}now",!Line3
	db "!{re}!{la}y !{the} tale I spoke !{of}.",!WaitKey,!Scroll
	db "L!{on}g a!{go}, !{the}!{re} !{wa}s a cl!{an} !{of}",!Scroll
	db "!{wa}rri!{or}s !{wh}o !{pro}tect!{ed_}!{the}",!Scroll
	db "Hyli!{an} royal family. !{Thi}s cl!{an},",!WaitKey,!Scroll
	db "!{know}n as !{the} Knights K!{in}sm!{en},",!Scroll
	db "w!{er}e al!{so} guar!{di}!{an}s !{of} !{the}",!Scroll
	db "P!{en}d!{an}t !{of} Courage.",!WaitKey,!Scroll
	db "At !{the} ti!{me} !{wh}!{en_}!{the} !{se}al !{of}",!Scroll
	db "!{the} S!{ev}!{en_}Sages !{wa}s c!{re}!{at}ed,",!Scroll
	db "mo!{st} !{of} !{the}m sad!{ly_}p!{er}!{is}h!{ed_}!{in}",!WaitKey,!Scroll
	db "!{the} fi!{er}ce b!{at}tles ag!{ain}!{st} !{the}",!Scroll
	db "dem!{on}s.",!WaitKey,!Scroll
	db "But !{the}y say th!{at_}a H!{er}o !{wi}ll",!Scroll
	db "app!{ear} !{fro}m !{the} !{des}c!{en}d!{an}ts",!Scroll
	db "!{of} !{the} Knights K!{in}sm!{en}.",!WaitKey,!Scroll
	db "!{Dots}I !{se}e. !{You} !{mu}!{st} c!{er}t!{ain}!{ly_}!{be}",!Scroll
	db "th!{at_}H!{er}o.",!WaitKey,!Scroll
	db "Go !{and_}obt!{ain} !{the} !{re}m!{ain}!{in}g",!Scroll
	db "p!{en}d!{an}ts. And al!{so}, take !{thi}s",!Scroll
	db "w!{it}h !{you}. !{Thi}s t!{re}asu!{re_}!{has}",!WaitKey,!Scroll
	db "!{be}!{en_}h!{and}!{ed_}!{do}wn !{in} my family",!Scroll
	db "!{for} g!{en}!{er}!{at}i!{on}s.",!End
;----------------------------------------
.message_057:
	db "I am !{in}de!{ed_}Sa!{has}rah!{la}, vil!{la}ge",!Line2
	db "eld!{er_}!{and_}!{des}c!{en}d!{an}t !{of} !{the}",!Line3
	db "S!{ev}!{en_}Sages.",!WaitKey,!Scroll
	db "!{Dots}Truly? !{Name}, I'm",!Scroll
	db "surpr!{is}!{ed_}th!{at_}a !{you}ng m!{an} like",!Scroll
	db "!{you} !{is} s!{ear}c!{hi}ng !{for} !{the} sw!{or}d",!WaitKey,!Scroll
	db "!{of} !{ev}il!{s_}b!{an}e.",!WaitKey,!Scroll
	db "Not !{just} !{an}y!{on}e !{can_}!{wi}eld !{thi}s",!Scroll
	db "b!{la}de. We !{have} a leg!{en}d say!{in}g",!Scroll
	db "th!{at_}!{on}!{ly_}a H!{er}o !{wh}o defe!{at}s",!WaitKey,!Scroll
	db "th!{re}e g!{re}!{at_}m!{on}!{st}!{er}s !{and}",!Scroll
	db "obt!{ain}s th!{re}e p!{en}d!{an}ts c!{an}",!Scroll
	db "!{be}!{com}e !{it}s m!{ast}!{er}.",!WaitKey,!Scroll
	db "Ah, I !{se}e th!{at_}!{you} !{have} al!{re}ady",!Scroll
	db "acquir!{ed_}!{the} P!{en}d!{an}t !{of}",!Scroll
	db "Courage. Well !{the}n, let !{me} tell",!WaitKey,!Scroll
	db "!{you} a l!{it}tle !{st}!{or}y.",!WaitKey,!Scroll
	db "L!{on}g a!{go}, !{the}!{re} !{wa}s a cl!{an} !{of}",!Scroll
	db "!{wa}rri!{or}s !{wh}o !{pro}tect!{ed_}!{the}",!Scroll
	db "Hyli!{an} royal family. !{Thi}s cl!{an},",!WaitKey,!Scroll
	db "!{know}n as !{the} Knights K!{in}sm!{en},",!Scroll
	db "w!{er}e al!{so} guar!{di}!{an}s !{of} !{the}",!Scroll
	db "P!{en}d!{an}t !{of} Courage.",!WaitKey,!Scroll
	db "At !{the} ti!{me} !{wh}!{en_}!{the} !{se}al !{of}",!Scroll
	db "!{the} S!{ev}!{en_}Sages !{wa}s c!{re}!{at}ed,",!Scroll
	db "mo!{st} !{of} !{the}m sad!{ly_}p!{er}!{is}hed",!WaitKey,!Scroll
	db "!{in} !{the} fi!{er}ce b!{at}tles ag!{ain}!{st}",!Scroll
	db "!{the} dem!{on}s.",!WaitKey,!Scroll
	db "But !{the}y say th!{at_}a H!{er}o !{wi}ll",!Scroll
	db "app!{ear} !{fro}m !{the} !{des}c!{en}d!{an}ts",!Scroll
	db "!{of} !{the} Knights K!{in}sm!{en}.",!WaitKey,!Scroll
	db "!{Dots}I !{se}e. !{You} !{mu}!{st} c!{er}t!{ain}ly",!Scroll
	db "!{be} th!{at_}H!{er}o.",!WaitKey,!Scroll
	db "Go !{and_}obt!{ain} !{the} !{re}m!{ain}!{in}g",!Scroll
	db "p!{en}d!{an}ts. And al!{so}, take !{thi}s",!Scroll
	db "w!{it}h !{you}. !{Thi}s t!{re}asu!{re_}!{has}",!WaitKey,!Scroll
	db "!{be}!{en_}h!{and}!{ed_}!{do}wn !{in} my family",!Scroll
	db "!{for} g!{en}!{er}!{at}i!{on}s.",!End
;----------------------------------------
.message_058:
	db "100 r!{up}ees !{to} !{an}y!{on}e !{wh}o",!Line2
	db "!{lo}c!{at}es a girl !{des}c!{en}d!{ing_}!{fro}m",!Line3
	db "!{the} S!{ev}!{en_}Sages. - !{The} K!{in}g",!End
;----------------------------------------
.message_059:
	db "!{3_}!{LinkL}!{LinkR}!{2_}WANTED!",!Line2
	db "!{Thi}s !{is} !{Name}, !{the} crim!{in}al",!Line3
	db "!{wh}o kidnapp!{ed_}Pr!{in}cess Zelda.",!WaitKey,!Scroll
	db "C!{all_}a !{so}l!{di}!{er_}if !{you} !{se}e !{hi}m!",!End
;----------------------------------------
.message_060:
	db "DANGER!",!Line2
	db "Unauth!{or}iz!{ed_}!{tr}avel !{to} Hebra",!Line3
	db "Mount!{ain} !{is} !{pro}!{hi}b!{it}ed.",!End
;----------------------------------------
.message_061:
	db "!{Thi}s !{wa}y !{Up}",!Line2
	db "!{4_}!{4_} Lo!{st} Woods",!End
;----------------------------------------
.message_062:
	db "DANGER!",!Line2
	db "Bew!{are_}!{of} deep w!{at}!{er_}!{and_}Z!{or}a!",!End
;----------------------------------------
.message_063:
	db "Wel!{com}e !{to} !{the} Poti!{on} Shop.",!Line2
	db "!{The} W!{at}!{er}f!{all_}!{of} W!{is}!{hi}ng !{is}",!Line3
	db "!{just} ahead.!",!End
;----------------------------------------
.message_064:
	db "!{Thi}s cave leads !{ba}!{ck} !{to}",!Line2
	db "Kakariko Vil!{la}ge.",!End
;----------------------------------------
.message_065:
	db "!{Thi}s !{wa}y !{Down}",!Line2
	db "!{4_}!{4_} Lake Hylia",!Line3
	db "!{4_}!{4_} Shop",!End
;----------------------------------------
.message_066:
	db "!{Thi}s !{wa}y !{Left}",!Line2
	db "!{4_}!{4_} Kakariko Vil!{la}ge",!End
;----------------------------------------
.message_067:
	db "!{Thi}s !{wa}y !{Left}",!Line2
	db "!{4_}!{4_} Des!{er}t !{of} My!{st}!{er}y",!End
;----------------------------------------
.message_068:
	db "!{Thi}s !{wa}y !{Up} !{Right}",!Line2
	db "!{4_}!{4_} Poti!{on} Shop",!Line3
	db "!{4_}!{4_} W!{at}!{er}f!{all_}!{of} W!{is}!{hi}ng",!End
;----------------------------------------
.message_069:
	db "!{Thi}s !{wa}y !{Right} E!{ast}!{er}n Tem!{ple}",!Line3
	db "!{Thi}s !{wa}y !{Left} Hyrule C!{ast}le",!End
;----------------------------------------
.message_070:
	db "Lake Hylia",!End
;----------------------------------------
.message_071:
	db "D!{on}'t !{bo}th!{er_}talk!{ing_}!{to} !{me}. I'm",!Line2
	db "!{just} !{an} ecc!{en}!{tr}ic middle-aged",!Line3
	db "m!{an}.",!WaitKey,!Scroll
	db "PS - Plea!{se} !{do}!{nt_}!{st}eal !{thi}s",!Scroll
	db "sign.",!End
;----------------------------------------
.message_072:
	db "Hou!{se} !{of} Lum!{be}rja!{ck}s",!Line2
	db "Bun !{and_}Y!{an}",!End
;----------------------------------------
.message_073:
	db "!{Thi}s !{wa}y !{Down}",!Line2
	db "!{4_}!{3_}Kakariko Vil!{la}ge",!End
;----------------------------------------
.message_074:
	db "Bubbl!{ing_}!{go}o!{Dots} Bubbl!{ing_}!{go}o!{Dots}",!Line2
	db "B!{re}w!{ing_}!{up} !{mu}!{sh}room poti!{on}s",!Line3
	db "!{for} !{you}!{Dots}",!End
;----------------------------------------
.message_075:
	db "Hehehe!{Dots} !{Tha}nk !{you}, !{you}ng m!{an}.",!Line2
	db "Co!{me} !{ba}!{ck} l!{at}!{er_}!{and_}!{se}e my",!Line3
	db "ass!{is}t!{an}t !{for} a !{to}k!{en_}!{of} my",!WaitKey,!Scroll
	db "!{tha}nks!{Dots} Hehehe!",!End
;----------------------------------------
.message_076:
	db "Ah, !{the} s!{we}et s!{me}ll !{of} rott!{en}",!Line2
	db "fru!{it}! If !{you} !{give_}!{me} !{tha}t",!Line3
	db "!{mu}!{sh}room, I !{can_}f!{in}!{is}h my b!{re}w.",!WaitKey,!Scroll
	db "Hehehe!",!End
;----------------------------------------
.message_077:
	db "If !{you} !{wa}nt !{to} buy !{the} poti!{on},",!Line2
	db "!{you}'ll ne!{ed_}a !{bo}ttle fir!{st}.",!Line3
	db "Hehehe!",!WaitKey,!Scroll
	db "H!{er}e, !{tr}y a sip !{of} !{the} Red",!Scroll
	db "Poti!{on}, f!{re}e !{of} c!{ha}rge. Hehehe!",!End
;----------------------------------------
.message_078:
	db "R!{ed_}!{re}!{st}!{or}es !{you}r health.",!Line2
	db "G!{re}!{en_}!{re}!{st}!{or}es !{you}r !{ma}gic",!Line3
	db "!{pow}!{er}. Blue !{re}!{st}!{or}es !{bo}th",!WaitKey,!Scroll
	db "health !{and_}!{ma}gic.",!WaitKey,!Scroll
	db "H!{er}e, !{tr}y a sip !{of} !{the} Red",!Scroll
	db "Poti!{on}, f!{re}e !{of} c!{ha}rge. Hehehe!",!End
;----------------------------------------
.message_079:
	db "W!{it}h!{out_}a !{bo}ttle, !{you} wo!{nt_}!{be}",!Line2
	db "buy!{ing_}!{an}y poti!{on}s. Hehehe!",!End
;----------------------------------------
.message_080:
	db "!{You} c!{an}'t buy a poti!{on} if !{you}r",!Line2
	db "!{bo}ttles !{are_}full. Hehehe!",!End
;----------------------------------------
.message_081:
	db "!{You} !{go}t a L!{an}t!{er}n!",!Line2
	db "Now !{you} !{can_}light t!{or}!{che}s",!Line3
	db "by p!{re}ss!{ing_}Y!.",!End
;----------------------------------------
.message_082:
	db "It!{s_}a Boom!{er}!{an}g!",!Line2
	db "!{You} !{can_}equip !{it} w!{it}h",!Line3
	db "Start !{and_}!{give_}!{it} a !{tr}y!",!End
;----------------------------------------
.message_083:
	db "!{You} f!{ound} a Bow!",!Line2
	db "Now !{you} !{can_}!{sh}oot arrows!",!WaitKey,!Line3
	db "Or !{at_}le!{ast} until !{you} run out.",!End
;----------------------------------------
.message_084:
	db "!{You} !{bo}rrow!{ed_}a Shovel!",!Line2
	db "Ti!{me} !{to} f!{in}d a !{go}od",!Line3
	db "p!{la}ce !{to} !{di}g holes.",!WaitKey,!Scroll
	db " Let!{s_}!{get} !{di}gg!{in}g!",!End
;----------------------------------------
.message_085:
	db "Hey, !{it}!{s_}!{the} Magic Cape!",!Line2
	db "!{You} c!{an} v!{an}!{is}h !{in}!{to}",!Line3
	db "!{thin} air w!{it}h !{thi}s!",!WaitKey,!Scroll
	db "But !{you} !{go}tta w!{at}ch !{you}r",!Scroll
	db "!{ma}gic !{me}t!{er}!",!End
;----------------------------------------
.message_086:
	db "!{Thi}s !{is} Magic Powd!{er}!",!Line2
	db "Try spr!{in}kl!{ing_}!{it} !{on} !{en}emies",!Line3
	db "!{and_}various oth!{er_}!{thin}gs!",!End
;----------------------------------------
.message_087:
	db "!{You} !{bo}ught Z!{or}a!{s_}Flipp!{er}s!",!Line2
	db "!{You} !{can_}s!{wi}m easi!{ly_}",!Line3
	db "through deep w!{at}!{er_}now!",!End
;----------------------------------------
.message_088:
	db "!{You} !{go}t !{the} Pow!{er_}G!{lo}ves!",!Line2
	db "S!{tr}!{en}gth !{is} s!{we}ll!{ing_}!{in} !{bo}th !{of}",!Line3
	db "!{you}r arms.",!WaitKey,!Scroll
	db "Lift!{ing_}!{up} !{st}!{on}es !{wi}ll !{be} a",!Scroll
	db "b!{re}eze now!",!End
;----------------------------------------
.message_089:
	db "!{You}{go}t !{the} P!{en}d!{an}t !{of} Courage!",!Line2
	db "Let!{s_}!{sh}ow !{it} !{to} !{the} eld!{er}",!Line3
	db "Sa!{has}rah!{la}.",!WaitKey,!Scroll
	db "Two m!{or}e p!{en}d!{an}ts !{re}m!{ain}!",!End
;----------------------------------------
.message_090:
	db "!{You} !{go}t !{the} P!{en}d!{an}t !{of} W!{is}!{do}m!",!Line2
	db "And !{you} sudd!{en}!{ly_}feel a b!{it}",!Line3
	db "!{st}r!{on}g!{er}!",!WaitKey,!Scroll
	db "Ti!{me} !{to} !{go} !{for} !{the} f!{in}al",!Scroll
	db "p!{en}d!{an}t.",!End
;----------------------------------------
.message_091:
	db "!{You} !{go}t !{the} P!{en}d!{an}t !{of} Pow!{er}!",!WaitKey,!Line2
	db "W!{it}h !{all_}th!{re}e p!{en}d!{an}ts, !{it}'s",!Scroll
	db "ti!{me} !{to} head !{to} !{the} !{for}e!{st} !{and}",!Scroll
	db "!{re}!{tr}i!{ev}e !{the} M!{ast}!{er_}Sw!{or}d!",!End
;----------------------------------------
.message_092:
	db "!{Thi}s Mu!{sh}room s!{me}lls like",!Line2
	db "s!{we}et, rott!{en_}fru!{it}.",!WaitKey,!Line3
	db "!{You} !{can_}!{give_}!{it} !{to} !{so}!{me}!{on}e by",!Scroll
	db "p!{re}ss!{ing_}Y.",!End
;----------------------------------------
.message_093:
	db "!{Thi}s !{is} !{the} To!{me} !{of} Mu!{do}ra!",!Line2
	db "!{You} !{can_}u!{se} !{it} !{to} deciph!{er_}",!Line3
	db "!{the} !{an}ci!{ent} Hyli!{an} l!{an}guage!",!End
;----------------------------------------
.message_094:
	db "!{You} f!{ound} !{the} Mo!{on} P!{ear}l!",!Line2
	db "It !{wi}ll !{pro}tect !{you}r !{bo}dy !{fro}m",!Line3
	db "!{the} tw!{is}t!{ed_}effects !{of} !{the}",!WaitKey,!Scroll
	db "Gold!{en} Pow!{er}.",!End
;----------------------------------------
.message_095:
	db "!{You} f!{ound} !{the} Compass!",!Line2
	db "Now, !{you} c!{an} p!{in}po!{in}t !{the}",!Line3
	db "!{bo}ss m!{on}!{st}!{er}'s !{lo}c!{at}i!{on}!",!End
;----------------------------------------
.message_096:
	db "!{You} !{go}t a !{ma}p!",!Line2
	db "!{You} !{can_}p!{re}ss X !{to} !{se}e",!Line3
	db "!{the} dunge!{on} !{la}y!{out_}!{and_}",!WaitKey,!Scroll
	db "!{you}r !{lo}c!{at}i!{on}!",!End
;----------------------------------------
.message_097:
	db "!{You} f!{ound} !{the} Ice Rod!",!Line2
	db "It s!{en}ds a s!{ha}rp c!{hi}ll",!Line3
	db "cleav!{ing_}through !{the} air.",!WaitKey,!Scroll
	db "But !{you} !{go}tta w!{at}ch !{you}r",!Scroll
	db "!{ma}gic !{me}t!{er}!",!End
;----------------------------------------
.message_098:
	db "!{You} f!{ound} !{the} Fi!{re_}Rod!",!Line2
	db "It s!{en}ds crims!{on} f!{la}!{me}s",!Line3
	db "!{sh}oot!{in}g through !{the} air.",!WaitKey,!Scroll
	db "But !{you} !{go}tta w!{at}ch !{you}r",!Scroll
	db "!{ma}gic !{me}t!{er}!",!End
;----------------------------------------
.message_099:
	db "!{Thi}s !{is} !{the} Eth!{er_}Medalli!{on}!",!Line2
	db "Its !{ma}gic summ!{on}s icy w!{in}ds",!Line3
	db "!{fro}m !{the} !{up}p!{er_}!{at}mosph!{er}e.",!WaitKey,!Scroll
	db "!{Thi}s !{wi}ll !{re}al!{ly_}dr!{ain} !{you}r",!Scroll
	db "!{ma}gic !{me}t!{er}!",!End
;----------------------------------------
.message_100:
	db "!{Thi}s !{is} !{the} Bom!{bo}s Medalli!{on}!",!Line2
	db "Its !{ma}gic !{ma}kes !{the} gr!{ound}",!Line3
	db "!{er}!{up}t !{in} fi!{er}y exp!{lo}si!{on}s.",!WaitKey,!Scroll
	db "!{Thi}s !{wi}ll !{re}al!{ly_}dr!{ain} !{you}r",!Scroll
	db "!{ma}gic !{me}t!{er}!",!End
;----------------------------------------
.message_101:
	db "!{Thi}s !{is} !{the} Quake Medalli!{on}!",!Line2
	db "Its !{ma}gic cau!{se}s viol!{ent} t!{re}m!{or}s",!Line3
	db "!{and_}!{st}uns n!{ear}by !{en}emies.",!WaitKey,!Scroll
	db "!{Thi}s !{wi}ll !{re}al!{ly_}dr!{ain} !{you}r",!Scroll
	db "!{ma}gic !{me}t!{er}!",!End
;----------------------------------------
.message_102:
	db "!{You} !{go}t !{the} Magic Hamm!{er}!",!Line2
	db "Let's !{go} p!{ound} !{so}!{me} !{st}akes !{in}!{to}",!Line3
	db "!{the} gr!{ound}.",!WaitKey,!Scroll
	db "He!{ck}, !{you} !{can_}p!{ound} !{ev}!{er}y!{thin}g!",!Scroll
	db "Bam !{ba}m ti!{me}!",!End
;----------------------------------------
.message_103:
	db "Oh, h!{er}e!{s_}!{the} Ocar!{in}a!",!Line2
	db "Its !{mu}sic su!{re}!{ly_}!{has}",!Line3
	db "my!{st}!{er}ious !{pow}!{er}!",!End
;----------------------------------------
.message_104:
	db "!{You} f!{ound} !{the} C!{an}e !{of} So!{ma}ria!",!Line2
	db "Wh!{at_}a my!{st}!{er}ious !{st}aff!{Dots}",!WaitKey,!Line3
	db "!{Thi}s !{sh}ould !{be} a big help !{wh}!{en}",!Scroll
	db "!{you} l!{ear}n how !{to} u!{se} !{it}!",!End
;----------------------------------------
.message_105:
	db "BOING! !{Thi}s !{is} !{the} Hook!{sh}ot!",!Line2
	db "It ext!{en}ds, !{it} c!{on}!{tr}acts, !{and}!{Dots}",!Line3
	db "BOING! ",!WaitKey,!Scroll
	db "I'll grap!{ple} !{all_}k!{in}ds !{of} !{thin}gs!",!End
;----------------------------------------
.message_106:
	db "!{You} f!{ound} !{so}!{me} Bombs!",!Line2
	db "Aft!{er_}p!{la}c!{ing_}a Bomb,",!Line3
	db "!{you} !{can_}pi!{ck} !{it} !{up}",!WaitKey,!Scroll
	db "w!{it}h A !{to} throw !{it}!",!End
;----------------------------------------
.message_107:
	db "!{You}'ve !{go}t a Bottle!",!Line2
	db "!{You} !{can_}!{st}!{or}e m!{an}y !{di}ff!{er}!{ent}",!Line2
	db "!{thin}gs !{in}side !{and_}u!{se}",!Line3
	db "!{the}m l!{at}!{er}!!",!End
;----------------------------------------
.message_108:
	db "!{You} f!{ound} !{the} Big Key!",!Line2
	db "Now !{you} !{can_}un!{lo}!{ck} !{do}!{or}s",!Line3
	db "!{and_}!{che}!{st}s !{tha}t !{do}!{nt_}op!{en_}",!WaitKey,!Scroll
	db "w!{it}h n!{or}!{ma}l keys!",!End
;----------------------------------------
.message_109:
	db "!{You} !{go}t !{the} T!{it}!{an}!{s_}M!{it}ts!",!Line2
	db "!{You} !{can_}now lift !{the} dark,",!Line3
	db "heavy !{st}!{on}es th!{at_}w!{er}e",!WaitKey,!Scroll
	db "impossi!{ble} !{to} budge!",!End
;----------------------------------------
.message_110:
	db "!{You} !{re}ceiv!{ed_}!{the} Magic Mirr!{or}!",!Line2
	db "It!{s_}blue, cl!{ear} !{and_}!{be}autiful!{Dots}",!WaitKey,!Line3
	db "Gaz!{ing_}!{in}!{to} !{it}, !{you} feel like",!Scroll
	db "!{you}'!{re_}!{be}!{ing_}s!{wa}l!{lo}w!{ed_}!{up}",!Scroll
	db "!{in}!{to} !{an}oth!{er_}w!{or}ld!{Dots}",!End
;----------------------------------------
.message_111:
	db "!{Thi}s !{is} !{it}! !{The} M!{ast}!{er_}Sw!{or}d!",!WaitKey,!Line2
	db "!{Dots}No, guess !{it}!{s_}!{not}. Too !{ba}d.",!End
;----------------------------------------
.message_112:
	db !Window02,!Speed03
	db "!{The} eld!{er_}Sa!{has}rah!{la}!{s_}voice",!Line2
	db "echoes through!{out_}!{the} a!{re}a!{Dots}",!WaitKey,!Line3
	db "!{Name}, !{you} !{have} !{do}ne !{we}ll !{in}",!Scroll
	db "obt!{ain}!{ing_}!{the} M!{ast}!{er_}Sw!{or}d,",!Scroll
	db "!{the} b!{la}de th!{at_}!{re}pels !{ev}il.",!WaitKey,!Scroll
	db "!{The} sw!{or}d!{s_}ra!{di}!{an}t !{pow}!{er_}!{is}",!Scroll
	db "now !{you}rs. W!{it}h !{it}, !{you}'ll",!Scroll
	db "su!{re}!{ly_}ov!{er}!{com}e !{the} b!{is}hop's",!WaitKey,!Scroll
	db "!{ev}il !{ma}gic.",!WaitKey,!Scroll
	db "!{The} f!{at}e !{of} !{thi}s k!{in}g!{do}m !{is} !{in}",!Scroll
	db "!{you}r h!{and}s, !{Name}. We !{are_}all",!Scroll
	db "count!{ing_}!{on} !{you}!{Dots}",!End
;----------------------------------------
.message_113:
	db "Hehe! Excell!{ent}.",!Line2
	db "!{Thi}s !{is} !{the} Red Poti!{on}.",!WaitKey,!Line3
	db "Dr!{in}k !{it} !{to} !{re}!{st}o!{re}",!Scroll
	db "!{you}r health.",!End
;----------------------------------------
.message_114:
	db "Hehe! Excell!{ent}.",!Line2
	db "!{Thi}s !{is} !{the} G!{re}!{en_}Poti!{on}.",!WaitKey,!Line3
	db "Dr!{in}k !{it} !{to} !{re}!{st}!{or}e",!Scroll
	db "!{you}r !{ma}gic !{pow}!{er}.",!End
;----------------------------------------
.message_115:
	db "Hehe! Excell!{ent}.",!Line2
	db "!{Thi}s !{is} !{the} Blue Poti!{on}.",!WaitKey,!Line3
	db "Dr!{in}k !{it} !{to} !{re}!{st}o!{re_}!{you}r",!Scroll
	db "health !{and_}!{ma}gic !{pow}!{er}.",!End
;----------------------------------------
.message_116:
	db "!{You} !{bo}rrow!{ed_}a Bug-C!{at}c!{hi}ng Net!",!Line2
	db "Hmm!{Dots} !{You} w!{on}d!{er_}if !{you} !{can_}c!{at}ch",!Line3
	db "oth!{er_}!{thin}gs !{be}si!{des} !{in}!{se}cts.",!End
;----------------------------------------
.message_117:
	db "!{You} f!{ound} !{the} Blue Tunic!",!Line2
	db "W!{ear}!{in}g !{thi}s dec!{re}a!{se}s !{the}",!Line3
	db "da!{ma}ge !{you} take! V!{er}y cool!",!End
;----------------------------------------
.message_118:
	db "!{You} f!{ound} !{the} R!{ed_}Tunic!",!Line2
	db "W!{ear}!{in}g !{thi}s dec!{re}a!{se}s !{the}",!Line3
	db "da!{ma}ge !{you} take !{ev}!{en_}m!{or}e !{tha}n",!WaitKey,!Scroll
	db "!{the} Blue Tunic!",!End
;----------------------------------------
.message_119:
	db "All right! !{You}r sw!{or}d !{just} !{go}t",!Line2
	db "!{st}r!{on}g!{er}! !{You} feel !{it}s !{pow}!{er}",!Line3
	db "f!{lo}w!{ing_}through !{you}r !{bo}dy!",!End
;----------------------------------------
.message_120:
	db "!{You} f!{ound} !{the} Mirr!{or} S!{hi}eld!",!Line2
	db "It !{can_}deflect !{be}ams !{you} couldn't",!Line3
	db "b!{lo}!{ck} w!{it}h !{you}r old !{sh}ield.",!End
;----------------------------------------
.message_121:
	db "!{You} !{go}t !{the} C!{an}e !{of} Byra!",!Line2
	db "If !{you} !{wa}ve !{it} !{on}ce through !{the} air,",!Line3
	db "a r!{ing_}!{of} l!{ight_}!{wi}ll !{pro}tect !{you}!",!End
;----------------------------------------
.message_122:
	db "Eh? It!{s_}!{lo}!{ck}ed.",!Line2
	db "If I !{ha}d !{the} Big Key, I m!{ight_}!{be}",!Line3
	db "a!{ble} !{to} op!{en_}!{it}!",!End
;----------------------------------------
.message_123:
	db "!{You} !{do}!{nt_}!{have} !{en}ough !{ma}gic",!Line2
	db "!{pow}!{er}. !{You} c!{an}'t u!{se} !{thi}s",!Line3
	db "r!{ight_}now.",!End
;----------------------------------------
.message_124:
	db "!{You} !{go}t !{the} Pegasus Boots!",!Line2
	db "If !{you} hold !{do}wn A, !{you} !{can_}ram",!Line3
	db "!{in}!{to} !{en}emies w!{it}h a da!{sh} !{at}ta!{ck}!",!End
;----------------------------------------
.message_125:
	db "Wh!{at}? !{Tha}t!{s_}a!{ma}z!{in}g! I",!Line2
	db "!{ha}v!{en}'t !{en}count!{er}!{ed_}a n!{or}!{ma}l",!Line3
	db "p!{er}s!{on} !{in} hund!{re}ds !{of} y!{ear}s.",!WaitKey,!Scroll
	db "Go!{sh}, I'd !{lo}ve !{to} talk !{for} a",!Scroll
	db "w!{hi}le. H!{er}e!{s_}a !{go}od !{st}!{or}y!{Dots}",!End
;----------------------------------------
.message_126:
	db "It!{s_}a!{bo}ut !{the} gar!{go}yle !{st}!{at}ue",!Line2
	db "!{in} !{thi}s vil!{la}ge. !{The}y say !{you}",!Line3
	db "!{can_}f!{ain}t!{ly_}h!{ear} a girl call!{in}g",!WaitKey,!Scroll
	db "!{out_}!{for} help !{fro}m !{be}!{lo}w.",!WaitKey,!Scroll
	db "S!{ound}s a b!{it} sketchy, if I say",!Scroll
	db "!{so} my!{se}lf!{Dots}",!End
;----------------------------------------
.message_127:
	db "!{The}y say !{the} Tri!{for}ce",!Line2
	db "!{tr}!{an}s!{for}m!{ed_}!{thi}s !{re}alm !{be}cau!{se}",!Line3
	db "!{of} G!{an}!{on}!{s_}w!{is}h.",!WaitKey,!Scroll
	db "Wh!{at_}!{wa}s !{hi}s w!{is}h, !{you} ask? To",!Scroll
	db "!{be}!{com}e k!{ing_}!{of} !{the} !{ent}i!{re}",!Scroll
	db "w!{or}ld.",!WaitKey,!Scroll
	db "I w!{on}d!{er_}if he'll succe!{ed_}!{on}ce",!Scroll
	db "he g!{at}h!{er}s !{en}ough !{en}!{er}gy !{fro}m",!Scroll
	db "!{the} Dark W!{or}ld!{Dots}",!End
;----------------------------------------
.message_128:
	db "I !{wa}s !{on}ce !{wa}lk!{ing_}through !{the}",!Line2
	db "Lo!{st} Woods !{in} !{the} L!{ight_}W!{or}ld,",!Line3
	db "!{and_}I !{st}um!{ble}d !{in}!{to} a !{ma}gic",!WaitKey,!Scroll
	db "p!{or}tal.",!WaitKey,!Scroll
	db "Be!{for}e I knew !{it}, I !{wa}s !{st}!{and}!{in}g",!Scroll
	db "!{in} Skull Woods !{in} !{the} Dark",!Scroll
	db "W!{or}ld. It !{se}ems like !{the} two",!WaitKey,!Scroll
	db "!{for}e!{st}s !{are_}c!{on}nected.",!End
;----------------------------------------
.message_129:
	db "I'm !{to}ld th!{at_}Bombs !{can_}easily",!Line2
	db "defe!{at_}!{the} !{on}e-ey!{ed_}gi!{an}ts",!Line3
	db "!{know}n as H!{in}ox. !{Tha}t!{s_}my",!WaitKey,!Scroll
	db "!{st}!{or}y!",!End
;----------------------------------------
.message_130:
	db "S!{or}ry !{to} !{ba}rk like !{thi}s, but",!Line2
	db "!{st}op !{ha}rass!{ing_}us t!{re}es!",!End
;----------------------------------------
.message_131:
	db "{You} !{go}t !{the} P!{en}d!{an}t !{of} Pow!{er}!",!WaitKey,!Line2
	db "W!{it}h !{all_}th!{re}e p!{en}d!{an}ts, !{it}'s",!Line3
	db "ti!{me} !{to} head !{to} !{the} !{for}e!{st} !{and}",!Scroll
	db "!{re}!{tr}i!{ev}e !{the} M!{ast}!{er_}Sw!{or}d!",!End
;----------------------------------------
.message_132:
	db "!{You} !{go}t !{the} P!{en}d!{an}t !{of} W!{is}!{do}m!",!Line2
	db "And !{you} sudd!{en}!{ly_}feel a b!{it} !{st}r!{on}g!{er}!",!WaitKey,!Line3
	db "Ti!{me} !{to} !{go} !{for} !{the} f!{in}al",!Scroll
	db "p!{en}d!{an}t.",!End
;----------------------------------------
.message_133:
	db "Well, let!{s_}!{get} !{to} !{it}! !{Thi}s !{is}",!Line2
	db "!{the} Shoot!{ing_}Gall!{er}y. F!{or} 20",!Line3
	db "r!{up}ees, I'll !{give_}!{you} 5 arrows.",!WaitKey,!Scroll
	db "C!{on}!{se}cutive !{hi}ts !{wi}ll sc!{or}e !{you}",!Scroll
	db "big pr!{of}!{it}s!",!WaitKey,!Scroll
	db "How a!{bo}ut !{it}, kid?",!Scroll
	db "!{4_}> Let!{s_}p!{la}y",!Scroll
	db "!{4_}!{4_}I'm leav!{in}g",!Choose,!End
;----------------------------------------
.message_134:
	db "All right, !{go} ahead",!Line2
	db "!{and_}take aim!",!End
;----------------------------------------
.message_135:
	db "Well, !{you} !{can_}turn ar!{ound} !{and}",!Line2
	db "!{wa}lk r!{ight_}!{out_}!{the} !{wa}y !{you}",!Line3
	db "ca!{me} !{in}. Have a nice day!",!WaitKey,!Scroll
	db "See ya!",!End
;----------------------------------------
.message_136:
	db "!{You} !{wa}nt !{to} keep !{go}!{in}g, eh?",!Line2
	db "!{4_}> I'll keep !{go}!{in}g",!Line3
	db "!{4_}!{3_}Bett!{er_}!{st}op",!Choose,!End
;----------------------------------------
.message_137:	; Pond text
	db "!{4_}!{2_}-Spr!{ing_}!{of} Happ!{in}ess-",!Line2
	db "Throw !{in} !{so}!{me} r!{up}ees !{and_}!{you}r",!Line3
	db "w!{is}hes !{wi}ll su!{re}!{ly_}!{com}e !{tr}ue.",!WaitKey,!Scroll
	db "Will !{you} throw !{in} r!{up}ees?",!Scroll
	db "!{4_}> Su!{re}",!Scroll
	db "!{4_}!{4_}I'd r!{at}h!{er_}!{not}",!Choose,!End
;----------------------------------------
.message_138:
	db "Select !{an} !{it}em w!{it}h !{the} D-pad,",!Line2
	db "th!{en_}p!{re}ss Y !{to} !{to}ss !{it} !{in}.",!Item,!End
;----------------------------------------
.message_139:
	db "Hel!{lo} !{the}!{re}. Did !{you} drop !{thi}s?",!Line2
	db "!{4_}> Yes",!Line3
	db "!{4_}!{3_}No, I !{di}dn't",!Choose,!End
;----------------------------------------
.message_140:
	db "I like h!{on}e!{st} peo!{ple}, !{so} I'll",!Line2
	db "!{give_}!{you} !{some}!{thin}g !{be}tt!{er}",!Line3
	db "!{in} !{re}turn.",!End
;----------------------------------------
.message_141:
	db "A!{re_}!{you} su!{re_}!{thi}s !{is} !{not} !{you}rs?",!Line2
	db "!{4_}> Really, !{it}!{s_}!{not}",!Line3
	db "!{4_}!{3_}It actual!{ly_}!{is}",!Choose,!End
;----------------------------------------
.message_142:
	db "!{You}'!{re_}a !{ba}ld-fac!{ed_}liar!",!Line2
	db "Take !{thi}s !{ba}!{ck} !{at_}!{on}ce!",!End
;----------------------------------------
.message_143:
	db "!{You} !{go}t !{the} Magic Boom!{er}!{an}g!",!Line2
	db "!{Thi}s !{on}e flies f!{ast}!{er_}!{and}",!Line3
	db "far!{the}r !{tha}n !{you}r old !{on}e.",!End
;----------------------------------------
.message_144:
	db "!{You}r !{sh}ield !{just} !{go}t bigg!{er}!",!Line2
	db "Fi!{re}!{ba}lls wo!{nt_}!{be} a !{pro}!{ble}m",!Line3
	db "!{an}ym!{or}e!",!End
;----------------------------------------
.message_145:
	db "!{The}!{se} !{are_}!{the} Silv!{er} Arrows!",!Line2
	db "!{You} !{can_}u!{se} !{the}m !{to}",!Line3
	db "f!{in}!{is}h !{of}f G!{an}!{on}!",!End
;----------------------------------------
.message_146:
	db "!{You}r !{bo}ttle !{go}t fill!{ed_}w!{it}h",!Line2
	db "!{the} G!{re}!{en_}Poti!{on}!",!Line3
	db "One he!{ck} !{of} a !{ba}rg!{ain}!",!End
;----------------------------------------
.message_147:
	db "!{You}r sw!{or}d !{go}t !{ev}!{en}",!Line2
	db "!{st}r!{on}g!{er_}!{tha}n !{be}!{for}e!",!Line3
	db "It feels !{wa}rm !{to} !{the} !{to}uch!{Dots}",!End
;----------------------------------------
.message_148:
	db "!{You}r !{ha}pp!{in}ess !{has} !{in}c!{re}a!{se}d",!Line2
	db "by !{Number03}!{Number02} r!{up}ees. Th!{at_}br!{in}gs !{you}r",!Line3
	db "!{to}tal !{to} !{Number01}!{Number00}.",!WaitKey,!Scroll
	db "!{You} feel a l!{it}tle !{ha}ppi!{er}",!Scroll
	db "!{tha}n !{be}!{for}e.",!End
;----------------------------------------
.message_149:
	db "I !{wi}ll gr!{an}t !{you} a w!{is}h.",!Line2
	db "!{2_}>I !{wa}nt !{to} carry m!{or}e Bombs",!Line3
	db "!{4_}I !{wa}nt !{to} carry m!{or}e Arrows",!SelChng,!End
;----------------------------------------
.message_150:
	db "!{The}n I'll !{in}c!{re}a!{se} !{you}r",!Line2
	db "capac!{it}y, al!{lo}w!{ing_}!{you} !{to} carry",!Line3
	db "a !{to}tal !{of} !{Number01}!{Number00} Bombs.",!WaitKey,!Scroll
	db "!{Thi}s sm!{all_}!{ble}ss!{ing_}!{is} !{the}",!Scroll
	db "le!{ast} I !{can_}!{do}.",!End
;----------------------------------------
.message_151:
	db "!{The}n I'll !{in}c!{re}a!{se} !{you}r",!Line2
	db "capac!{it}y, al!{lo}w!{ing_}!{you} !{to} carry",!Line3
	db "a !{to}tal !{of} !{Number01}!{Number00} Arrows.",!WaitKey,!Scroll
	db "!{Thi}s sm!{all_}!{ble}ss!{ing_}!{is} !{the}",!Scroll
	db "le!{ast} I !{can_}!{do}.",!End
;----------------------------------------
.message_152:
	db "!{You} !{are_}!{to}o !{st}r!{on}g !{for} !{me} !{to}",!Line2
	db "aid !{you} !{an}y fur!{the}r.",!WaitKey,!Line3
	db "But !{the}!{re}!{s_}a !{lo}ve!{ly_}!{la}dy !{and}",!Scroll
	db "d!{ear} fri!{en}d !{of} m!{in}e !{you} !{sh}ould",!Scroll
	db "!{me}et !{at_}!{the} W!{at}!{er}f!{all_}!{of}",!WaitKey,!Scroll
	db "W!{is}!{hi}ng.",!WaitKey,!Scroll
	db "H!{er}e!{s_}!{you}r r!{up}ees, !{and}",!Scroll
	db "my !{ble}ss!{ing_}as !{we}ll.",!End
;----------------------------------------
.message_153:
	db "Ah!{Dots} W!{at}ch !{you}r !{st}ep.",!Line2
	db "!{The}!{re} !{are_}holes !{in} !{the} gr!{ound}.",!Line3
	db "Could !{you} turn r!{ight_}h!{er}e?",!WaitKey,!Scroll
	db "By !{the} !{wa}y, !{do} !{you} !{ha}pp!{en_}!{to}",!Scroll
	db "!{be} s!{ear}c!{hi}ng !{for} !{the} Gold!{en}",!Scroll
	db "Pow!{er}? !{The} road ahead !{is} full",!WaitKey,!Scroll
	db "!{of} m!{on}!{st}!{er}s. M!{an}y brave m!{en}",!Scroll
	db "!{have} !{di}sapp!{ear}!{ed_}!{on} !{thi}s",!Scroll
	db "mount!{ain} !{up}!{on} !{the} sa!{me}",!WaitKey,!Scroll
	db "!{en}deav!{or}.",!WaitKey,!Scroll
	db "P!{er}!{ha}ps I say !{to}o !{mu}ch, but",!Scroll
	db "!{ple}a!{se} !{do}!{nt_}!{be} !{to}o zea!{lo}us !{for}",!Scroll
	db "!{thi}s !{ma}d que!{st}. ",!End
;----------------------------------------
.message_154:
	db "By !{the} !{wa}y, !{the}!{re}!{s_}a h!{ear}t",!Line2
	db "!{in}!{the} pot.",!End
;----------------------------------------
.message_155:
	db "Oh, turn r!{ight_}h!{er}e!{Dots}",!WaitKey,!Line2
	db "!{You} !{know}, I !{have} a",!Line3
	db "gr!{and}daught!{er_}ar!{ound} !{you}r",!Scroll
	db "age. She !{wa}s tak!{en_}a!{wa}y !{to}",!WaitKey,!Scroll
	db "!{the} c!{ast}le !{and_}!{has}!{nt_}!{be}!{en}",!Scroll
	db "h!{ear}d !{fro}m ag!{ain}.",!WaitKey,!Scroll
	db "All !{thi}s bus!{in}ess a!{bo}ut !{ma}id!{en}s",!Scroll
	db "!{be}!{ing_}sacrific!{ed_}!{mu}!{st} !{be} part",!Scroll
	db "!{of} !{the} b!{is}hop!{s_}p!{lo}t.",!WaitKey,!Scroll
	db "He!{s_}!{be}!{en_}kidnapp!{ing_}girls !{wh}o",!Scroll
	db "!{in}h!{er}!{it}!{ed_}!{the} !{pow}!{er_}!{of} !{the}",!Scroll
	db "S!{ev}!{en_}Sages, !{and_}he su!{re}!{ly_}!{has}",!WaitKey,!Scroll
	db "!{so}!{me} nefarious s!{che}!{me} !{in} m!{in}d.",!End
;----------------------------------------
.message_156:
	db "We !{ha}v!{en}'t !{me}t, but if !{you}'!{re}",!Line2
	db "!{go}!{ing_}!{up} !{the} mount!{ain}, !{wi}ll !{you}",!Line3
	db "take !{me} a!{lo}ng? I !{lo}!{st}",!WaitKey,!Scroll
	db "my l!{an}t!{er}n.",!End
;----------------------------------------
.message_157:
	db "!{The} !{ma}id!{en}s !{wh}o w!{er}e",!Line2
	db "sacrific!{ed_}!{ma}y !{st}ill !{be} alive",!Line3
	db "!{so}!{me}!{wh}!{er}e. I've !{go}t !{to} !{be}li!{ev}e",!WaitKey,!Scroll
	db "th!{at_}a H!{er}o !{wi}ll app!{ear}",!Scroll
	db "!{to} !{re}scue !{the}m.",!WaitKey,!Scroll
	db "Oh my. I've c!{er}t!{ain}!{ly_}ram!{ble}d",!Scroll
	db "!{on}, !{ha}v!{en}'t I? Any!{wa}y, !{tha}nk",!Scroll
	db "!{you} !{for} !{sh}ow!{ing_}such k!{in}dness",!WaitKey,!Scroll
	db "!{to} !{an} old m!{an}.",!WaitKey,!Scroll
	db "And take !{thi}s mirr!{or}. If !{you}",!Scroll
	db "!{ha}pp!{en_}!{to} w!{and}!{er_}!{in}!{to} a !{ma}gical",!Scroll
	db "p!{or}tal, !{ma}ke su!{re_}!{you} take a",!WaitKey,!Scroll
	db "gl!{an}ce !{at_}!{you}r !{re}flecti!{on}.",!End
;----------------------------------------
.message_158:
	db "!{The} b!{is}hop !{has} su!{re}!{ly_}deceived",!Line2
	db "our k!{in}g, !{and_}he !{is} us!{ing_}!{ev}il",!Line3
	db "!{ma}gic !{to} op!{en_}!{so}!{me} k!{in}d",!WaitKey,!Scroll
	db "!{of} passage.",!WaitKey,!Scroll
	db "!{You} !{mu}!{st} !{go} !{to} !{the} !{to}w!{er_}!{at}op",!Scroll
	db "!{thi}s mount!{ain} !{to} !{re}!{tr}i!{ev}e !{an}",!Scroll
	db "!{or}b call!{ed_}!{the} Mo!{on} P!{ear}l.",!WaitKey,!Scroll
	db "All I !{can_}!{do} !{for} !{you} !{is} !{so}o!{the}",!Scroll
	db "!{you}r w!{ear}!{in}ess!{Dots} Co!{me} !{ba}!{ck}",!Scroll
	db "!{an}y ti!{me}.",!End
;----------------------------------------
.message_159:
	db "!{The} Mo!{on} P!{ear}l !{is} !{an} artifact",!Line2
	db "!{des}t!{in}!{ed_}!{for} !{the} H!{er}o !{wh}o",!Line3
	db "v!{ent}u!{re}s !{to} !{the} Sacr!{ed_}Realm.",!WaitKey,!Scroll
	db "It !{wi}ll !{pro}tect !{hi}m !{fro}m !{the}",!Scroll
	db "!{ma}gical !{pow}!{er_}th!{at_}ch!{an}ges",!Scroll
	db "peo!{ple}s' !{for}ms.",!WaitKey,!Scroll
	db "Now th!{at_}I !{se}e !{you} !{have}",!Scroll
	db "obt!{ain}!{ed_}!{it}, !{you} !{mu}!{st} su!{re}!{ly_}!{be}",!Scroll
	db "!{the} H!{er}o I !{wa}s !{wa}!{it}!{ing_}!{for}.",!WaitKey,!Scroll
	db "Plea!{se}, !{go} !{and_}!{re}scue",!Scroll
	db "!{the} !{ma}id!{en}s!",!End
;----------------------------------------
.message_160:
	db "Is th!{at_}!{you}, !{Name}? It !{se}ems",!Line2
	db "!{the} b!{is}hop c!{on}nect!{ed_}!{the} two",!Line3
	db "w!{or}lds !{so}!{me}!{wh}!{er}e n!{ear}",!WaitKey,!Scroll
	db "!{the} c!{ast}le.",!WaitKey,!Scroll
	db "If !{you} !{are_}head!{ing_}!{to} !{the} Dark",!Scroll
	db "W!{or}ld, th!{at_}!{sh}ould !{be} !{you}r next",!Scroll
	db "!{des}t!{in}!{at}i!{on}.",!End
;----------------------------------------
.message_161:
	db "(!{mu}mbl!{ing_}sleepily) My s!{on}",!Line2
	db "!{lo}v!{ed_}p!{la}y!{ing_}!{the} ocar!{in}a, but",!Line3
	db "w!{ent} !{of}f s!{ear}c!{hi}ng !{for} !{the}",!WaitKey,!Scroll
	db "Gold!{en_}Pow!{er_}!{and_}n!{ev}!{er}",!Scroll
	db "!{re}turned!{Dots}",!WaitKey,!Scroll
	db "I w!{on}d!{er_}!{wh}!{er}e he !{is} !{and_}!{wh}!{at}",!Scroll
	db "he!{s_}!{up} !{to} now!{Dots}",!Scroll
	db "Zzzzz!{Dots} Zzzzz!{Dots}",!End
;----------------------------------------
.message_162:
	db "(!{mu}mbl!{ing_}sleepily) T-!{tha}t's",!Line2
	db "my s!{on}!{s_}ocar!{in}a! Th!{at_}!{me}!{an}s",!Line3
	db "!{you} !{me}t !{hi}m! Wh!{er}e !{is} he? Is he",!WaitKey,!Scroll
	db "!{all_}right?",!WaitKey,!Scroll
	db "!{Dots}I !{se}e. Ev!{en_}if !{you} wo!{nt_}tell",!Scroll
	db "!{me}, I !{se}e !{the} !{tr}uth wr!{it}t!{en_}all",!Scroll
	db "ov!{er_}!{you}r face.",!End
;----------------------------------------
.message_163:
	db "Why !{do}!{nt_}!{you} keep !{the}",!Line2
	db "ocar!{in}a?",!WaitKey,!Line3
	db "But I !{have} a !{re}que!{st}. P!{la}y !{it} !{in}",!Scroll
	db "!{fro}nt !{of} !{the} bird !{in} !{the} vil!{la}ge",!Scroll
	db "squa!{re}. It would !{ma}ke my s!{on}",!WaitKey,!Scroll
	db "v!{er}y !{ha}ppy!{Dots}",!WaitKey,!Scroll
	db "If !{on}!{ly_}I could !{se}e !{hi}m !{on}ce",!Scroll
	db "m!{or}e!{Dots}",!End
;----------------------------------------
.message_164:
	db "Zzzzz!{Dots} Zzzzz!{Dots} (sn!{or}!{ing_}!{lo}udly)",!End
;----------------------------------------
.message_165:
	db "Oh, !{Name}!{Dots} !{The} rum!{or}s say",!Line2
	db "!{you} kidnapp!{ed_}!{the} pr!{in}cess,",!Line3
	db "but I !{do}!{nt_}!{be}li!{ev}e !{the}m.",!End
;----------------------------------------
.message_166:
	db "I!{Dots} I !{give_}!{up}!",!WaitKey,!Line2
	db "W!{it}h legs like !{you}rs, !{it}!{s_}no",!Line3
	db "w!{on}d!{er_}!{you} m!{an}ag!{ed_}!{to} kidnap",!Scroll
	db "Pr!{in}cess Zelda.",!WaitKey,!Scroll
	db "But !{you} !{do}!{nt_}!{lo}ok like such a",!Scroll
	db "!{ba}d guy, !{you} !{know}.",!WaitKey,!Scroll
	db "If !{you}'!{re_}!{thi}s qui!{ck} !{on} !{you}r",!Scroll
	db "feet, !{you} !{sh}ould !{tr}y ramm!{in}g",!Scroll
	db "!{in}!{to} !{di}ff!{er}!{ent} !{thin}gs.",!WaitKey,!Scroll
	db "F!{or} !{in}!{st}!{an}ce, !{the} t!{re}es !{in} !{thi}s",!Scroll
	db "vil!{la}ge m!{ight_}!{have} !{so}!{me} u!{se}ful",!Scroll
	db "!{it}ems !{in} !{the}ir br!{an}!{che}s.",!WaitKey,!Scroll
	db "Ju!{st} !{give_}!{it} a !{tr}y, OK?",!End
;----------------------------------------
.message_167:
	db "Hey! If !{you} !{have} !{en}ough ti!{me}",!Line2
	db "!{to} !{re}ad !{thi}s sign, !{you} !{sh}ould",!Line3
	db "!{go} !{to} !{the} !{go}al im!{me}!{di}!{at}ely!",!End
;----------------------------------------
.message_168:
	db "I !{of}f!{er_}a Piece !{of} H!{ear}t !{to} !{on}e",!Line2
	db "w!{ear}!{ing_}a cape.",!End
;----------------------------------------
.message_169:
	db "C!{at}!{ast}rophe !{sh}!{all_}!{be}f!{all_}!{an}y",!Line2
	db "!{wh}o throw !{some}!{thin}g !{in}!{to} !{thi}s",!Line3
	db "p!{on}d!",!End
;----------------------------------------
.message_170:
	db "!{Thi}s !{wa}y !{Up} Skull Woods",!Line2
	db "!{Thi}s !{wa}y !{Down} Outc!{ast} Vil!{la}ge",!End
;----------------------------------------
.message_171:
	db !Line2
	db "!{Thi}s !{wa}y !{Right} Cave",!End
;----------------------------------------
.message_172:
	db !Line2
	db "!{Thi}s !{wa}y !{Right} S!{ha}!{do}w Tem!{ple}",!End
;----------------------------------------
.message_173:
	db !Line2
	db "!{Thi}s !{wa}y !{Left} Bomb Shop",!End
;----------------------------------------
.message_174:
	db "!{Left}!{2_}!{The} D!{ev}il!{s_}Bog",!Line2
	db "!{4_}!{4_} No En!{tr}!{an}ce",!Line3
	db "!{4_}!{4_} No Escape",!End
;----------------------------------------
.message_175:
	db "!{Thi}s !{is} !{the} Outc!{ast} Vil!{la}ge.",!Line2
	db "Peo!{ple} w!{it}h!{out_}r!{up}ees !{are_}!{not}",!Line3
	db "!{we}l!{com}e h!{er}e.",!End
;----------------------------------------
.message_176:
	db "!{The} W!{at}!{er}f!{all_}!{of} W!{is}!{hi}ng !{is} !{just}",!Line2
	db "ar!{ound} !{the} c!{or}n!{er}.",!End
;----------------------------------------
.message_177:
	db "!{Thi}s !{wa}y !{Right}!{Up}",!Line2
	db "Lake !{of} C!{at}!{ast}rophe",!End
;----------------------------------------
.message_178:
	db "Ev!{er}y!{on}e !{has} !{be}!{en_}act!{in}g",!Line2
	db "!{st}r!{an}ge!{ly_}s!{in}ce th!{at_}b!{is}hop",!Line3
	db "Agh!{an}im !{sh}ow!{ed_}!{up}.",!WaitKey,!Scroll
	db "I w!{on}d!{er_}if I'll !{ev}!{ent}ual!{ly_}!{get}",!Scroll
	db "affected!{Dots}",!End
;----------------------------------------
.message_179:
	db "Hey !{you}! !{You}'!{re_}!{not} al!{lo}w!{ed_}",!Line2
	db "!{in} !{the} c!{ast}le, kid.",!Line3
	db "Go !{get} !{so}!{me} sleep!",!End
;----------------------------------------
.message_180:
	db !Window02
	db "!{Name}, !{it} !{is} I, Sa!{has}rah!{la}.",!Line2
	db "Let !{me} !{give_}!{you} !{so}!{me} advice.",!WaitKey,!Line3
	db "!{The}!{re}!{s_}a t!{re}asu!{re_}!{in} !{thi}s",!Scroll
	db "tem!{ple} !{you} !{can_}u!{se} !{to} defe!{at}",!Scroll
	db "m!{on}!{st}!{er}s c!{la}d !{in} !{ev}!{en_}!{the}",!WaitKey,!Scroll
	db "!{st}r!{on}ge!{st} arm!{or}. Be su!{re_}!{to}",!WaitKey,!Scroll
	db "obt!{ain} !{it}!",!End
;----------------------------------------
.message_181:
	db !Window02
	db "!{Name}, !{it} !{is} I, Sa!{has}rah!{la}.",!Line2
	db "An !{or}b !{know}n as !{the} Mo!{on} P!{ear}l",!Line3
	db "!{is} h!{er}e !{in} !{thi}s !{to}w!{er}.",!WaitKey,!Scroll
	db "!{The} hold!{er_}!{of} !{thi}s !{or}b !{wi}ll",!Scroll
	db "!{re}t!{ain} !{the}ir !{or}ig!{in}al !{for}m !{in}",!Scroll
	db "!{thi}s w!{or}ld !{of} m!{on}!{st}!{er}s. !{You}",!WaitKey,!Scroll
	db "!{mu}!{st} obt!{ain} !{it} !{be}!{for}e",!Scroll
	db "depart!{in}g. Do !{not} !{for}!{get}!{Dots}",!End
;----------------------------------------
.message_182:
	db "!{2_}!{Snake1}!{Snake2}!{Waves1}!{Waves2}!{Waves1}!{Waves2}"
	db "!{3_}!{Snake1}!{Snake2}!{Waves1}!{Waves2}!{Waves1}!{Waves2}"
	db "!{3_}!{Ankh1}!{Ankh2}!{Waves1}!{Waves2}!{Waves1}!{Waves2}",!Line2

	db "!{4_}!{3_}!{Ankh1}!{Ankh2}"
	db "!{3_}!{Snake1}!{Snake2}!{Waves1}!{Waves2}!{Waves1}!{Waves2}!{Snake1}!{Snake2}"
	db "!{3_}!{Ankh1}!{Ankh2}",!Line3

	db "!{2_}!{Snake1}!{Snake2}!{Waves1}!{Waves2}!{Waves1}!{Waves2}"
	db "!{3_}!{Ankh1}!{Ankh2}!{Snake1}!{Snake2}!{Snake1}!{Snake2}!{Ankh1}!{Ankh2}"
	db "!{3_}!{Waves1}!{Waves2}!{Waves1}!{Waves2}!{Ankh1}!{Ankh2}",!End
;----------------------------------------
.message_183:
	db "!{The} H!{er}o!{s_}!{tr}iumph !{on}",!Line2
	db "C!{at}aclysm!{s_}Eve w!{in}s th!{re}e",!Line3
	db "sym!{bo}ls !{of} virtue.",!WaitKey,!Scroll
	db "!{The} M!{ast}!{er_}Sw!{or}d, he !{wi}ll !{the}n",!Scroll
	db "!{re}!{tr}i!{ev}e, keep!{ing_}!{the} knight's",!Scroll
	db "l!{in}e !{tr}ue.",!End
;----------------------------------------
.message_184:
	db !Window02
	db "!{Name}, l!{is}t!{en_}!{we}ll !{to} !{the}",!Line2
	db "w!{or}ds !{of} I, Sa!{has}rah!{la}. !{You}",!Line3
	db "!{mu}!{st} climb !{to} !{the} !{to}p !{of}",!WaitKey,!Scroll
	db "Spectacle Ro!{ck}.",!WaitKey,!Scroll
	db "And a l!{it}tle fur!{the}r, !{you} !{wi}ll",!Scroll
	db "!{re}ach !{the} Tow!{er_}!{of} H!{er}a !{on}",!Scroll
	db "!{the} summ!{it} !{of} Hebra Mount!{ain}.",!WaitKey,!Scroll
	db "Plea!{se} !{pro}ce!{ed_}ca!{re}fully.",!End
;----------------------------------------
.message_185:
	db !Window02
	db "!{Name}, l!{is}t!{en_}!{we}ll. Objects",!Line2
	db "th!{at_}ex!{is}t !{in} !{the} two w!{or}lds",!Line3
	db "!{se}em !{to} im!{it}!{at}e each oth!{er}.",!WaitKey,!Scroll
	db "If !{the} !{for}m !{of} !{an} object",!Scroll
	db "ch!{an}ges !{in} !{on}e w!{or}ld, !{it}s",!Scroll
	db "count!{er}part !{sh}ould al!{so}",!WaitKey,!Scroll
	db "ch!{an}ge. Plea!{se} keep !{thi}s !{in}",!Scroll
	db "m!{in}d.",!End
;----------------------------------------
.message_186:
	db !Window02
	db "!{Name}!{Dots} It!{s_}!{me}, Zelda!{Dots} D!{on}'t",!Line2
	db "!{be} m!{is}l!{ed_}by !{the} s!{or}c!{er}y !{of}",!Line3
	db "Bl!{in}d !{the} !{Thi}ef! Be ca!{re}ful!",!End
;----------------------------------------
.message_187:
	db !Window02
	db "{Name}, !{it} !{is} I, Sa!{has}rah!{la}.",!Line2
	db "!{You} !{mu}!{st} ign!{it}e four t!{or}!{che}s !{in}",!Line3
	db "!{or}d!{er_}!{to} op!{en_}!{the} !{wa}y !{for}!{wa}rd.",!End
;----------------------------------------
.message_188:
	db "!{4_}!{4_}!{2_}!{Snake1}!{Snake2}!{Snake1}!{Snake2}!{Ankh1}!{Ankh2}!{Waves1}!{Waves2}"
	db "!{3_}!{Snake1}!{Snake2}!{Waves1}!{Waves2}!{Waves1}!{Waves2}!{Snake1}!{Snake2}",!Line2
	db "!{4_}!{4_}!{4_}!{2_}!{Ankh1}!{Ankh2}"
	db "!{3_}!{Waves1}!{Waves2}!{Snake1}!{Snake2}!{Ankh1}!{Ankh2}!{Waves1}!{Waves2}",!Line3
	db "!{4_}!{4_}!{2_}!{Waves1}!{Waves2}!{Waves1}!{Waves2}!{Snake1}!{Snake2}!{Waves1}!{Waves2}"
	db "!{3_}!{Ankh1}!{Ankh2}!{Ankh1}!{Ankh2}!{Snake1}!{Snake2}!{Ankh1}!{Ankh2}",!End
;----------------------------------------
.message_189:
	db "Off!{er_}a pray!{er_}!{be}!{for}e !{thi}s",!Line2
	db "!{st}!{on}e ta!{ble}t. If !{you}r w!{is}h !{is}",!Line3
	db "h!{ear}d, !{the} !{wa}y !{sh}!{all_}op!{en}",!WaitKey,!Scroll
	db "!{be}!{for}e !{you}.",!End
;----------------------------------------
.message_190:
	db !Window02
	db "If !{you} m!{an}age !{to} !{st}un G!{an}!{on},",!Line2
	db "!{be} su!{re_}!{to} f!{in}!{is}h !{hi}m !{of}f w!{it}h",!Line3
	db "Silv!{er_}Arrows.",!WaitKey,!Scroll
	db "!{Name}, I !{know} !{you} s!{ha}ll",!Scroll
	db "pr!{ev}ail.",!End
;----------------------------------------
.message_191:
	db !Window02
	db "!{Name}, !{can_}!{you} h!{ear} my",!Line2
	db "voice? It!{s_}!{me}, Zelda. I am",!Line3
	db "impr!{is}!{on}!{ed_}!{in} Turtle Ro!{ck} !{on}",!WaitKey,!Scroll
	db "!{to}p !{of} De!{at}h Mount!{ain}.",!WaitKey,!Scroll
	db "I !{know} !{you}'ll !{com}e !{for} !{me}. I'll",!Scroll
	db "!{be} !{wa}!{it}!{in}g!{Dots}",!End
;----------------------------------------
.message_192:
	db !Window02
	db "!{Name}, !{it} !{is} I, Sa!{ha}rsah!{la}.",!Line2
	db "Be su!{re_}!{to} acqui!{re_}!{all_}!{the}",!Line3
	db "t!{re}asu!{re}s !{in} each m!{on}!{st}!{er}'s",!WaitKey,!Scroll
	db "!{la}ir.",!End
;----------------------------------------
.message_193:
	db !Window02
	db "L!{is}t!{en_}!{we}ll, !{Name}. Ev!{en_}w!{it}h",!Line2
	db "!{the} M!{ast}!{er_}Sw!{or}d, !{you} c!{an}!{not}",!Line3
	db "physical!{ly_}!{ha}rm !{the} b!{is}hop. !{You}",!WaitKey,!Scroll
	db "!{mu}!{st} f!{in}d a !{wa}y !{to} turn !{hi}s",!Scroll
	db "!{ma}gic ag!{ain}!{st} !{hi}m.",!End
;----------------------------------------
.message_194:
	db !Window02
	db "!{Name}, !{be} ca!{re}ful !{not} !{to} u!{se}",!Line2
	db "!{up} !{all_}!{you}r !{ma}gic !{pow}!{er}. Only",!Line3
	db "!{pro}ce!{ed_}!{in}!{to} !{the} dunge!{on}'s",!WaitKey,!Scroll
	db "depths if !{you} carry poti!{on}s",!Scroll
	db "th!{at_}!{re}!{st}!{or}e !{you}r !{ma}gic.",!Scroll
	db "Plea!{se} !{do}!{nt_}!{be} !{re}!{ck}less.",!End
;----------------------------------------
.message_195:
	db !Window02
	db "!{Name}, !{do} !{you} !{have} !{an}y",!Line2
	db "poti!{on}s th!{at_}!{re}!{st}!{or}e !{you}r",!Line3
	db "!{ma}gic !{pow}!{er}? If !{not}, !{you}",!WaitKey,!Scroll
	db "!{sh}ould!{nt_}v!{ent}u!{re_}!{an}y far!{the}r.",!End
;----------------------------------------
.message_196:
	db !Window02
	db "!{Name}, f!{la}!{me}s !{bo}th g!{re}!{at_}!{and}",!Line2
	db "sm!{all_}!{sh}!{all_}!{pro}tect !{you} !{in} !{thi}s",!Line3
	db "p!{la}ce.",!End
;----------------------------------------
.message_197:
	db !Window02
	db "!{Name}, !{you} c!{an}!{not} defe!{at_}!{the}",!Line2
	db "Skelet!{on} Sw!{or}dsm!{en_}w!{it}h b!{la}de",!Line3
	db "a!{lo}ne. Deliv!{er_}a f!{in}!{is}!{hi}ng ""b!{lo}w""",!WaitKey,!Scroll
	db "aft!{er_}!{the}y've col!{la}p!{se}d.",!End
;----------------------------------------
.message_198:
	db !Window02
	db "!{Name}, !{it} !{is} I, Sa!{has}rah!{la}",!Line2
	db "!{the} eld!{er}. I !{have} !{so}!{me} advice.",!WaitKey,!Line3
	db "!{You} !{can_}gaze !{in}!{to} !{the} Magic",!Scroll
	db "Mirr!{or} !{to} !{re}turn !{to} !{the}",!Scroll
	db "!{en}!{tr}!{an}ce !{of} !{an}y dunge!{on}. Do",!WaitKey,!Scroll
	db "!{not} !{for}!{get} !{it}!",!End
;----------------------------------------
.message_199:	; Chris Houlihan room
	db "My na!{me} !{is} Chr!{is} Houlih!{an}.",!WaitKey,!Line2
	db "You've !{di}scov!{er}!{ed_}my !{hi}dd!{en}",!Line3
	db "room. Keep !{thi}s a !{se}c!{re}t",!Scroll
	db "!{be}t!{we}!{en_}us.",!End
;----------------------------------------
.message_200:
	db "!{You} caught a !{be}e!",!WaitKey,!Line2
	db "Wh!{at_}!{sh}ould !{you} !{do}?",!Line3
	db "!{4_}> Put !{it} !{in} a !{bo}ttle",!Scroll
	db "!{4_}!{4_}Let!{s_}!{se}t !{it} f!{re}e",!Choose,!End
;----------------------------------------
.message_201:
	db "!{You} caught a fairy!",!WaitKey,!Line2
	db "Wh!{at_}!{sh}ould !{you} !{do}?",!Line3
	db "!{4_}> Put !{it} !{in} a !{bo}ttle",!Scroll
	db "!{4_}!{4_}Let!{s_}!{se}t !{it} f!{re}e",!Choose,!End
;----------------------------------------
.message_202:
	db "!{You} !{do}!{nt_}!{have} !{an}y empty",!Line2
	db "!{bo}ttles. Oh !{we}ll!{Dots} !{You} !{be}tt!{er} ",!Line3
	db "{se}t !{it} f!{re}e.",!End
;----------------------------------------
.message_203:
	db "!{You}r ti!{me} !{wa}s !{Number03}!{Number02} m!{in}utes !{and}",!Line2
	db "!{Number01}!{Number00} !{se}c!{on}ds.",!End
;----------------------------------------
.message_204:
	db "If !{you} !{can_}!{re}ach !{the} !{go}al",!Line2
	db "w!{it}!{hi}n 15 !{se}c!{on}ds, I'll !{give_}!{you}",!Line3
	db "!{some}!{thin}g !{go}od.",!WaitKey,!Scroll
	db "Ready, !{se}t!{Dots}!{Dots}!{2_}GO!",!End
;----------------------------------------
.message_205:
	db "!{You} succeeded!",!Line2
	db "C!{on}gr!{at}ul!{at}i!{on}s! I p!{re}s!{ent} !{you}",!Line3
	db "w!{it}h a Piece !{of} H!{ear}t!",!End
;----------------------------------------
.message_206:
	db "Looks like !{you} failed. Too !{ba}d!",!Line2
	db "Plea!{se} !{tr}y ag!{ain}!",!End
;----------------------------------------
.message_207:
	db "I !{do}!{nt_}!{have} !{an}y!{thin}g m!{or}e !{to}",!Line2
	db "!{give_}!{you}. I'm s!{or}ry!",!End
;----------------------------------------
.message_208:
	db "!{You} !{have} !{to} !{ent}!{er_}!{the} !{ma}ze",!Line2
	db "!{fro}m !{the} !{pro}p!{er_}!{en}!{tr}!{an}ce, !{or} I",!Line3
	db "c!{an}'t c!{lo}!{ck} !{you}r ti!{me}!{Dots}",!End
;----------------------------------------
.message_209:
	db "Hel!{lo}, sir! Do !{you} ne!{ed_}a !{bo}ttle",!Line2
	db "th!{at_}!{can_}hold !{an}y!{thin}g? I've",!Line3
	db "!{go}t !{on}e !{to} !{se}ll !{for} !{just} 100",!WaitKey,!Scroll
	db "r!{up}ees.",!WaitKey,!Scroll
	db "Wh!{at_}!{do} !{you} say?",!Scroll
	db "!{4_}> I'll buy !{it}",!Scroll
	db "!{4_}!{4_}D!{on}'t ne!{ed_}!{it}",!Choose,!End
;----------------------------------------
.message_210:
	db "!{Tha}nk !{you} !{for} !{you}r purc!{has}e.",!Line2
	db "Now, hold !{it} ov!{er_}!{you}r head",!Line3
	db "!{ent}husi!{ast}ically!",!End
;----------------------------------------
.message_211:
	db "Ah, !{tha}t!{s_}!{to}o !{ba}d. Co!{me} !{ba}!{ck}",!Line2
	db "!{wh}!{en_}!{you}'ve sav!{ed_}!{en}ough",!Line3
	db "r!{up}ees.",!End
;----------------------------------------
.message_212:
	db "S!{or}ry, I'm !{so}ld !{out_}!{of} !{bo}ttles.",!Line2
	db "Co!{me} !{ba}!{ck} !{an}oth!{er_}ti!{me}.",!End
;----------------------------------------
.message_213:
	db "Wow! Th!{at_}!{be}e !{is} ext!{re}!{me}ly",!Line2
	db "ra!{re}. I'll buy !{it} !{for} 100 r!{up}ees.",!Line3
	db "H!{er}e !{you} !{go}!",!End
;----------------------------------------
.message_214:
	db "Wow! E!{at}!{ing_}f!{is}h !{is} !{go}od !{for}",!Line2
	db "!{you}r health. I'll !{tr}ade !{you} all",!Line3
	db "!{thi}s !{st}uff !{for} !{it}!",!End
;----------------------------------------
.message_215:
	db "Yo !{Name}! !{You} !{se}em !{to} !{be} !{in}",!Line2
	db "a heap !{of} !{tr}ou!{ble}, but !{thi}s !{is}",!Line3
	db "!{all_}I !{can_}!{give_}!{you}.",!End
;----------------------------------------
.message_216:
	db "Ah, !{it}!{s_}!{you}! I'm !{so} g!{la}d !{to} !{se}e",!Line2
	db "!{you} ag!{ain}!",!WaitKey,!Line3
	db "So, !{wh}!{at_}!{do} !{you} need?",!Scroll
	db "!{4_}> Temp!{er_}my sw!{or}d",!Scroll
	db "!{4_}!{4_}Ju!{st} dropp!{ing_}by",!Choose,!End
;----------------------------------------
.message_217:
	db "I'll !{give_}!{you} a big !{di}scount!",!Line2
	db "!{4_}>H!{er}e!{s_}10 r!{up}ees",!Line3
	db "!{4_}!{2_}Wa!{it} a m!{in}ute",!Choose,!End
;----------------------------------------
.message_218:
	db "Su!{re_}!{you} !{wa}nt !{it} temp!{er}ed?",!Line2
	db "!{4_}> I'm su!{re}",!Line3
	db "!{4_}!{3_}Hold !{on}",!Choose,!End
;----------------------------------------
.message_219:
	db "We c!{an}'t !{ma}ke !{it} !{an}y !{st}r!{on}g!{er}.",!Line2
	db "S!{or}ry!",!End
;----------------------------------------
.message_220:
	db "Drop by !{an}yti!{me}. Now, !{ba}!{ck} !{to}",!Line2
	db "w!{or}k! Huff! Huff!",!End
;----------------------------------------
.message_221:
	db "R!{ight_}!{it} !{is}! We'll !{have} !{to} hold !{on}",!Line2
	db "!{to} !{you}r sw!{or}d !{for} a b!{it}.",!End
;----------------------------------------
.message_222:
	db "!{You}r sw!{or}d!{s_}nice !{and}",!Line2
	db "temp!{er}ed. Now hold !{it} !{up} !{to}",!Line3
	db "!{the} sky!",!End
;----------------------------------------
.message_223:
	db "If my !{lo}!{st} partn!{er_}!{re}turns, !{we}",!Line2
	db "!{can_}temp!{er_}!{you}r sw!{or}d. But",!Line3
	db "!{the}!{re}!{s_}!{not}!{hi}ng I !{can_}!{do} !{for}",!WaitKey,!Scroll
	db "!{you} now.",!End
;----------------------------------------
.message_224:
	db "Wow, !{lo}ok !{at_}!{tha}t! !{You} f!{ound}",!Line2
	db "my partn!{er}! Wh!{at_}a jo!{you}s",!Line3
	db "occasi!{on}!",!WaitKey,!Scroll
	db "Drop by ag!{ain} !{so}!{me}ti!{me}! We'll",!Scroll
	db "take !{you}r sw!{or}d !{and_}temp!{er_}!{it}",!Scroll
	db "p!{er}fectly!",!End
;----------------------------------------
.message_225:
	db "Ribb!{it}, ribb!{it}!{Dots} !{You}r !{for}m !{di}dn't",!Line2
	db "ch!{an}ge! !{You}'!{re_}no !{or}!{di}nary",!Line3
	db "guy, !{are_}!{you}?",!WaitKey,!Scroll
	db "I us!{ed_}!{to} live !{in} Kakariko",!Scroll
	db "Vil!{la}ge, !{and_}I w!{on}d!{er_}how my",!Scroll
	db "partn!{er_}!{is} !{do}!{ing_}!{the}!{re}",!WaitKey,!Scroll
	db "w!{it}hout!{me}.",!WaitKey,!Scroll
	db "C!{an} !{you} !{do} !{me} a fav!{or}? Plea!{se}",!Scroll
	db "take !{me} !{to} !{hi}m! I'm count!{ing_}!{on}",!Scroll
	db "!{you}!{Dots}",!End
;----------------------------------------
.message_226:
	db "I'm s!{or}ry, !{we}'!{re_}!{not} !{do}ne yet.",!Line2
	db "Plea!{se} !{com}e !{ba}!{ck} !{so}!{on}!",!End
;----------------------------------------
.message_227:
	db "(!{to}!{get}h!{er}) !{Tha}nk !{you}!",!End
;----------------------------------------
.message_228:
	db "W!{at}ch out! Am!{at}eurs !{sh}ouldn't",!Line2
	db "!{tr}y !{to} !{do} !{thi}s. !{You}'!{re_}!{just}",!Line3
	db "!{get}t!{ing_}!{in} !{the} !{wa}y!",!End
;----------------------------------------
.message_229:
	db "Aft!{er_}w!{and}!{er}!{ing_}!{in}!{to} !{thi}s",!Line2
	db "w!{or}ld, my !{for}m ch!{an}g!{ed_}!{to} !{wh}!{at}",!Line3
	db "!{you} !{se}e.",!WaitKey,!Scroll
	db "Ba!{ck} !{in} my w!{or}ld, I !{re}ally",!Scroll
	db "!{en}joy!{ed_}p!{la}y!{ing_}!{the} ocar!{in}a.",!WaitKey,!Scroll
	db "I !{have} f!{on}d !{me}m!{or}ies !{of} a",!Scroll
	db "!{for}e!{st} cl!{ear}!{ing_}!{wh}!{er}e !{an}i!{ma}ls",!Scroll
	db "would g!{at}h!{er_}ar!{ound} !{me}.",!WaitKey,!Scroll
	db "!{Tha}t!{s_}!{wh}!{er}e I buri!{ed_}my",!Scroll
	db "ocar!{in}a a!{lo}ng w!{it}h !{so}!{me} f!{lo}w!{er}",!Scroll
	db "!{se}eds.",!WaitKey,!Scroll
	db "Will !{you} !{tr}y !{to} f!{in}d !{it} !{for} !{me}?",!Scroll
	db "!{4_}> Yes",!Scroll
	db "!{4_}!{4_}No !{wa}y",!Choose,!End
;----------------------------------------
.message_230:
	db "!{The}n I !{wi}ll l!{en}d !{you} my !{sh}ovel.",!Line2
	db "I'm count!{ing_}!{on} !{you}!",!End
;----------------------------------------
.message_231:
	db "!{Dots}I !{se}e. Well, !{tha}t!{s_}f!{in}e.",!Line2
	db "Fa!{re}!{we}ll.",!End
;----------------------------------------
.message_232:
	db "Did !{you} f!{in}d my ocar!{in}a yet?",!Line2
	db "I hope !{you} f!{in}d !{it} !{so}!{on}.",!End
;----------------------------------------
.message_233:
	db "!{Tha}nk !{you}, !{Name}. !{Dots}But !{it}",!Line2
	db "!{lo}oks like I c!{an}'t p!{la}y my",!Line3
	db "ocar!{in}a !{an}ym!{or}e.",!WaitKey,!Scroll
	db "!{You} !{sh}ould take !{it}. And if !{you}",!Scroll
	db "v!{is}!{it} !{the} vil!{la}ge !{wh}!{er}e I lived,",!Scroll
	db "!{ple}a!{se} !{give_}!{it} !{to} a sleepy",!WaitKey,!Scroll
	db "old m!{an}.",!WaitKey,!Scroll
	db "!{Name}!{Dots} my s!{en}!{se}s !{are_}grow!{in}g",!Scroll
	db "!{di}m!{Dots} Plea!{se} let !{me} h!{ear} !{the}",!Scroll
	db "ocar!{in}a!{s_}!{mu}sic !{on}e l!{ast} ti!{me}!{Dots}",!End
;----------------------------------------
.message_234:
	db !Position01,!Speed03
	db "Jo-m!{on}!{Dots} jo-m!{on}!{Dots}",!WaitKey,!Line2
	db "Fir!{st}, f!{in}d !{the} eld!{er}",!Line3
	db "Sa!{has}rah!{la}.",!End
;----------------------------------------
.message_235:
	db !Position01,!Speed03
	db "Emi-s!{hi}!{Dots} emi-s!{hi}!{Dots}",!WaitKey,!Line2
	db "F!{in}d !{the} To!{me} !{of} Mu!{do}ra !{in} !{the}",!Line3
	db "vil!{la}ge !{and_}take !{it} !{to} !{the}",!Scroll
	db "!{des}!{er}t.",!End
;----------------------------------------
.message_236:
	db !Position01,!Speed03
	db "Emi-s!{hi}!{Dots} emi-s!{hi}!{Dots}",!WaitKey,!Line2
	db "A !{des}c!{en}d!{an}t !{of} !{the} S!{ev}!{en}",!Line3
	db "Sages !{is} liv!{ing_}!{in} !{the} !{des}!{er}t.",!End
;----------------------------------------
.message_237:
	db !Position01,!Speed03
	db "Jo-m!{on}!{Dots} jo-m!{on}!{Dots}",!WaitKey,!Line2
	db "F!{in}d a !{mu}!{sh}room !{in} !{the} !{for}e!{st}",!Line3
	db "!{and_}take !{it} !{to} !{the} Poti!{on} Shop.",!End
;----------------------------------------
.message_238:
	db !Position01,!Speed03
	db "Jo-m!{on}!{Dots} jo-m!{on}!{Dots}",!WaitKey,!Line2
	db "Fol!{lo}w !{the} riv!{er_}!{up}!{st}!{re}am !{to}",!Line3
	db "f!{in}d a !{la}ke full !{of} Z!{or}a.",!End
;----------------------------------------
.message_239:
	db !Position01,!Speed03
	db "Jo-m!{on}!{Dots} jo-m!{on}!{Dots},!WaitKey",!Line2
	db "S!{ear}ch !{for} !{the} Mo!{on} P!{ear}l !{in} a",!Line3
	db "mount!{ain} !{to}w!{er}.",!End
;----------------------------------------
.message_240:
	db !Position01,!Speed03
	db "Jo-m!{on}!{Dots} jo-m!{on}!{Dots}",!WaitKey,!Line2
	db "!{The} b!{is}hop!{s_}!{bo}dy c!{an}!{not} !{be}",!Line3
	db "!{ha}r!{me}d, !{ev}!{en_}by !{the}",!Scroll
	db "M!{ast}!{er} Sw!{or}d.",!End
;----------------------------------------
.message_241:
	db !Position01,!Speed03
	db "Emi-s!{hi}!{Dots} Emi-s!{hi}!{Dots}",!WaitKey,!Line2
	db "Why !{not} jump !{in}!{to} !{the} !{we}ll n!{ear}",!Line3
	db "!{the} sm!{it}hy?",!End
;----------------------------------------
.message_242:
	db !Position01
	db "I'm !{not} feel!{ing_}!{we}ll !{to}day.",!Line2
	db "Plea!{se} !{com}e !{an}oth!{er_}ti!{me}.",!End
;----------------------------------------
.message_243:
	db !Position01
	db "Ah, !{wh}!{at_}!{an} !{in}t!{er}e!{st}!{ing_}face!{Dots}",!Line2
	db "Would !{you} like !{me} !{to} !{re}ad !{you}r",!Line3
	db "!{for}tune?",!WaitKey,!Scroll
	db "I'll !{ma}ke !{it} !{che}ap!{Dots}",!Scroll
	db "!{4_}> Read my !{for}tune",!Scroll
	db "!{4_}!{4_}I'll pass",!Choose,!End
;----------------------------------------
.message_244:
	db !Position01
	db "I'll !{just} !{be} tak!{ing_}!{Number00}!{Number01} r!{up}ees.",!Line2
	db "H!{er}e!{s_}!{to} !{you}r health! Weeyaa!",!End
;----------------------------------------
.message_245:
	db !Position01
	db "Hmm!{Dots} How un!{for}tun!{at}e. I'll !{be}",!Line2
	db "!{wa}!{it}!{ing_}!{for} !{you}r !{re}turn.",!End
;----------------------------------------
.message_246:
	db !Position01,!Speed03
	db "Jo-m!{on}!{Dots} jo-m!{on}!{Dots}",!WaitKey,!Line2
	db "A !{st}!{on}e object !{st}!{and}s t!{all_}!{in}",!Line3
	db "!{the} Des!{er}t !{of} My!{st}!{er}y.",!End
;----------------------------------------
.message_247:
	db !Position01,!Speed03
	db "Emi-s!{hi}!{Dots} emi-s!{hi}!{Dots}",!WaitKey,!Line2
	db "F!{or} t!{re}asu!{re}, talk !{to} !{go}ssip",!Line3
	db "!{se}ll!{er}s !{in} Dark W!{or}ld cav!{er}ns.",!End
;----------------------------------------
.message_248:
	db !Position01,!Speed03
	db "Jo-m!{on}!{Dots} jo-m!{on}!{Dots}",!WaitKey,!Line2
	db "!{The} sm!{it}h!{s_}partn!{er_}!{is} !{lo}c!{at}ed",!Line3
	db "!{in} Outc!{ast} Vil!{la}ge.",!End
;----------------------------------------
.message_249:
	db !Position01,!Speed03
	db "Emi-s!{hi}!{Dots} emi-s!{hi}!{Dots}",!WaitKey,!Line2
	db "A t!{re}asu!{re_}!{is} !{la}id !{to} !{re}!{st} !{in}",!Line3
	db "!{the} L!{ight_}W!{or}ld graveyard.",!End
;----------------------------------------
.message_250:
	db !Position01,!Speed03
	db "Jo-m!{on}!{Dots} jo-m!{on}!{Dots}",!WaitKey,!Line2
	db "!{You}'ll purc!{has}e a new k!{in}d !{of}",!Line3
	db "!{bo}mb !{at_}!{the} Bomb Shop.",!End
;----------------------------------------
.message_251:
	db !Position01,!Speed03
	db "Emi-s!{hi}!{Dots} emi-s!{hi}!{Dots}",!WaitKey,!Line2
	db "!{You}'ll f!{in}d a !{se}c!{re}t !{in}side !{the}",!Line3
	db "Dark W!{or}ld Pyramid.",!End
;----------------------------------------
.message_252:
	db !Position01,!Speed03
	db "Jo-m!{on}!{Dots} jo-m!{on}!{Dots}",!WaitKey,!Line2
	db "A !{ba}rri!{er_}!{pro}tects G!{an}!{on}'s",!Line3
	db "Tow!{er_}!{on} De!{at}h Mount!{ain}.",!End
;----------------------------------------
.message_253:
	db !Position01,!Speed03
	db "Emi-s!{hi}!{Dots} Emi-s!{hi}!{Dots}",!WaitKey,!Line2
	db "!{You}'ll ne!{ed_}Silv!{er_}Arrows !{to}",!Line3
	db "f!{in}!{is}h !{of}f G!{an}!{on}.",!End
;----------------------------------------
.message_254:
	db "Hey, I've !{go}t a !{go}od !{st}!{or}y !{for}",!Line2
	db "!{on}!{ly_}20 r!{up}ees.",!WaitKey,!Line3
	db "Wh!{at_}!{do} !{you} say?",!Scroll
	db "!{4_}> H!{er}e!{s_}!{the} r!{up}ees",!Scroll
	db "!{4_}!{4_}Not !{in}t!{er}e!{st}ed",!Choose,!End
;----------------------------------------
.message_255:
	db "Heh heh. !{Tha}nks. !{You} !{know}, if",!Line2
	db "!{you} fol!{lo}w !{the} riv!{er_}!{up}!{st}!{re}am,",!Line3
	db "!{you}'ll f!{in}d a l!{it}tle p!{on}d.",!WaitKey,!Scroll
	db "It m!{ight_}!{be} fun throw!{in}g",!Scroll
	db "!{some}!{thin}' !{in}. Who !{know}s !{wh}!{at}",!Scroll
	db "could !{ha}pp!{en}?",!WaitKey,!Scroll
	db "Heh heh. Any!{wa}y, I'll !{se}e ya",!Scroll
	db "ar!{ound}.",!End
;----------------------------------------
.message_256:
	db "Heh heh. Well, I !{do}!{nt_}w!{ast}e",!Line2
	db "ti!{me} talk!{in}' !{to} folks w!{it}h no",!Line3
	db "r!{up}ees. Get !{lo}!{st}!",!End
;----------------------------------------
.message_257:
	db "Heh heh. !{Tha}nks. As a m!{at}t!{er}",!Line2
	db "!{of} fact, I us!{ed_}!{to} !{be} a !{thi}ef",!Line3
	db "!{ba}!{ck} !{in} !{the} L!{ight_}W!{or}ld.",!WaitKey,!Scroll
	db "At !{on}e po!{in}t, my fel!{lo}w !{thi}!{ev}es",!Scroll
	db "!{go}t !{re}al spook!{ed_}a!{bo}ut !{get}t!{in}'",!Scroll
	db "caught, !{so} !{the}y !{all_}turn!{ed_}tail",!WaitKey,!Scroll
	db "!{and_}scamp!{er}!{ed_}!{of}f.",!WaitKey,!Scroll
	db "One !{of} !{the}m !{wa}s a !{re}al c!{ha}mp",!Scroll
	db "w!{it}h !{lo}!{ck}pi!{ck}s. But !{the}!{se} days,",!Scroll
	db "he !{hi}!{des} !{it} by p!{re}t!{en}!{di}n' !{to} !{be}",!WaitKey,!Scroll
	db "!{so}!{me} middle-ag!{ed_}!{we}ir!{do}. Heh",!Scroll
	db "heh heh!{Dots}",!End
;----------------------------------------
.message_258:
	db "Heh heh. !{Tha}nks. !{You} !{know}, I",!Line2
	db "saw !{thi}s !{in}c!{re}!{di}b!{ly_}!{be}autiful",!Line3
	db "wom!{an} !{in} !{the} Pyramid, but",!WaitKey,!Scroll
	db "!{so}!{me}!{on}e w!{ent} !{and_}!{se}al!{ed_}!{of}f",!Scroll
	db "!{the} !{do}!{or}.",!WaitKey,!Scroll
	db "I h!{ear} !{an} !{or}!{di}nary !{bo}mb !{just}",!Scroll
	db "wo!{nt_}!{do} !{the} !{tr}i!{ck}!{Dots}",!End
;----------------------------------------
.message_259:
	db "Heh heh. !{Tha}nks. As a m!{at}t!{er}",!Line2
	db "!{of} fact, !{the}!{re}!{s_}a m!{on}!{st}!{er}",!Line3
	db "caus!{in}' !{the} r!{ain}!{st}!{or}m !{in}",!WaitKey,!Scroll
	db "!{the} !{bo}g.",!WaitKey,!Scroll
	db "If !{the} w!{in}d !{st}art!{ed_}b!{lo}w!{in}'",!Scroll
	db "!{st}r!{on}g !{en}ough, I !{be}t !{the} r!{ain}",!Scroll
	db "m!{ight_}!{st}op.",!End
;----------------------------------------
.message_260:
	db "-cough- -cough- !{Name}, !{do}",!Line2
	db "!{you} !{have} a !{bo}ttle !{to} keep a",!Line3
	db "bug !{in}?",!WaitKey,!Scroll
	db "I !{se}e. !{You} !{do}!{nt_}!{have} !{on}e!{Dots}",!Scroll
	db "-cough-",!End
;----------------------------------------
.message_261:
	db "I c!{an}'t !{go} outside !{be}cau!{se} I've",!Line2
	db "!{be}!{en_}si!{ck}!{Dots} -cough- -cough-",!WaitKey,!Line3
	db "Peo!{ple} !{are_}say!{ing_}!{it}!{s_}!{be}cau!{se}",!Scroll
	db "!{of} !{the} m!{on}!{st}!{er}s!{Dots} !{some}!{thin}g",!Scroll
	db "a!{bo}ut !{the}ir aura !{com}!{ing_}!{fro}m",!WaitKey,!Scroll
	db "!{the} mount!{ain}s !{and_}!{for}e!{st}s!{Dots}",!Scroll
	db "-cough-",!WaitKey,!Scroll
	db "Any!{wa}y, !{che}!{ck} !{out_}!{thi}s",!Scroll
	db "Bug-C!{at}c!{hi}ng Net. I'll u!{se} !{it}",!Scroll
	db "!{wh}!{en_}I'm !{be}tt!{er}, but !{you} c!{an}",!WaitKey,!Scroll
	db "!{bo}rrow !{it} !{for} now.",!End
;----------------------------------------
.message_262:
	db "Ugh!{Dots} I hope I !{get} !{be}tt!{er_}!{so}!{on}!{Dots}",!Line2
	db "-cough- -cough-",!End
;----------------------------------------
.message_263:
	db "!{Dots}!{Dots}!{Dots}!{Dots}!{Dots}!{Dots}!{Dots}",!End
;----------------------------------------
.message_264:
	db "Wh!{at_}gives, m!{an}?",!End
;----------------------------------------
.message_265:
	db "So, !{you} !{know} I us!{ed_}!{to} !{be} a",!Line2
	db "!{thi}ef, right?",!WaitKey,!Line3
	db "I !{can_}op!{en_}!{the} !{che}!{st}, but !{you}'ll",!Scroll
	db "!{have} !{to} keep !{thi}s a !{se}c!{re}t",!Scroll
	db "!{be}t!{we}!{en_}us.",!WaitKey,!Scroll
	db "Do I !{have} !{you}r w!{or}d?",!Scroll
	db "!{4_}> I !{pro}m!{is}e",!Scroll
	db "!{4_}!{4_}I'll tell !{ev}!{er}y!{on}e",!Choose,!End
;----------------------------------------
.message_266:
	db "OK, if !{tha}t!{s_}!{the} !{wa}y !{you} !{wa}nt",!Line2
	db "!{it}, !{you} !{can_}drag th!{at_}!{che}!{st}",!Line3
	db "ar!{ound} !{for}!{ev}!{er}!",!End
;----------------------------------------
.message_267:
	db "Re!{me}m!{be}r, !{do}!{nt_}say a w!{or}d !{of}",!Line2
	db "!{thi}s !{to} !{an}y!{on}e!{Dots}",!End
;----------------------------------------
.message_268:
	db "All right. Br!{ing_}th!{at_}!{che}!{st}",!Line2
	db "ov!{er_}h!{er}e.",!WaitKey,!Line3
	db "But s!{er}iously, !{be} su!{re_}!{to} keep",!Scroll
	db "!{thi}s a !{se}c!{re}t.",!End
;----------------------------------------
.message_269:
	db "!{2_}!{Ankh1}!{Ankh2}!{Ankh1}!{Ankh2}"
	db "!{3_}!{Ankh1}!{Ankh2}!{Snake1}!{Snake2}!{Waves1}!{Waves2}!{Ankh1}!{Ankh2}!{Waves1}!{Waves2}"
	db "!{3_}!{Waves1}!{Waves2}!{Snake1}!{Snake2}!{Waves1}!{Waves2}",!Line2
	db "!{2_}!{Waves1}!{Waves2}!{Snake1}!{Snake2}!{Snake1}!{Snake2}"
	db "!{3_}!{Waves1}!{Waves2}!{Snake1}!{Snake2}!{Snake1}!{Snake2}!{Waves1}!{Waves2}!{Ankh1}!{Ankh2}",!Line3
	db "!{2_}!{Waves1}!{Waves2}!{Waves1}!{Waves2}!{Snake1}!{Snake2}!{Ankh1}!{Ankh2}!{Waves1}!{Waves2}"
	db "!{3_}!{Snake1}!{Snake2}!{Waves1}!{Waves2}!{Ankh1}!{Ankh2}!{Ankh1}!{Ankh2}!{Snake1}!{Snake2}",!End
;----------------------------------------
.message_270:
	db "Hold !{the} M!{ast}!{er_}Sw!{or}d !{up} !{to}",!Line2
	db "!{the} sky, !{and_}!{you} !{wi}ll !{re}ceive",!Line3
	db "!{the} !{ma}gic !{of} Eth!{er}.",!End
;----------------------------------------
.message_271:
	db "Hold !{the} M!{ast}!{er_}Sw!{or}d !{up} !{to}",!Line2
	db "!{the} sky, !{and_}!{you} !{wi}ll !{re}ceive",!Line3
	db "!{the} !{ma}gic !{of} Bom!{bo}s.",!End
;----------------------------------------
.message_272:
	db "Hey, !{you} j!{er}k! How d!{are_}!{you}",!Line2
	db "!{wa}ke !{me} !{up} !{fro}m my deep sleep!",!WaitKey,!Line3
	db "!{Dots}!{Dots}!{Tha}nk !{you} !{for} !{you}r k!{in}dness.",!WaitKey,!Scroll
	db "!{Dots}!{Dots}Wa!{it} !{on}e m!{in}ute! It!{s_}ti!{me} !{to}",!Scroll
	db "take my r!{ev}!{en}ge, !{so} !{get} !{re}ady!",!WaitKey,!Scroll
	db "!{Dots}!{Dots}Is th!{at_}OK w!{it}h !{you}?",!End
;----------------------------------------
.message_273:
	db "!{Dots}!{Dots}Kekeke! Get !{wh}!{at_}!{you}",!Line2
	db "!{des}!{er}ve! W!{it}h !{thi}s spell, !{you}r",!Line3
	db "!{ma}gic c!{on}sumpti!{on} !{wi}ll !{be}",!WaitKey,!Scroll
	db "cut !{in} !{ha}lf.",!WaitKey,!Scroll
	db "!{Dots}!{Dots}P!{re}tty cool, huh?",!WaitKey,!Scroll
	db "!{Dots}!{Dots}It'll !{be} brutal !{fro}m h!{er}e !{on}",!Scroll
	db "out, !{so} !{to}ugh!{en_}!{up}, !{or} el!{se}!",!WaitKey,!Scroll
	db "!{Dots}!{Dots}Have a nice day. Take ca!{re}!",!End
;----------------------------------------
.message_274:	; Intro sequence
	db !ScrollSpd00,!Color07,!Speed03,!Window02,!NextPic
	db "L!{on}g a!{go}, !{in} !{the} !{be}autiful l!{and}",!Line2
	db "!{of} Hyrule, surr!{ound}!{ed_}by",!Line3
	db "mount!{ain}s !{and_}!{for}e!{st}s, leg!{en}ds",!Wait03,!Scroll
	db "!{to}ld !{of} !{an} omnipot!{ent} !{and}",!Scroll
	db "omn!{is}ci!{ent} Gold!{en_}Pow!{er}.",!Wait05,!Scroll
	db "!{Thi}s Gold!{en_}Pow!{er_}!{wa}s !{hi}dd!{en}",!Scroll
	db "a!{wa}y !{in} a Sacr!{ed_}Realm, w!{it}h",!Scroll
	db "th!{at_}!{re}alm!{s_}!{en}!{tr}!{an}ce",!Wait03,!Scroll
	db "!{ev}!{ent}ual!{ly_}!{di}scov!{er}!{ed_}!{in} Hyrule",!Scroll
	db "!{it}!{se}lf.",!Wait05,!NextPic,!NextPic,!Scroll
	db "M!{an}y fought !{to} g!{ain} !{en}!{tr}y !{to}",!Scroll
	db "!{the} Sacr!{ed_}Realm, yet n!{on}e !{wh}o",!Scroll
	db "succeed!{ed_}w!{er}e h!{ear}d",!Wait03,!Scroll
	db "!{fro}m ag!{ain}.",!Wait05,!Scroll
	db "And w!{or}!{se}, a my!{st}!{er}ious !{ev}il",!Scroll
	db "!{pow}!{er_}!{be}g!{an} !{to} f!{lo}w !{out_}",!Scroll
	db "!{fro}m !{the}!{re}.",!Wait05,!NextPic,!NextPic,!Scroll
	db "!{The} k!{ing_}!{of} Hyrule !{com}m!{and}ed",!Scroll
	db "S!{ev}!{en_}Sages !{to} !{se}al !{of}f !{the}",!Scroll
	db "passage !{to} !{the} Sacr!{ed_}Realm.",!Wait05,!NextPic,!NextPic,!Scroll
	db "And th!{at_}!{se}al !{sh}ould n!{ev}!{er}",!Scroll
	db "!{have} !{be}!{en_}brok!{en}.",!Wait05,!Scroll
	db "But !{just} as tho!{se} !{ev}!{ent}s !{ha}d",!Scroll
	db "f!{in}al!{ly_}pass!{ed_}!{in}!{to} leg!{en}d!{Dots}",!End
;----------------------------------------
.message_275:	; Intro sequence (2)
	db !Window02,!Color07,!Speed03,!Line1
	db "!{The} !{go}od k!{ing_}!{of} Hyrule !{wa}s",!Line2
	db "elm!{in}!{at}!{ed_}through !{the}",!Line3
	db "t!{re}a!{che}ry !{of} a my!{st}!{er}ious",!Wait02,!Scroll
	db "b!{is}hop !{know}n as Agahnim,",!Scroll
	db "!{wh}o !{ha}d !{be}!{en_}p!{lo}tt!{ing_}!{the}",!Scroll
	db "!{wh}ole ti!{me} !{to} b!{re}ak !{the} !{se}al.,!Wait04",!Wait05,!End
;----------------------------------------
.message_276:	; Intro sequence (3)
	db !Window02,!Color07,!Speed03,!Line1
	db "Agahnim m!{an}ipul!{at}!{ed_}!{the}",!Line2
	db "c!{ast}le !{so}l!{di}!{er}s !{in}!{to} captur!{in}g",!Line3
	db "!{ma}id!{en}s !{des}c!{en}d!{ing_}!{fro}m !{the}",!Wait02,!Scroll
	db "S!{ev}!{en_}Sages. !{The}!{se} girls w!{er}e",!Scroll
	db "th!{en_}sacrificed, !{on}e aft!{er}",!Scroll
	db "!{an}oth!{er}.,!Wait04",!Wait05,!End
;----------------------------------------
.message_277:	; Intro sequence (4)
	db !Window02,!Color07,!Speed03,!Line1
	db "!{The} f!{at}eful hour !{wh}!{er}e",!Line2
	db "Pr!{in}cess Zelda !{wi}ll !{be}",!Line3
	db "sacrific!{ed_}!{is} draw!{ing_}n!{ear}.",!Wait03,!Wait05,!End
;----------------------------------------
.message_278:
	db "It !{se}ems !{to} !{be} !{lo}!{ck}!{ed_}tight.",!Line2
	db "Guess I'll !{just} carry !{it}",!Line3
	db "ar!{ound} !{for} now.",!End
;----------------------------------------
.message_279:
	db "100 r!{up}ees !{for} 30 Bombs!",!Line2
	db "30 Bombs !{for} !{just} 100 r!{up}ees!",!Line3
	db "Plea!{se} buy !{so}!{me}, m!{is}t!{er}!",!End
;----------------------------------------
.message_280:
	db "100 r!{up}ees !{for} 30 Bombs! I al!{so}",!Line2
	db "!{have} a new !{pro}duct !{in} !{st}o!{ck}.",!Line3
	db "1 !{for} !{on}!{ly_}100 r!{up}ees!",!End
;----------------------------------------
.message_281:
	db "!{Tha}nk !{you} v!{er}y !{mu}ch.",!End
;----------------------------------------
.message_282:
	db "!{Tha}nk !{you} v!{er}y !{mu}ch.!{2_}!{You} c!{an}",!Line2
	db "!{se}t !{the} !{bo}mb by p!{re}ss!{ing_}A.",!Line3
	db "D!{on}'t !{for}!{get} !{it}!",!End
;----------------------------------------
.message_283:
	db "Ki ki! Give !{me} 100 r!{up}ees, !{and}",!Line2
	db "I'll op!{en_}!{the} !{do}!{or} !{for} !{you}.",!Line3
	db "Kiki ki!",!WaitKey,!Scroll
	db "Wh!{at_}!{do} !{you} say?",!Scroll
	db "!{4_}> Op!{en_}!{it} !{up}",!Scroll
	db "!{4_}!{4_}I'll !{tr}y !{it} my!{se}lf",!Choose,!End
;----------------------------------------
.message_284:
	db "Ki ki! Hmph!{Dots} Do !{it} !{you}r!{se}lf,",!Line2
	db "!{the}n! Kiki ki!",!End
;----------------------------------------
.message_285:
	db "Ki ki! !{Tha}t!{s_}!{the} spir!{it}!",!Line2
	db "I'll take 100 r!{up}ees! Kiki ki!",!End
;----------------------------------------
.message_286:
	db "I'm Kiki !{the} m!{on}key! I !{lo}ve",!Line2
	db "r!{up}ees m!{or}e !{tha}n !{an}y!{thin}g.",!Line3
	db "C!{an} !{you} sp!{are_}10 r!{up}ees?",!WaitKey,!Scroll
	db "Wh!{at_}!{do} !{you} say?",!Scroll
	db "!{4_}> H!{er}e!{s_}10 r!{up}ees",!Scroll
	db "!{4_}!{4_}Not giv!{ing_}!{an}y!{thin}g",!Choose,!End
;----------------------------------------
.message_287:
	db "Ki ki! !{Tha}t!{s_}!{the} spir!{it}! I'll !{be}",!Line2
	db "!{you}r buddy !{for} a w!{hi}le. Kiki ki!",!End
;----------------------------------------
.message_288:
	db "Ki ki! Hmph!{Dots} I guess I !{have} no",!Line2
	db "u!{se} !{for} !{you}. Bye bye! Kiki ki!",!End
;----------------------------------------
.message_289:
	db "Ki ki? Wh!{at_}!{are_}!{you} !{do}!{in}g?",!Line2
	db "I !{do}!{nt_}!{wa}nt !{to} !{go} !{the}!{re}!",!End
;----------------------------------------
.message_290:
	db "Phew! !{Tha}nk !{you} !{so} !{mu}ch !{for}",!Line2
	db "sav!{ing_}!{me}. Now, !{ple}a!{se} take !{me}",!Line3
	db "outside.",!End
;----------------------------------------
.message_291:
	db "Gyaaah! Too bright!",!End
;----------------------------------------
.message_292:
	db "Err, !{wa}!{it} a m!{in}ute!{Dots} Plea!{se}",!Line2
	db "!{do}!{nt_}!{go} !{thi}s !{wa}y.",!End
;----------------------------------------
.message_293:
	db "My na!{me} !{is} Az!{in}ar. I s!{en}!{se} !{tha}t",!Line2
	db "!{some}!{thin}g !{is} !{ha}pp!{en}!{ing_}!{in} !{the}",!Line3
	db "Sacr!{ed_}Realm !{se}al!{ed_}!{of}f by !{the}",!WaitKey,!Scroll
	db "S!{ev}!{en_}Sages.",!WaitKey,!Scroll
	db "!{The}!{re} !{is} a !{pro}phecy !{of} a G!{re}!{at}",!Scroll
	db "C!{at}aclysm th!{at_}!{the} S!{ev}!{en}",!Scroll
	db "Sages pass!{ed_}!{do}wn !{to} !{the}ir,"!WaitKey,!Scroll
	db "Hyli!{an} !{des}c!{en}d!{ent}s.",!WaitKey,!Scroll
	db "Part !{of} !{it} says, ""!{The} H!{er}o !{wi}ll",!Scroll
	db "!{go} !{to} !{the} Des!{er}t !{of} My!{st}!{er}y,",!Scroll
	db "hold!{ing_}!{the} To!{me} !{of} Mu!{do}ra.""",!WaitKey,!Scroll
	db "Obt!{ain} th!{at_}!{to}!{me}, !{and_}!{you}'ll !{be}",!Scroll
	db "a!{ble} !{to} und!{er}!{st}!{and_}!{the}",!Scroll
	db "l!{an}guage !{of} !{the} Hyli!{an} peo!{ple}.",!WaitKey,!Scroll
	db "I !{be}li!{ev}e !{it}!{s_}!{in} !{the} Hou!{se} !{of}",!Scroll
	db "Wr!{it}!{in}gs !{in} !{the} vil!{la}ge. Go !{and}",!Scroll
	db "!{re}!{tr}i!{ev}e !{it}, if !{you} !{tr}u!{ly_}!{are_}!{to}",!WaitKey,!Scroll
	db "!{be}!{com}e !{thi}s ""H!{er}o.""",!End
;----------------------------------------
.message_294:
	db "W!{it}h !{all_}th!{re}e p!{en}d!{an}ts, !{you}",!Line2
	db "!{have} !{pro}v!{en_}!{you}r!{se}lf !{to}",!Line3
	db "pos!{se}ss w!{is}!{do}m, courage",!WaitKey,!Scroll
	db "!{and} !{pow}!{er}.",!WaitKey,!Scroll
	db "If !{you} !{tr}u!{ly_}!{are_}courageous, !{go}",!Scroll
	db "!{to} !{the} !{for}e!{st} !{and_}c!{la}im !{the}",!Scroll
	db "sleep!{ing_}M!{ast}!{er_}Sw!{or}d as",!WaitKey,!Scroll
	db "!{you}r own.",!End
;----------------------------------------
.message_295:
	db "A!{ha}! Th!{at_}!{is} !{the} To!{me} !{of}",!Line2
	db "Mu!{do}ra! W!{it}h !{it}, !{you} c!{an}",!Line3
	db "!{com}p!{re}h!{en}d !{the} l!{an}guage",!WaitKey,!Scroll
	db "!{of} !{the} Hyli!{an}s.",!End
;----------------------------------------
.message_296:
	db "!{You} !{are_}!{the} H!{er}o, !{in}deed. I am",!Line2
	db "c!{er}t!{ain} !{you} !{wi}ll !{re}turn peace",!Line3
	db "!{to} !{thi}s l!{and}.",!End
;----------------------------------------
.message_297:
	db "Look !{at_}how !{you}'ve grown",!Line2
	db "aft!{er_}!{you}r !{tr}ial !{in} !{the} !{des}!{er}t.",!Line3
	db "!{You} !{are_}a v!{er}y !{pro}m!{is}!{in}g",!WaitKey,!Scroll
	db "!{you}ng m!{an}.",!End
;----------------------------------------
.message_298:
	db "Was !{it} !{you} !{wh}o !{di}!{st}ur!{be}d my",!Line2
	db "nap? H!{er}e, take !{thi}s !{and}",!Line3
	db "!{go} a!{wa}y.",!End
;----------------------------------------
.message_299:
	db "I !{have} !{not}!{hi}ng el!{se} !{to} give",!Line2
	db "!{you}, !{so} take !{thi}s !{in}!{st}ead!",!End
;----------------------------------------
.message_300:
	db "Yo !{Name}! A !{st}r!{an}ge m!{is}t !{has}",!Line2
	db "fall!{en_}ov!{er_}!{the} !{for}e!{st}. If",!Line3
	db "!{you}'!{re_}head!{ing_}!{in}, !{ple}a!{se}",!WaitKey,!Scroll
	db "!{be} ca!{re}ful.",!End
;----------------------------------------
.message_301:	; PENDING
	db "May!{be} !{it}!{s_}!{not}!{hi}ng, but !{thi}s",!Line2
	db "t!{re}e feels k!{in}d !{of} !{st}r!{an}ge as",!Line3
	db "!{we} cut !{it}!{Dots}",!End
;----------------------------------------
.message_302:
	db "Yo!!{2_}!{The} fog !{in} !{the} !{for}e!{st} !{is}",!Line2
	db "cl!{ear}!{in}g.!{2_}!{Tha}nk !{you}!!{2_}We c!{an}",!Line3
	db "!{go} !{the}!{re} ag!{ain}!!{2_}Hey broth!{er}!",!End
;----------------------------------------
.message_303:
	db "Yeah !{Name}, now I'm",!Line2
	db "quar!{re}l!{ing_}w!{it}h my !{you}ng!{er}",!Line3
	db "broth!{er}.!{2_}I !{se}al!{ed_}!{the} !{do}!{or} !{to}",!WaitKey,!Scroll
	db "!{hi}s room.",!End
;----------------------------------------
.message_304:
	db "So !{the} !{do}!{or}!{wa}y !{is} op!{en_}ag!{ain}!{Dots}",!Line2
	db "OK OK, !{ma}y!{be} I !{sh}ould !{ma}ke !{up}",!Line3
	db "w!{it}h my broth!{er}!{Dots}",!End
;----------------------------------------
.message_305:
	db "Hey !{Name}, !{di}d !{you} !{com}e !{fro}m",!Line2
	db "my old!{er_}broth!{er}!{s_}room?!{2_}Is he",!Line3
	db "!{st}ill !{an}gry?",!End
;----------------------------------------
.message_306:
	db !Speed02,!Position01,!Window02
	db "!{Name}, !{be}cau!{se} !{of} !{you}, I c!{an}",!Line2
	db "escape !{fro}m !{the} clut!{che}s !{of}",!Line3
	db "!{the} !{ev}il m!{on}!{st}!{er}s.!{2_}!{Tha}nk !{you}!",!WaitKey,!Scroll
	db "!{Dots}!{Thi}s w!{or}ld us!{ed_}!{to} !{be} !{the}",!Scroll
	db "Sacr!{ed_}Realm !{wh}!{er}e !{the}",!Scroll
	db "Tri!{for}ce !{wa}s !{hi}dd!{en}.",!WaitKey,!Scroll
	db "But !{be}cau!{se} G!{an}!{on}, !{the} !{bo}ss",!Scroll
	db "!{of} !{thi}!{ev}es, w!{is}h!{ed_}!{it}, !{the} w!{or}ld",!Scroll
	db "!{wa}s !{tr}!{an}s!{for}!{me}d!{Dots}",!WaitKey,!Scroll
	db "I'm su!{re_}he!{s_}!{in}t!{en}d!{ing_}!{to}",!Scroll
	db "c!{on}qu!{er_}!{ev}!{en_}our L!{ight_}W!{or}ld",!Scroll
	db "aft!{er_}build!{ing_}!{hi}s !{pow}!{er_}h!{er}e.",!WaitKey,!Scroll
	db "He !{is} !{tr}y!{ing_}!{to} op!{en_}a !{la}rg!{er}",!Scroll
	db "g!{at}e !{be}t!{we}!{en_}w!{or}lds n!{ear} !{the}",!Scroll
	db "c!{ast}le us!{ing_}our !{pow}!{er}s.",!WaitKey,!Scroll
	db "But !{the} g!{at}e !{is} !{not} op!{en}",!Scroll
	db "!{com}!{ple}te!{ly_}yet!{Dots}",!Scroll
	db "If !{we} s!{ev}!{en_}!{ma}id!{en}s !{com}e",!WaitKey,!Scroll
	db "!{to}!{get}h!{er}, !{we} !{can_}b!{re}ak !{the}",!Scroll
	db "!{ba}rri!{er_}ar!{ound} G!{an}!{on}!{s_}!{hi}!{di}ng",!Scroll
	db "p!{la}ce.",!WaitKey,!Scroll
	db "I !{wi}ll tell !{you} !{wh}!{er}e !{the} oth!{er}",!Scroll
	db "girls !{are_}held.!{2_}I !{be}li!{ev}e !{you}",!Scroll
	db "!{wi}ll !{des}!{tr}oy G!{an}!{on}.",!WaitKey,!Scroll
	db "I !{wi}ll !{re}turn !{to} my !{or}ig!{in}al",!Scroll
	db "!{for}m !{at_}th!{at_}ti!{me}.",!Scroll
	db "!{2_}!{Dots} !{Dots} !{Dots} !{Dots} !{Dots}",!Sound2D,!End
;----------------------------------------
.message_307:
	db !Speed02,!Position01,!Window02
	db "!{Name}, !{be}cau!{se} !{of} !{you}, I c!{an}",!Line2
	db "escape !{fro}m !{the} clut!{che}s !{of}",!Line3
	db "!{the} !{ev}il m!{on}!{st}!{er}s.!{2_}!{Tha}nk !{you}!",!WaitKey,!Scroll
	db "!{Dots}!{The} Tri!{for}ce !{wi}ll gr!{an}t !{the}",!Scroll
	db "w!{is}hes !{of} !{wh}o!{ev}!{er_}!{to}u!{che}s !{it},",!Scroll
	db "as !{lo}ng as th!{at_}p!{er}s!{on} lives!{Dots}",!WaitKey,!Scroll
	db "Th!{at_}!{is} !{wh}y !{it} !{wa}s !{hi}dd!{en_}!{in}",!Scroll
	db "!{the} Sacr!{ed_}Realm.",!WaitKey,!Scroll
	db "On!{ly_}a !{se}lect",!Scroll
	db "few knew !{of} !{it}s !{lo}c!{at}i!{on},",!WaitKey,!Scroll
	db "but !{at_}!{so}!{me} po!{in}t !{tha}t",!Scroll
	db "!{know}ledge !{wa}s !{lo}!{st}!{Dots}",!Scroll
	db "!{The} p!{er}s!{on} !{wh}o !{re}!{di}scov!{er}ed",!WaitKey,!Scroll
	db "!{the} Sacr!{ed_}Realm !{wa}s",!Scroll
	db "G!{an}!{on}!{do}rf !{the} !{ev}il !{thi}ef.",!Scroll
	db "Lu!{ck}ily, he could!{nt_}figu!{re_}out",!WaitKey,!Scroll
	db "how !{to} !{re}turn !{to} !{the} Light",!Scroll
	db "W!{or}ld!{Dots}",!Scroll
	db "!{Dots}Well, !{re}!{me}m!{be}r th!{at_}!{you}",!WaitKey,!Scroll
	db "!{have} !{ma}gical !{pow}!{er}s, w!{hi}ch !{on}ly",!Scroll
	db "!{The} H!{er}o !{can_}!{ma}ke !{the} mo!{st} !{of}!",!Scroll
	db "!{The}!{re} !{are_}!{so}!{me} oth!{er_}!{ma}gical",!WaitKey,!Scroll
	db "!{wa}rp!{ing_}po!{in}ts like !{the} !{on}e !{you}",!Scroll
	db "saw !{on} De!{at}h Mount!{ain}.",!Scroll
	db "By us!{ing_}!{the}m !{you} !{can_}!{go}",!WaitKey,!Scroll
	db "!{be}t!{we}!{en_}!{the} two w!{or}lds !{and}",!Scroll
	db "f!{in}d !{the} !{ev}ils !{hi}dd!{en_}!{in} !{the}",!Scroll
	db "Dark W!{or}ld.!{2_}!{You} !{are_}!{the} !{on}ly",!WaitKey,!Scroll
	db "!{on}e !{wh}o !{can_}!{des}!{tr}oy",!Scroll
	db "G!{an}!{on}!{do}rf, !{the} !{thi}ef-no,",!Scroll
	db "G!{an}!{on}, !{the} !{ev}il K!{ing_}Of",!WaitKey,!Scroll
	db "Darkness!",!End
;----------------------------------------
.message_308:
	db !Speed02,!Position01,!Window02
	db "!{Name}, !{be}cau!{se} !{of} !{you}, I c!{an}",!Line2
	db "escape !{fro}m !{the} clut!{che}s !{of}",!Line3
	db "!{the} !{ev}il m!{on}!{st}!{er}s.!{2_}!{Tha}nk !{you}!",!WaitKey,!Scroll
	db "!{Dots}Do !{you} !{know} !{the} !{pro}phecy !{of}",!Scroll
	db "!{the} G!{re}!{at_}C!{at}aclysm?",!Scroll
	db "!{Thi}s !{is} !{the} !{wa}y I h!{ear}d !{it}!{Dots}",!WaitKey,!Scroll
	db "If a p!{er}s!{on} !{wh}o !{has} !{an} !{ev}il",!Scroll
	db "h!{ear}t !{get}s !{the} Tri!{for}ce, a H!{er}o",!Scroll
	db "!{is} !{des}t!{in}!{ed_}!{to} app!{ear}!{Dots}",!WaitKey,!Scroll
	db "!{Dots}!{and_}he a!{lo}ne !{mu}!{st} face !{the}",!Scroll
	db "p!{er}s!{on} !{wh}o !{be}g!{an} !{the} G!{re}!{at}",!Scroll
	db "C!{at}aclysm.",!WaitKey,!Scroll
	db "If !{the} !{ev}il !{on}e !{des}!{tr}oys !{the}",!Scroll
	db "H!{er}o, !{not}!{hi}ng !{can_}save !{the}",!Scroll
	db "w!{or}ld !{fro}m !{hi}s !{wi}!{ck}!{ed_}!{re}ign.",!WaitKey,!Scroll
	db "On!{ly_}a p!{er}s!{on} !{of} !{the} Knights Of",!Scroll
	db "Hyrule, !{wh}o !{pro}tect!{ed_}!{the}",!Scroll
	db "Hyli!{an} royalty, !{can_}!{be}!{com}e",!WaitKey,!Scroll
	db "!{the} H!{er}o!{Dots}!{2_}!{You} !{are_}!{of} !{the}ir",!Scroll
	db "b!{lo}odl!{in}e, ar!{en}'t !{you}?!{2_}Th!{en}",!Scroll
	db "!{you} !{mu}!{st} !{re}scue",!WaitKey,!Scroll
	db "Zelda w!{it}h!{out_}fail.",!End
;----------------------------------------
.message_309:
	db !Speed02,!Position01,!Window02
	db "!{Name}, !{be}cau!{se} !{of} !{you}, I c!{an}",!Line2
	db "escape !{fro}m !{the} clut!{che}s !{of}",!Line3
	db "!{the} !{ev}il m!{on}!{st}!{er}s.!{2_}!{Tha}nk !{you}!",!WaitKey,!Scroll
	db "As !{the} sages !{se}al!{ed_}!{the} !{wa}y",!Scroll
	db "!{to} !{the} Dark W!{or}ld, !{the} Knights",!Scroll
	db "Of Hyrule def!{en}d!{ed_}!{the}m !{fro}m",!WaitKey,!Scroll
	db "!{the} !{at}ta!{ck}s !{of} !{ev}il m!{on}!{st}!{er}s.",!WaitKey,!Scroll
	db "I h!{ear}d th!{at_}!{the} Knights Of",!Scroll
	db "Hyrule w!{er}e n!{ear}!{ly_}!{wi}p!{ed_}!{out_}!{in}",!Scroll
	db "th!{at_}b!{at}tle!{Dots}",!WaitKey,!Scroll
	db "!{You} !{are_}p!{er}!{ha}ps !{the} l!{ast} !{on}e",!Scroll
	db "!{to} carry !{on} !{the} b!{lo}odl!{in}e !{of}",!Scroll
	db "!{the} Knights!{Dots}",!WaitKey,!Scroll
	db "It !{is} ir!{on}ic th!{at_}!{the} l!{ast} !{on}e !{in}",!Scroll
	db "!{the} l!{in}e !{has} !{the} pot!{ent}ial !{to}",!Scroll
	db "!{be}!{com}e !{the} H!{er}o !{of} leg!{en}d.",!WaitKey,!Scroll
	db "Su!{re}!{ly_}!{you} !{can_}!{des}!{tr}oy G!{an}!{on}!",!End
;----------------------------------------
.message_310:
	db !Speed02,!Position01,!Window02
	db "!{Name}, !{be}cau!{se} !{of} !{you}, I c!{an}",!Line2
	db "escape !{fro}m !{the} clut!{che}s !{of}",!Line3
	db "!{the} !{ev}il m!{on}!{st}!{er}s.!{2_}!{Tha}nk !{you}!",!WaitKey,!Scroll
	db "!{The}y say !{the} Hyli!{an} peo!{ple}",!Scroll
	db "c!{on}!{tr}oll!{ed_}my!{st}!{er}ious !{pow}!{er}s,",!Scroll
	db "as !{di}d !{the} s!{ev}!{en_}sages.",!WaitKey,!Scroll
	db "But !{the} b!{lo}od !{of} !{the} Hyli!{an}s",!Scroll
	db "!{has} !{be}!{com}e !{thin} ov!{er_}ti!{me}.",!WaitKey,!Scroll
	db "We !{wh}o carry !{the} b!{lo}od",!Scroll
	db "!{of} !{the} s!{ev}!{en_}sages",!WaitKey,!Scroll
	db "!{do} !{not} pos!{se}ss !{st}r!{on}g !{pow}!{er}",!Scroll
	db "!{an}y m!{or}e, e!{it}h!{er}.",!WaitKey,!Scroll
	db "Our !{pow}!{er}s !{wi}ll !{in}c!{re}a!{se} if !{we}",!Scroll
	db "mix !{the} courage !{of} !{the} Knights",!Scroll
	db "w!{it}h !{the} w!{is}!{do}m !{of} !{the} sages.",!WaitKey,!Scroll
	db "On!{ly_}a !{sh}!{or}t ti!{me} !{re}m!{ain}s",!Scroll
	db "until !{the} g!{at}e !{at_}!{the} c!{ast}le",!Scroll
	db "l!{in}k!{ing_}!{the} w!{or}lds op!{en}s",!WaitKey,!Scroll
	db "!{com}!{ple}tely.!{2_}If !{you} defe!{at}",!Scroll
	db "G!{an}!{on}, !{thi}s w!{or}ld !{wi}ll v!{an}!{is}h",!Scroll
	db "!{and_}!{the} Tri!{for}ce !{wi}ll !{wa}!{it} !{for}",!WaitKey,!Scroll
	db "a new hold!{er}.",!Scroll
	db "I !{be}li!{ev}e !{in} !{you}!{Dots}",!Scroll
	db "Good lu!{ck}!",!End
;----------------------------------------
.message_311:
	db !Speed02,!Position01,!Window02
	db "!{Name}, !{be}cau!{se} !{of} !{you}, I c!{an}",!Line2
	db "escape !{fro}m !{the} clut!{che}s !{of}",!Line3
	db "!{the} !{ev}il m!{on}!{st}!{er}s.!{2_}!{Tha}nk !{you}!",!WaitKey,!Scroll
	db "G!{an}!{on} captur!{ed_}us !{be}cau!{se} he",!Scroll
	db "could!{nt_}b!{re}ak !{the} !{se}al !{of} !{the}",!Scroll
	db "sages w!{it}h !{hi}s !{pow}!{er_}a!{lo}ne.",!WaitKey,!Scroll
	db "And !{the}n, us!{ing_}!{the} prie!{st}",!Scroll
	db "Agahnim as !{hi}s pawn, he d!{re}w us",!Scroll
	db "!{to} !{the} Dark W!{or}ld.",!WaitKey,!Scroll
	db "Aft!{er_}cra!{ck}!{ing_}!{the} !{se}al w!{it}h",!Scroll
	db "our !{pow}!{er}s, he !{se}al!{ed_}us !{in}side",!Scroll
	db "!{of} !{the}!{se} cry!{st}als.",!WaitKey,!Scroll
	db "He th!{en_}gave us !{to} !{hi}s !{lo}yal",!Scroll
	db "m!{on}!{st}!{er}s.!{2_}But G!{an}!{on} !{di}dn't",!Scroll
	db "pl!{an} !{on} !{you}r !{get}t!{ing_}!{thi}s far.",!WaitKey,!Scroll
	db "Now, Pr!{in}cess Zelda !{is} !{wa}!{it}!{in}g",!Scroll
	db "!{for} !{you} !{in}side !{of} Turtle Ro!{ck}.",!Scroll
	db "Plea!{se} hurry!",!End
;----------------------------------------
.message_312:
	db !Speed02,!Position01,!Window02
	db "I app!{re}ci!{at}e !{you}r !{com}!{ing_}!{so} far",!Line2
	db "!{to} !{re}scue !{me}.!{2_}As I thought,",!Line3
	db "!{you} !{are_}!{the} leg!{en}dary H!{er}o.",!WaitKey,!Scroll
	db "I !{have} felt !{thi}s !{fro}m !{the} fir!{st}",!Scroll
	db "ti!{me} !{we} !{me}t.",!Scroll
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots}",!WaitKey,!Scroll
	db "G!{an}!{on} !{is} !{wa}!{it}!{ing_}!{in}side !{of} !{hi}s",!Scroll
	db "!{to}w!{er_}!{to} pass through !{the}",!Scroll
	db "g!{at}e l!{in}k!{ing_}!{the} two w!{or}lds.",!WaitKey,!Scroll
	db "Once G!{an}!{on} !{ent}!{er}s !{the} Light",!Scroll
	db "W!{or}ld, !{it} !{is} unlike!{ly_}!{tha}t",!Scroll
	db "!{an}y!{on}e !{can_}!{st}op !{hi}m.",!WaitKey,!Scroll
	db "But if he !{st}ays !{in} !{the} c!{lo}!{se}d",!Scroll
	db "space !{of} !{thi}s w!{or}ld, !{you} c!{an}",!Scroll
	db "f!{in}d !{hi}m !{wh}!{er}!{ev}!{er_}he runs.",!WaitKey,!Scroll
	db "Now, !{go} !{to} G!{an}!{on}'s",!Scroll
	db "Tow!{er}!!{2_}We !{wi}ll u!{se} our",!Scroll
	db "!{com}b!{in}!{ed_}!{pow}!{er}s !{to} b!{re}ak !{the}",!WaitKey,!Scroll
	db "!{ba}rri!{er}.!{2_}Let!{s_}!{re}turn peace !{to}",!Scroll
	db "!{the} coun!{tr}y w!{it}h!{out_}fail!{Dots}",!Scroll
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots}",!Sound2D,!End
;----------------------------------------
.message_313:
	db !Speed02,!Position01,!Window02
	db "May !{the} !{wa}y !{of} !{the} H!{er}o lead",!Line2
	db "!{to} !{the} Tri!{for}ce.",!End
;----------------------------------------
.message_314:
	db !Speed02,!Position01,!Window02
	db "Do !{you} und!{er}!{st}!{and}?",!Line2
	db "!{4_}>!{2_}Yes",!Line3
	db "!{4_}!{4_}Not !{at_}all",!Choose,!End
;----------------------------------------
.message_315:
	db "!{Name}, !{we} !{are_}!{go}!{ing_}!{to} b!{re}ak",!Line2
	db "!{the} !{ba}rri!{er_}!{of} G!{an}!{on}!{s_}Tow!{er}",!Line3
	db "w!{it}h our !{pow}!{er}.",!End
;----------------------------------------
.message_316:
	db !Speed02,!Position01,!Window02
	db "I app!{re}ci!{at}e !{you}r !{com}!{ing_}!{so} far",!Line2
	db "!{to} !{re}scue !{me}.!{2_}As I thought,",!Line3
	db "!{you} !{are_}!{the} leg!{en}dary H!{er}o.",!WaitKey,!Scroll
	db "I !{have} felt !{thi}s !{fro}m !{the} fir!{st}",!Scroll
	db "ti!{me} !{we} !{me}t.",!Scroll
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots}",!WaitKey,!Scroll
	db "G!{an}!{on} !{is} !{wa}!{it}!{ing_}!{in}side !{of} !{hi}s",!Scroll
	db "!{to}w!{er_}!{to} pass through !{the}",!Scroll
	db "g!{at}e l!{in}k!{ing_}!{the} two w!{or}lds.",!WaitKey,!Scroll
	db "Once G!{an}!{on} !{ent}!{er}s !{the} Light",!Scroll
	db "W!{or}ld, !{it} !{is} unlike!{ly_}!{tha}t",!Scroll
	db "!{an}y!{on}e !{can_}!{st}op !{hi}m.",!WaitKey,!Scroll
	db "But if he !{st}ays !{in} !{the} c!{lo}!{se}d",!Scroll
	db "space !{of} !{thi}s w!{or}ld, !{you} c!{an}",!Scroll
	db "f!{in}d !{hi}m !{wh}!{er}!{ev}!{er_}he runs.",!WaitKey,!Scroll
	db "So!{me} !{ma}id!{en}s !{st}ill ne!{ed_}!{you}r",!Scroll
	db "help, though.!{2_}Once !{you} !{re}scue",!Scroll
	db "!{the}m all, !{go} !{to} G!{an}!{on}!{s_}Tow!{er}.",!WaitKey,!Scroll
	db "We !{wh}o !{are_}!{of} !{the} b!{lo}odl!{in}e !{of}",!Scroll
	db "!{the} sages !{wi}ll th!{en_}u!{se} our",!Scroll
	db "!{pow}!{er_}!{to} b!{re}ak",!WaitKey,!Scroll
	db "G!{an}!{on}!{s_}!{ba}rri!{er}!!{2_}",!Scroll
	db "!{Name}!{Dots}!{2_}!{You} !{mu}!{st} !{re}turn",!Scroll
	db "peace !{to} !{thi}s coun!{tr}y!{Dots}",!End
;----------------------------------------
.message_317:
	db "A!{ha}h!{Dots} !{Name}!",!Line2
	db "I !{have} !{be}!{en_}!{wa}!{it}!{ing_}!{for} !{you}!",!Line3
	db "Heh heh heh!{Dots}",!WaitKey,!Scroll
	db "I !{wa}s hop!{ing_}I could !{ma}ke Zelda",!Scroll
	db "v!{an}!{is}h !{in} !{fro}nt !{of} !{you}r eyes.",!Scroll
	db "Behold!!{2_}!{The} l!{ast} mom!{ent} !{of}",!WaitKey,!Scroll
	db "Pr!{in}cess Zelda!",!End
;----------------------------------------
.message_318:
	db "Ho ho ho!{Dots}!{2_}W!{it}h !{thi}s, !{the}",!Line2
	db "!{se}al !{of} !{the} s!{ev}!{en_}sages !{is}",!Line3
	db "!{at_}l!{ast} brok!{en}.",!WaitKey,!Scroll
	db "It !{is} now !{on}!{ly_}a m!{at}t!{er_}!{of} ti!{me}",!Scroll
	db "!{be}!{for}e !{ev}il !{pow}!{er_}cov!{er}s !{thi}s",!Scroll
	db "l!{and}!{Dots}",!WaitKey,!Scroll
	db "Aft!{er_}all, !{the} leg!{en}dary H!{er}o",!Scroll
	db "c!{an}!{not} defe!{at_}us, !{the} !{tr}i!{be} !{of}",!Scroll
	db "!{ev}il, !{wh}!{en_}!{we} !{are_}arm!{ed_}w!{it}h",!WaitKey,!Scroll
	db "!{the} Gold!{en_}Pow!{er}.",!Scroll
	db "Ho ho ho!{Dots} Now, I !{mu}!{st} !{go}!",!End
;----------------------------------------
.message_319:
	db "Oh, !{so}?!{Dots}!{2_}!{You} !{me}!{an} !{to} say !{you}",!Line2
	db "would like !{to} !{be} !{to}tally",!Line3
	db "!{des}!{tr}oyed?!{2_}Well, I !{can_}!{ma}ke",!WaitKey,!Scroll
	db "!{you}r w!{is}h !{com}e !{tr}ue!",!End
;----------------------------------------
.message_320:
	db "Grrrrugh!!{2_}Well !{me}t!!{2_}Like !{the}",!Line2
	db "!{tr}ue H!{er}o th!{at_}!{you} a!{re}!{Dots}",!Line3
	db "But I am !{not} !{re}ady !{to} adm!{it}",!WaitKey,!Scroll
	db "defe!{at_}yet.!{2_}I !{wi}ll draw !{you}",!Scroll
	db "!{in}!{to} !{the} Dark W!{or}ld!",!End
;----------------------------------------
.message_321:
	db "Ho ho ho!!{2_}It!{s_}g!{re}!{at_}th!{at_}!{you}",!Line2
	db "could !{com}e !{all_}!{the} !{wa}y h!{er}e,",!Line3
	db "!{Name}.",!WaitKey,!Scroll
	db "I'm v!{er}y !{ha}ppy !{to} !{se}e !{you}",!Scroll
	db "ag!{ain}, but",!Scroll
	db "!{you}'d !{be}tt!{er_}!{be}li!{ev}e th!{at_}!{we}",!WaitKey,!Scroll
	db "!{wi}ll !{not} !{have} a t!{hi}rd !{me}et!{in}g!",!Scroll
	db "P!{re}p!{are_}!{to} !{me}et !{you}r !{do}om!",!End
;----------------------------------------
.message_322:
	db "Wah !{ha} !{ha}!!{2_}Wh!{at_}!{do} !{you} !{wa}nt,",!Line2
	db "l!{it}tle m!{an}?!{2_}Do !{you} !{have}",!Line3
	db "!{some}!{thin}g !{to} ask !{me}?",!WaitKey,!Scroll
	db "!{4_}>!{2_}I !{wa}nt !{the} flipp!{er}s",!Scroll
	db "!{4_}!{4_} I !{just} dropp!{ed_}by",!Choose,!End
;----------------------------------------
.message_323:	; Flippers cost
	db "Wah !{ha} !{ha}!!{2_}But I !{do}!{nt_}!{just}",!Line2
	db "!{give_}flipp!{er}s a!{wa}y !{for} f!{re}e.",!Line3
	db "I !{se}ll !{the}m !{for} 500 R!{up}ees a",!WaitKey,!Scroll
	db "pair.",!WaitKey,!Scroll
	db "Wh!{at_}!{do} !{you} !{do}?",!Scroll
	db "!{4_}>!{2_}Pay 500 R!{up}ees",!Scroll
	db "!{4_}!{4_} Qu!{it} aft!{er_}all",!Choose,!End
;----------------------------------------
.message_324:
	db "Wah !{ha} !{ha}!!{2_}One pair !{of}",!Line2
	db "flipp!{er}s !{com}!{ing_}!{up}.!{2_}I !{wi}ll",!Line3
	db "!{give_}!{you} a f!{re}e !{bo}nus w!{it}h",!WaitKey,!Scroll
	db "!{you}r purc!{has}e.",!Scroll
	db "I !{wi}ll let !{you} u!{se} !{the} !{ma}gic",!Scroll
	db "w!{at}!{er_}!{wa}ys !{of} !{the} !{se}a folk",!WaitKey,!Scroll
	db "w!{hi}ch l!{in}k !{la}kes !{and_}riv!{er}s.",!Scroll
	db "Wh!{en_}!{you} !{se}e a w!{hi}rlpool, !{di}ve",!Scroll
	db "!{in}!{to} !{it}.!{2_}!{You} n!{ev}!{er_}!{know} !{wh}!{er}e",!WaitKey,!Scroll
	db "!{you}'ll surface!!{2_}Wah !{ha} !{ha}!",!End
;----------------------------------------
.message_325:
	db "Wade !{ba}!{ck} !{thi}s !{wa}y !{wh}!{en_}!{you}",!Line2
	db "!{have} m!{or}e R!{up}ees!{Dots}",!Line3
	db "Wah !{ha} !{ha}!!{2_}I'll !{se}e !{you} ag!{ain}!",!End
;----------------------------------------
.message_326:
	db "G!{re}!{at}!!{2_}Wh!{en}!{ev}!{er_}!{you} !{wa}nt !{to}",!Line2
	db "!{se}e my f!{is}hy face, !{you} a!{re}",!Line3
	db "!{we}l!{com}e h!{er}e.",!WaitKey,!Scroll
	db "!{Dots}",!Scroll
	db "Wah !{ha} !{ha}!!{2_}Good bye!{Dots}!",!End
;----------------------------------------
.message_327:
	db "Hi !{Name}!",!Line2
	db "Eld!{er}?!{2_}A!{re_}!{you} talk!{ing_}a!{bo}ut",!Line3
	db "!{the} gr!{and}pa?!{2_}OK,!{2_}but !{do}n't",!WaitKey,!Scroll
	db "tell !{an}y !{of} !{the} !{ba}d peo!{ple}",!Scroll
	db "a!{bo}ut !{thi}s.",!Scroll
	db "He!{s_}!{hi}d!{ing_}!{in} !{the} pa!{la}ce p!{ast}",!WaitKey,!Scroll
	db "!{the} c!{ast}le.",!Scroll
	db "I !{wi}ll !{ma}rk !{the} spot !{on} !{you}r",!Scroll
	db "!{ma}p.!{2_}H!{er}e !{you} a!{re}!{Dots}",!Sound2D,!End
;----------------------------------------
.message_328:
	db "Did !{you} !{me}et !{the} gr!{and}pa?!{2_}If",!Line2
	db "!{all_}!{the} !{ba}d peo!{ple} !{go} a!{wa}y, he",!Line3
	db "!{can_}!{com}e !{ba}!{ck} !{to} !{the} vil!{la}ge.",!End
;----------------------------------------
.message_329:
	db "!{You}'!{re_}new h!{er}e, ar!{en}'t !{you}?",!Line2
	db "Did !{you} !{com}e h!{er}e !{lo}ok!{ing_}!{for}",!Line3
	db "!{the} Gold!{en_}Pow!{er}?",!WaitKey,!Scroll
	db "Well, !{you}'!{re_}!{to}o l!{at}e.!{2_}It !{wi}ll",!Scroll
	db "o!{be}y !{on}!{ly_}!{the} fir!{st} p!{er}s!{on} !{wh}o",!Scroll
	db "!{to}u!{che}s !{it}.",!WaitKey,!Scroll
	db "!{The} m!{an} !{wh}o l!{ast} c!{la}im!{ed_}!{the}",!Scroll
	db "Gold!{en_}Pow!{er_}w!{is}h!{ed_}!{for} !{thi}s",!Scroll
	db "w!{or}ld.!{2_}It !{re}flects !{hi}s h!{ear}t.",!WaitKey,!Scroll
	db "Yes, I ca!{me} h!{er}e !{be}cau!{se} !{of}",!Scroll
	db "g!{re}!{ed_}!{for} !{the} Gold!{en_}Pow!{er},",!Scroll
	db "!{and_}!{lo}ok !{wh}!{at_}!{ha}pp!{en}!{ed_}!{to} !{me}!{Dots}",!WaitKey,!Scroll
	db "To !{re}!{st}!{or}e !{the} Sacr!{ed_}Realm,",!Scroll
	db "a p!{er}s!{on} w!{or}thy !{of} !{the} Gold!{en}",!Scroll
	db "Pow!{er_}!{mu}!{st} defe!{at_}!{the} m!{an} !{wh}o",!WaitKey,!Scroll
	db "c!{re}!{at}!{ed_}!{thi}s p!{la}ce!{Dots}",!Scroll
	db "Until th!{at_}ti!{me}, I am !{st}u!{ck} !{in}",!Scroll
	db "!{thi}s bizar!{re_}s!{ha}pe.",!WaitKey,!Scroll
	db "But !{wh}!{at_}a m!{is}c!{hi}!{ev}ous !{thin}g",!Scroll
	db "!{to} leave ly!{ing_}ar!{ound}!{Dots}",!Scroll
	db "!{The} Gold!{en_}Pow!{er}!{Dots}",!WaitKey,!Scroll
	db "Tri!{for}ce!{Dots}",!End
;----------------------------------------
.message_330:
	db "!{4_} -My!{st}!{er}ious P!{on}d-",!Line2
	db "Wo!{nt_}!{you} throw !{some}!{thin}g !{in}?",!Line3
	db !WaitKey,!Scroll
	db "Wh!{at_}!{wi}ll !{you} !{do}?",!Scroll
	db "!{4_}> Throw !{an} !{it}em",!Scroll
	db "!{4_}!{4_}D!{on}'t !{tr}y !{it}",!Choose,!End
;----------------------------------------
.message_331:
	db "D!{on}'t !{do} !{it}!",!End
;----------------------------------------
.message_332:
	db "D!{on}'t !{do} !{it}!",!End
;----------------------------------------
.message_333:
	db "I !{wi}ll !{give_}!{thi}s !{ba}!{ck} !{to} !{you}",!Line2
	db "!{the}n.!{2_}D!{on}'t drop !{it} ag!{ain}.",!End
;----------------------------------------
.message_334:
	db "How m!{an}y R!{up}ees !{wi}ll !{you} !{to}ss?",!Line2
	db "!{4_}> !{Number01}!{Number00} R!{up}ees",!Line3
	db "!{4_}!{3_}!{Number03}!{Number02} R!{up}ees",!Choose,!End
;----------------------------------------
.message_335:
	db "!{You} !{are_}!{an} h!{on}e!{st} p!{er}s!{on}.",!Line2
	db "I like !{you}.",!Line3
	db "I !{wi}ll !{give_}!{you} !{some}!{thin}g",!WaitKey,!Scroll
	db "imp!{or}t!{an}t!{Dots}",!Scroll
	db "!{The}!{se} !{are_}!{the} Silv!{er_}Arrows.",!Scroll
	db "To !{give_}G!{an}!{on} !{hi}s l!{ast}",!WaitKey,!Scroll
	db "mom!{ent}, !{you} def!{in}!{it}e!{ly_}need",!Scroll
	db "!{the}m!!{2_}I !{know} I !{do}!{nt_}qu!{it}e !{have}",!Scroll
	db "!{the} figu!{re_}!{of} a fairy.",!WaitKey,!Scroll
	db "G!{an}!{on}!{s_}cruel !{pow}!{er}",!Scroll
	db "!{is} !{to} b!{la}!{me}!",!Scroll
	db "!{You} !{mu}!{st} defe!{at_}G!{an}!{on}!",!End
;----------------------------------------
.message_336:
	db !Line2
	db "!{3_}G!{re}!{at_}Lu!{ck}.",!End
;----------------------------------------
.message_337:
	db !Line2
	db "!{3_}Good Lu!{ck}.",!End
;----------------------------------------
.message_338:
	db !Line2
	db "!{3_}A L!{it}tle Lu!{ck}.",!End
;----------------------------------------
.message_339:
	db !Line2
	db "!{3_}Big Trou!{ble}.",!End
;----------------------------------------
.message_340:
	db "F!{or} !{you}r !{re}f!{er}!{en}ce, !{to}day !{you}",!Line2
	db "!{wi}ll !{have}",!End
;----------------------------------------
.message_341:
	db "!{You} f!{ound} a piece !{of} H!{ear}t!",!Line2
	db "!{4_}!{4_}!{4_}!{4_} ",!1HeartL,!1HeartR,!End
;----------------------------------------
.message_342:
	db "!{You} f!{ound} a piece !{of} H!{ear}t!",!Line2
	db "!{4_}!{4_}!{4_}!{4_} ",!2HeartL,!1HeartR,!End
;----------------------------------------
.message_343:
	db "!{You} f!{ound} a piece !{of} H!{ear}t!",!Line2
	db "!{4_}!{4_}!{4_}!{4_} ",!3HeartL,!3HeartR,!End
;----------------------------------------
.message_344:
	db "!{You} f!{ound} a piece !{of} H!{ear}t!",!Line2
	db "!{4_}!{4_}!{4_}!{4_} ",!4HeartL,!4HeartR,!Line3
	db "!{You}r H!{ear}t l!{ev}el !{in}c!{re}a!{se}d!",!End
;----------------------------------------
.message_345:
	db "!{You} f!{ound} a H!{ear}t C!{on}t!{ain}!{er}!",!Line2
	db "!{4_}!{4_}!{4_}!{4_} ",!4HeartL,!4HeartR,!Line3
	db "!{You}r H!{ear}t l!{ev}el !{in}c!{re}a!{se}d!",!End
;----------------------------------------
.message_346:
	db "I !{wi}ll !{so}oth !{you}r w!{ound}s !{and}",!Line2
	db "!{com}!{for}t !{you}r w!{ear}!{in}ess!{Dots}",!Line3
	db "C!{lo}!{se} !{you}r eyes !{and_}!{re}!{la}x!{Dots}",!End
;----------------------------------------
.message_347:
	db "Oh?!{2_}Who !{are_}!{you}, Mr. Bunny?",!Line2
	db "!{Thi}s w!{or}ld !{is} like !{the} !{re}al",!Line3
	db "w!{or}ld, but !{ev}il !{has} tw!{is}t!{ed_}!{it}.",!WaitKey,!Scroll
	db "!{The} Gold!{en_}Pow!{er_}!{is} !{wh}!{at}",!Scroll
	db "ch!{an}g!{ed_}!{you}r s!{ha}pe !{to} !{re}flect",!Scroll
	db "!{wh}!{at_}!{is} !{in} !{you}r h!{ear}t !{and_}m!{in}d.",!WaitKey,!Scroll
	db "I am al!{wa}ys ch!{an}g!{ing_}my m!{in}d,",!Scroll
	db "!{so} I turn!{ed_}!{in}!{to} a !{ba}ll!{Dots}",!Scroll
	db "But if !{you} !{have} a b!{all_}called",!WaitKey,!Scroll
	db "!{the} Mo!{on} P!{ear}l, !{you} !{can_}keep",!Scroll
	db "!{you}r !{or}ig!{in}al s!{ha}pe h!{er}e.",!End
;----------------------------------------
.message_348:
	db "!{You} !{di}d!{nt_}ch!{an}ge !{you}r s!{ha}pe?",!Line2
	db "!{You} ar!{en}'t !{just} a n!{or}!{ma}l guy,",!Line3
	db "!{are_}!{you}?",!End
;----------------------------------------
.message_349:
	db "Wh!{at_}!{do} !{you} !{wa}nt?!",!Line2
	db "Do !{you} !{have} !{some}!{thin}g !{to} say",!Line3
	db "!{to} !{me}, sil!{ly_}rabb!{it}?!",!WaitKey,!Scroll
	db "I ca!{me} h!{er}e !{to} !{get} !{the} Gold!{en}",!Scroll
	db "Pow!{er_}but now I'm a f!{re}ak !{and}",!Scroll
	db "I c!{an}'t !{go} !{ba}!{ck} !{to} !{the} !{re}al",!WaitKey,!Scroll
	db "w!{or}ld!!{2_}If I !{on}!{ly_}!{ha}d !{the} Mo!{on}",!Scroll
	db "P!{ear}l !{fro}m !{the} Tow!{er_}Of H!{er}a, I",!Scroll
	db "could !{go} !{ba}!{ck} !{to} my !{or}ig!{in}al",!WaitKey,!Scroll
	db "s!{ha}pe!!{2_}I've !{go}t !{go}od !{re}as!{on}",!Scroll
	db "!{to} !{be} !{st}!{re}ss!{ed_}out!",!Scroll
	db "So !{ba}!{ck} !{of}f!!{2_}Shoo !{sh}oo!",!End
;----------------------------------------
.message_350:
	db "WOW!!{2_}!{You}r s!{ha}pe !{di}d!{nt_}ch!{an}ge!",!Line2
	db "!{You} !{go}t !{the} Mo!{on} P!{ear}l, huh?",!End
;----------------------------------------
.message_351:
	db "In such a d!{an}g!{er}ous w!{or}ld !{you}",!Line2
	db "!{ma}y ne!{ed_}m!{an}y !{thin}gs.!{2_}Select",!Line3
	db "!{some}!{thin}g th!{at_}!{you} like!{Dots}",!End
;----------------------------------------
	db !BankEnd
;----------------------------------------
warnpc $1D8000	; 0x0E8000
