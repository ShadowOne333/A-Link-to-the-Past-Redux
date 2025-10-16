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
	db "l!{it}tle w!{hi}le.",!WaitKey,!Line3
	db "D!{on}'t w!{or}ry. I'll !{be} !{ba}!{ck} by",!Scroll
	db "m!{or}n!{in}g. Plea!{se} !{do}!{nt_}leave",!Scroll
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
	db "!{4_}!{3_}Not !{at_}all",!Choose,!End
;----------------------------------------
.message_025:
	db "If !{you} defe!{at_}!{the} b!{is}hop, !{the}",!Line2
	db "peo!{ple} !{in} !{the} c!{ast}le might",!Line3
	db "!{re}g!{ain} !{the}ir s!{an}!{it}y.",!WaitKey,!Scroll
	db "Go collect !{all_}th!{re}e p!{en}d!{an}ts!",!End
;----------------------------------------
.message_026:
	db "Take tho!{se} th!{re}e p!{en}d!{an}ts !{to}",!Line2
	db "!{the} !{for}e!{st}. !{The} M!{ast}!{er_}Sw!{or}d",!Line3
	db "a!{wa}!{it}s !{you} !{the}!{re}.",!End
;----------------------------------------
.message_027:
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
	db "mova!{ble}. Do !{you} !{have} a",!Line3
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
	db "!{4_}!{3_}Not !{at_}all",!Choose,!End
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
	db "!{4_}!{3_}Not !{at_}all",!Choose,!End
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
	db "!{Dots}!{Dots}Truly?",!WaitKey,!Scroll
	db "!{Name}, I'm !{ast}!{on}!{is}hed th!{at}",!Scroll
	db "a !{you}ng m!{an} like !{you} !{is}",!Scroll
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
	db "!{4_}!{3_}Of cour!{se}!",!Choose,!End
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
	db "!{The}!{re} !{ma}y !{be} oth!{er_}",!Line2
	db "!{des}c!{en}d!{an}ts !{of} !{the} S!{ev}!{en_}",!Line3
	db "Sages !{hi}d!{ing_}!{fro}m !{the} c!{ast}le",!WaitKey,!Scroll
	db "!{so}l!{di}!{er}s. Seek !{the}m out.",!End
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
	db "cave e!{ast} !{of} Lake Hylia. Go",!Line3
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
	db "!{Dots}!{Dots}Truly?",!WaitKey,!Scroll
	db "!{Name}, I'm !{ast}!{on}!{is}hed th!{at}",!Scroll
	db "a !{you}ng m!{an} like !{you} !{is}",!Scroll
	db "s!{ear}c!{hi}ng !{for} !{the} sw!{or}d !{of}",!WaitKey,!Scroll
	db "!{ev}il!{s_}b!{an}e.",!WaitKey,!Scroll
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
	db "!{lo}c!{at}es a girl !{des}c!{en}d!{ed_}!{fro}m",!Line3
	db "!{the} S!{ev}!{en_}Sages - !{The} K!{in}g",!End
;----------------------------------------
.message_059:
	db "!{4_}!{4_}!{LinkL}!{LinkR}!{2_}WANTED!",!Line2
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
	db "!{Thi}s !{wa}y",!Line2
	db "!{4_}!{2_}!{Up} Lo!{st} Woods",!End
;----------------------------------------
.message_062:
	db "DANGER!",!Line2
	db "Bew!{are_}!{of} deep w!{at}!{er_}!{and_}Z!{or}a!",!End
;----------------------------------------
.message_063:
	db "Wel!{com}e !{to} !{the} Poti!{on} Shop.",!Line2
	db "!{The} W!{at}!{er}f!{all_}!{of} W!{is}!{hi}ng !{is}",!Line3
	db "!{just} ahead.",!End
;----------------------------------------
.message_064:
	db "!{Thi}s cave leads !{ba}!{ck} !{to}",!Line2
	db "Kakariko Vil!{la}ge.",!End
;----------------------------------------
.message_065:
	db "!{Thi}s !{wa}y",!Line2
	db "!{4_}!{2_}!{Down} Lake Hylia",!Line3
	db "!{4_}!{2_}!{Down} Shop",!End
;----------------------------------------
.message_066:
	db "!{Thi}s !{wa}y",!Line2
	db "!{4_}!{2_}!{Left} Kakariko Vil!{la}ge",!End
;----------------------------------------
.message_067:
	db "!{Thi}s !{wa}y",!Line2
	db "!{4_}!{2_} !{Left} Des!{er}t !{of} My!{st}!{er}y",!End
;----------------------------------------
.message_068:
	db "!{Thi}s !{wa}y",!Line2
	db "!{4_}!{2_}!{Up} Poti!{on} Shop",!Line3
	db "!{4_}!{2_}!{Right} W!{at}!{er}f!{all_}!{of} W!{is}!{hi}ng",!End
;----------------------------------------
.message_069:
	db "!{Thi}s !{wa}y",!Line2
	db "!{4_}!{2_}!{Right} E!{ast}!{er}n Tem!{ple}",!Line3
	db "!{4_}!{2_}!{Left} Hyrule C!{ast}le",!End
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
	db "!{4_}!{The} Hou!{se} !{of} Lum!{be}rja!{ck}s",!Line2
	db "!{4_}!{3_}!{3_}!{3_}Bun !{and_}Y!{an}",!End
;----------------------------------------
.message_073:
	db "!{Thi}s !{wa}y",!Line2
	db "!{4_}!{2_}!{Down} Kakariko Vil!{la}ge",!End
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
	db "I !{go}t a L!{an}t!{er}n! Now I !{can_}light",!Line2
	db "t!{or}!{che}s by p!{re}ss!{ing_}Y!",!End
;----------------------------------------
.message_082:
	db "It!{s_}a Boom!{er}!{an}g! I'll equip !{it}",!Line2
	db "w!{it}h Start !{and_}!{give_}!{it} a !{tr}y!",!End
;----------------------------------------
.message_083:
	db "I f!{ound} a Bow! Now I !{can_}!{sh}oot",!Line2
	db "arrows!",!WaitKey,!Line3
	db "Or !{at_}le!{ast} until I run out.",!End
;----------------------------------------
.message_084:
	db "I !{bo}rrow!{ed_}a Shovel! Ti!{me} !{to}",!Line2
	db "f!{in}d a !{go}od p!{la}ce !{to} !{di}g holes.",!Line3
	db "Let!{s_}!{get} !{di}gg!{in}g!",!End
;----------------------------------------
.message_085:
	db "Hey, !{it}!{s_}!{the} Magic Cape! I c!{an}",!Line2
	db "v!{an}!{is}h !{in}!{to} !{thin} air w!{it}h !{thi}s!",!WaitKey,!Line3
	db "But I !{go}tta w!{at}ch my !{ma}gic",!Scroll
	db "!{me}t!{er}!",!End
;----------------------------------------
.message_086:
	db "!{Thi}s !{is} Magic Powd!{er}! Let's",!Line2
	db "try spr!{in}kl!{ing_}!{it} !{on} !{en}emies",!Line3
	db "!{and_}various oth!{er_}!{thin}gs!",!End
;----------------------------------------
.message_087:
	db "I !{bo}ught Z!{or}a!{s_}Flipp!{er}s! I c!{an}",!Line2
	db "s!{wi}m easi!{ly_}through deep w!{at}!{er}",!Line3
	db "now!",!End
;----------------------------------------
.message_088:
	db "I !{go}t !{the} Pow!{er_}G!{lo}ves!",!Line2
	db "S!{tr}!{en}gth !{is} s!{we}ll!{ing_}!{in} !{bo}th !{of}",!Line3
	db "my arms.",!WaitKey,!Scroll
	db "Lift!{ing_}!{up} !{st}!{on}es !{wi}ll !{be} a",!Scroll
	db "b!{re}eze now!",!End
;----------------------------------------
.message_089:
	db "I !{go}t !{the} P!{en}d!{an}t !{of} Courage!",!Line2
	db "Let!{s_}!{sh}ow !{it} !{to} !{the} eld!{er}",!Line3
	db "Sa!{has}rah!{la}.",!WaitKey,!Scroll
	db "Two m!{or}e p!{en}d!{an}ts !{re}m!{ain}!",!End
;----------------------------------------
.message_090:
	db "I !{go}t !{the} P!{en}d!{an}t !{of} W!{is}!{do}m!",!Line2
	db "And I sudd!{en}!{ly_}feel a b!{it}",!Line3
	db "!{st}r!{on}g!{er}!",!WaitKey,!Scroll
	db "Ti!{me} !{to} !{go} !{for} !{the} f!{in}al",!Scroll
	db "p!{en}d!{an}t.",!End
;----------------------------------------
.message_091:
	db "I !{go}t !{the} P!{en}d!{an}t !{of} Pow!{er}!",!Line2
	db "Yeah!",!WaitKey,!Line3
	db "W!{it}h !{all_}th!{re}e p!{en}d!{an}ts, !{it}'s",!Scroll
	db "ti!{me} !{to} head !{to} !{the} !{for}e!{st} !{and}",!Scroll
	db "!{re}!{tr}i!{ev}e !{the} M!{ast}!{er_}Sw!{or}d!",!End
;----------------------------------------
.message_092:
	db "!{Thi}s Mu!{sh}room s!{me}lls like",!Line2
	db "s!{we}et, rott!{en_}fru!{it}.",!WaitKey,!Line3
	db "I !{can_}!{give_}!{it} !{to} !{so}!{me}!{on}e by",!Scroll
	db "p!{re}ss!{ing_}Y.",!End
;----------------------------------------
.message_093:
	db "!{Thi}s !{is} !{the} To!{me} !{of} Mu!{do}ra! I",!Line2
	db "!{can_}u!{se} !{it} !{to} deciph!{er_}!{the}",!Line3
	db "!{an}ci!{ent} Hyli!{an} l!{an}guage!",!End
;----------------------------------------
.message_094:
	db "I f!{ound} !{the} Mo!{on} P!{ear}l! It !{wi}ll",!Line2
	db "!{pro}tect my !{bo}dy !{fro}m !{the}",!Line3
	db "tw!{is}ted effects !{of} !{the} Gold!{en}",!WaitKey,!Scroll
	db "Pow!{er}.",!End
;----------------------------------------
.message_095:
	db "I f!{ound} !{the} Compass! Now, I c!{an}",!Line2
	db "p!{in}po!{in}t !{the} !{bo}ss m!{on}!{st}!{er}'s",!Line3
	db "!{lo}c!{at}i!{on}!",!End
;----------------------------------------
.message_096:
	db "I !{go}t a !{ma}p! I !{can_}p!{re}ss X !{to}",!Line2
	db "!{se}e !{the} dunge!{on} !{la}y!{out_}!{and_}my",!Line3
	db "!{lo}c!{at}i!{on}!",!End
;----------------------------------------
.message_097:
	db "I f!{ound} !{the} Ice Rod! It s!{en}ds a",!Line2
	db "s!{ha}rp c!{hi}ll cleav!{ing_}through",!Line3
	db "!{the} air.",!WaitKey,!Scroll
	db "But I !{go}tta w!{at}ch my !{ma}gic",!Scroll
	db "!{me}t!{er}!",!End
;----------------------------------------
.message_098:
	db "I f!{ound} !{the} Fi!{re_}Rod! It s!{en}ds",!Line2
	db "crims!{on} f!{la}!{me}s !{sh}oot!{in}g",!Line3
	db "through !{the} air.",!WaitKey,!Scroll
	db "But I !{go}tta w!{at}ch my !{ma}gic",!Scroll
	db "!{me}t!{er}!",!End
;----------------------------------------
.message_099:
	db "!{Thi}s !{is} !{the} Eth!{er_}Medalli!{on}! Its",!Line2
	db "!{ma}gic summ!{on}s icy w!{in}ds !{fro}m",!Line3
	db "!{the} !{up}p!{er_}!{at}mosph!{er}e.",!WaitKey,!Scroll
	db "!{Thi}s !{wi}ll !{re}al!{ly_}dr!{ain} my !{ma}gic",!Scroll
	db "!{me}t!{er}!",!End
;----------------------------------------
.message_100:
	db "!{Thi}s !{is} !{the} Bom!{bo}s Medalli!{on}!",!Line2
	db "Its !{ma}gic !{ma}kes !{the} gr!{ound}",!Line3
	db "!{er}!{up}t !{in} fi!{er}y exp!{lo}si!{on}s.",!WaitKey,!Scroll
	db "!{Thi}s !{wi}ll !{re}al!{ly_}dr!{ain} my !{ma}gic",!Scroll
	db "!{me}t!{er}!",!End
;----------------------------------------
.message_101:
	db "!{Thi}s !{is} !{the} Quake Medalli!{on}! Its",!Line2
	db "!{ma}gic cau!{se}s viol!{ent} t!{re}m!{or}s",!Line3
	db "!{and_}!{st}uns n!{ear}by !{en}emies.",!WaitKey,!Scroll
	db "!{Thi}s !{wi}ll !{re}al!{ly_}dr!{ain} my !{ma}gic",!Scroll
	db "!{me}t!{er}!",!End
;----------------------------------------
.message_102:
	db "I !{go}t !{the} Magic Hamm!{er}! Let's",!Line2
	db "!{go} p!{ound} !{so}!{me} !{st}akes !{in}!{to} !{the}",!Line3
	db "gr!{ound}.",!WaitKey,!Scroll
	db "He!{ck}, I'll p!{ound} !{ev}!{er}y!{thin}g! Bam",!Scroll
	db "!{ba}m ti!{me}!",!End
;----------------------------------------
.message_103:
	db "Oh, h!{er}e!{s_}!{the} Ocar!{in}a! Its",!Line2
	db "!{mu}sic su!{re}!{ly_}!{has} my!{st}!{er}ious",!Line3
	db "!{pow}!{er}!",!End
;----------------------------------------
.message_104:
	db "I f!{ound} !{the} C!{an}e !{of} So!{ma}ria!",!Line2
	db "Wh!{at_}a my!{st}!{er}ious !{st}aff!{Dots}",!WaitKey,!Line3
	db "!{Thi}s !{sh}ould !{be} a big help !{wh}!{en_}I",!Scroll
	db "l!{ear}n how !{to} u!{se} !{it}!",!End
;----------------------------------------
.message_105:
	db "BOING! !{Thi}s !{is} !{the} Hook!{sh}ot! It",!Line2
	db "ext!{en}ds, !{it} c!{on}!{tr}acts, !{and}!{Dots}",!Line3
	db "BOING!",!WaitKey,!Scroll
	db "I'll grap!{ple} !{all_}k!{in}ds !{of} !{thin}gs!",!End
;----------------------------------------
.message_106:
	db "I f!{ound} !{so}!{me} Bombs! Aft!{er}",!Line2
	db "p!{la}c!{ing_}a Bomb, I !{can_}pi!{ck} !{it} !{up}",!Line3
	db "w!{it}h A !{to} throw !{it}!",!End
;----------------------------------------
.message_107:
	db "I've !{go}t a Bottle! I !{can_}!{st}!{or}e",!Line2
	db "m!{an}y !{di}ff!{er}!{ent} !{thin}gs !{in}side",!Line3
	db "!{and_}u!{se} !{the}m l!{at}!{er}!",!End
;----------------------------------------
.message_108:
	db "I f!{ound} !{the} Big Key! Now I c!{an}",!Line2
	db "un!{lo}!{ck} !{do}!{or}s !{and_}!{che}!{st}s !{tha}t",!Line3
	db "!{do}!{nt_}op!{en_}w!{it}h n!{or}!{ma}l keys!",!End
;----------------------------------------
.message_109:
	db "I !{go}t !{the} T!{it}!{an}!{s_}M!{it}ts! I c!{an}",!Line2
	db "now lift !{the} dark, heavy",!Line3
	db "!{st}!{on}es th!{at_}w!{er}e impossi!{ble} !{to}",!WaitKey,!Scroll
	db "budge!",!End
;----------------------------------------
.message_110:
	db "I !{re}ceiv!{ed_}!{the} Magic Mirr!{or}!",!Line2
	db "It!{s_}blue, cl!{ear} !{and_}!{be}autiful!{Dots}",!WaitKey,!Line3
	db "Gaz!{ing_}!{in}!{to} !{it}, I feel like I'm",!Scroll
	db "!{be}!{ing_}s!{wa}l!{lo}w!{ed_}!{up} !{in}!{to} !{an}oth!{er}",!Scroll
	db "w!{or}ld!{Dots}",!End
;----------------------------------------
.message_111:
	db "!{Thi}s !{is} !{it}! !{The} M!{ast}!{er_}Sw!{or}d!",!WaitKey,!Line2
	db "!{Dots}No, I guess !{not}. Too !{ba}d.",!End
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
	db "Hehe! Excell!{ent}. !{Thi}s !{is} !{the} Red",!Line2
	db "Poti!{on}. Dr!{in}k !{it} !{to} !{re}!{st}o!{re} !{you}r",!Line3
	db "health.",!End
;----------------------------------------
.message_114:
	db "Hehe! Excell!{ent}. !{Thi}s !{is} !{the}",!Line2
	db "G!{re}!{en_}Poti!{on}. Dr!{in}k !{it} !{to}",!Line3
	db "!{re}!{st}!{or}e !{you}r !{ma}gic !{pow}!{er}.",!End
;----------------------------------------
.message_115:
	db "Hehe! Excell!{ent}. !{Thi}s !{is} !{the}",!Line2
	db "Blue Poti!{on}. Dr!{in}k !{it} !{to} !{re}!{st}!{or}e",!Line3
	db "!{you}r health !{and_}!{ma}gic !{pow}!{er}.",!End
;----------------------------------------
.message_116:
	db "I !{bo}rrow!{ed_}a Bug-C!{at}c!{hi}ng Net!",!Line2
	db "Hmm!{Dots} I w!{on}d!{er_}if I !{can_}c!{at}ch",!Line3
	db "oth!{er_}!{thin}gs !{be}si!{des} !{in}!{se}cts.",!End
;----------------------------------------
.message_117:
	db "I f!{ound} !{the} Blue Tunic! W!{ear}!{in}g",!Line2
	db "!{thi}s dec!{re}a!{se}s !{the} da!{ma}ge I",!Line3
	db "take! V!{er}y cool!",!End
;----------------------------------------
.message_118:
	db "I f!{ound} !{the} R!{ed_}Tunic! W!{ear}!{in}g",!Line2
	db "!{thi}s dec!{re}a!{se}s !{the} da!{ma}ge I",!Line3
	db "take !{ev}!{en_}m!{or}e !{tha}n !{the} Blue",!WaitKey,!Scroll
	db "Tunic!",!End
;----------------------------------------
.message_119:
	db "All right! My sw!{or}d !{just} !{go}t",!Line2
	db "!{st}r!{on}g!{er}! I feel !{it}s !{pow}!{er}",!Line3
	db "f!{lo}w!{ing_}through my !{bo}dy!",!End
;----------------------------------------
.message_120:
	db "I f!{ound} !{the} Mirr!{or} S!{hi}eld! It",!Line2
	db "!{can_}deflect !{be}ams I couldn't",!Line3
	db "b!{lo}!{ck} w!{it}h my old !{sh}ield.",!End
;----------------------------------------
.message_121:
	db "I !{go}t !{the} C!{an}e !{of} Byra! If I",!Line2
	db "!{wa}ve !{it} !{on}ce through !{the} air, a",!Line3
	db "r!{ing_}!{of} l!{ight_}!{wi}ll !{pro}tect me!",!End
;----------------------------------------
.message_122:
	db "Eh? It!{s_}!{lo}!{ck}ed. If I !{ha}d !{the}",!Line2
	db "Big Key, I m!{ight_}!{be} a!{ble} !{to} op!{en}",!Line3
	db "!{it}!",!End
;----------------------------------------
.message_123:
	db "I !{do}!{nt_}!{have} !{en}ough !{ma}gic",!Line2
	db "!{pow}!{er}. I guess I c!{an}'t u!{se} !{thi}s",!Line3
	db "r!{ight_}now.",!End
;----------------------------------------
.message_124:
	db "I !{go}t !{the} Pegasus Boots! If I",!Line2
	db "hold !{do}wn A, I !{can_}ram !{in}!{to}",!Line3
	db "!{en}emies w!{it}h a da!{sh} !{at}ta!{ck}!",!End
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
	db "I !{go}t !{the} P!{en}d!{an}t !{of} W!{is}!{do}m!",!WaitKey,!Line2
	db "Yeah!",!WaitKey,!Line3
	db "W!{it}h !{all_}th!{re}e p!{en}d!{an}ts, !{it}'s",!Scroll
	db "ti!{me} !{to} head !{to} !{the} !{for}e!{st} !{and}",!Scroll
	db "!{re}!{tr}i!{ev}e !{the} M!{ast}!{er_}Sw!{or}d!",!End
;----------------------------------------
.message_132:
	db "I !{go}t !{the} P!{en}d!{an}t !{of} Pow!{er}! And",!Line2
	db "I sudd!{en}!{ly_}feel a b!{it} !{st}r!{on}g!{er}!",!WaitKey,!Line3
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
	db "!{4_}!{3_}I'm leav!{in}g",!Choose,!End
;----------------------------------------
.message_134:
	db "All right, !{go} ahead !{and_}take",!Line2
	db "aim!",!End
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
	db "!{4_}-Spr!{ing_}!{of} Good F!{or}tune-",!Line2
	db "Throw !{in} !{so}!{me} r!{up}ees !{and_}!{you}r",!Line3
	db "w!{is}hes !{wi}ll su!{re}!{ly_}!{com}e !{tr}ue.",!WaitKey,!Scroll
	db "Will !{you} throw !{in} r!{up}ees?",!Scroll
	db "!{4_}> Su!{re}",!Scroll
	db "!{4_}!{3_}I'd r!{at}h!{er_}!{not}",!Choose,!End
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
	db "!{give_}!{you} !{some}!{thin}g !{be}tt!{er_}!{in}",!Line3
	db "!{re}turn.",!End
;----------------------------------------
.message_141:
	db "A!{re_}!{you} su!{re_}!{thi}s !{is} !{not} !{you}rs?",!Line2
	db "!{4_}> Really, !{it}!{s_}!{not}",!Line3
	db "!{4_}!{3_}It actual!{ly_}!{is}",!Choose,!End
;----------------------------------------
.message_142:
	db "!{You}'!{re_}a !{ba}ld-fac!{ed_}liar! Take",!Line2
	db "!{thi}s !{ba}!{ck} !{at_}!{on}ce!",!End
;----------------------------------------
.message_143:
	db "I !{go}t !{the} Magic Boom!{er}!{an}g! !{Thi}s",!Line2
	db "!{on}e flies f!{ast}!{er_}!{and_}far!{the}r",!Line3
	db "!{tha}n my old !{on}e.",!End
;----------------------------------------
.message_144:
	db "My !{sh}ield !{just} !{go}t bigg!{er}!",!Line2
	db "Fi!{re}!{ba}lls wo!{nt_}!{be} a !{pro}!{ble}m",!Line3
	db "!{an}ym!{or}e!",!End
;----------------------------------------
.message_145:
	db "!{The}!{se} !{are_}!{the} Silv!{er} Arrows!",!Line2
	db "I'll u!{se} !{the}m !{to} f!{in}!{is}h !{of}f",!Line3
	db "G!{an}!{on}!",!End
;----------------------------------------
.message_146:
	db "My !{bo}ttle !{go}t fill!{ed_}w!{it}h !{the}",!Line2
	db "G!{re}!{en_}Poti!{on}! One he!{ck} !{of} a",!Line3
	db "!{ba}rg!{ain}!",!End
;----------------------------------------
.message_147:
	db "My sw!{or}d !{go}t !{ev}!{en} !{st}r!{on}g!{er}",!Line2
	db "!{tha}n !{be}!{for}e! It feels !{wa}rm !{to}",!Line3
	db "!{the} !{to}uch!{Dots}",!End
;----------------------------------------
.message_148:
	db "!{You}r lu!{ck} !{has} !{in}c!{re}a!{se}d by !{Number03}!{Number02}",!Line2
	db "r!{up}ees. Th!{at_}br!{in}gs !{you}r !{to}tal",!Line3
	db "lu!{ck} !{to} !{Number01}!{Number00}.",!WaitKey,!Scroll
	db "!{You} feel a l!{it}tle lu!{ck}i!{er_}!{tha}n",!Scroll
	db "!{be}!{for}e.",!End
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
	db "!{Thi}s sm!{all_}!{ble}ss!{ing_}!{is} !{the} le!{ast}",!Scroll
	db "I !{can_}!{do}.",!End
;----------------------------------------
.message_151:
	db "!{The}n I'll !{in}c!{re}a!{se} !{you}r",!Line2
	db "capac!{it}y, al!{lo}w!{ing_}!{you} !{to} carry",!Line3
	db "a !{to}tal !{of} !{Number01}!{Number00} Arrows.",!WaitKey,!Scroll
	db "!{Thi}s sm!{all_}!{ble}ss!{ing_}!{is} !{the} le!{ast}",!Scroll
	db "I !{can_}!{do}.",!End
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
	db "Ah!{Dots} W!{at}ch !{you}r !{st}ep. !{The}!{re}",!Line2
	db "!{are_}holes !{in} !{the} gr!{ound}. Could",!Line3
	db "!{you} turn r!{ight_}h!{er}e?",!WaitKey,!Scroll
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
	db "By !{the} !{wa}y, !{the}!{re}!{s_}a h!{ear}t !{in}",!Line2
	db "!{the} pot.",!End
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
	db "take !{me} a!{lo}ng? I !{lo}!{st} my",!WaitKey,!Scroll
	db "l!{an}t!{er}n.",!End
;----------------------------------------
.message_157:
	db "!{The} !{ma}id!{en}s !{wh}o w!{er}e",!Line2
	db "sacrific!{ed_}!{ma}y !{st}ill !{be} alive",!Line3
	db "!{so}!{me}!{wh}!{er}e. I've !{go}t !{to} !{be}li!{ev}e",!WaitKey,!Scroll
	db "th!{at_}a H!{er}o !{wi}ll app!{ear} !{to}",!Scroll
	db "!{re}scue !{the}m.",!WaitKey,!Scroll
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
	db "!{ma}gic !{to} op!{en_}!{so}!{me} k!{in}d !{of}",!WaitKey,!Scroll
	db "passage.",!WaitKey,!Scroll
	db "!{You} !{mu}!{st} !{go} !{to} !{the} !{to}w!{er_}!{at}op",!Scroll
	db "!{thi}s mount!{ain} !{to} !{re}!{tr}i!{ev}e !{an}",!Scroll
	db "!{or}b call!{ed_}!{the} Mo!{on} P!{ear}l.",!WaitKey,!Scroll
	db "All I !{can_}!{do} !{for} !{you} !{is} !{so}o!{the}",!Scroll
	db "!{you}r w!{ear}!{in}ess!{Dots} Co!{me} !{ba}!{ck} !{an}y",!Scroll
	db "ti!{me}.",!End
;----------------------------------------
.message_159:
	db "!{The} Mo!{on} P!{ear}l !{is} !{an} artifact",!Line2
	db "!{des}t!{in}!{ed_}!{for} !{the} H!{er}o !{wh}o",!Line3
	db "v!{ent}u!{re}s !{to} !{the} Sacr!{ed_}Realm.",!WaitKey,!Scroll
	db "It !{wi}ll !{pro}tect !{hi}m !{fro}m !{the}",!Scroll
	db "!{ma}gical !{pow}!{er_}th!{at_}ch!{an}ges",!Scroll
	db "peo!{ple}'s !{for}ms.",!WaitKey,!Scroll
	db "Now th!{at_}I !{se}e !{you} !{have}",!Scroll
	db "obt!{ain}!{ed_}!{it}, !{you} !{mu}!{st} su!{re}!{ly_}!{be}",!Scroll
	db "!{the} H!{er}o I !{wa}s !{wa}!{it}!{ing_}!{for}.",!WaitKey,!Scroll
	db "Plea!{se}, !{go} !{and_}!{re}scue !{the}",!Scroll
	db "!{ma}id!{en}s!",!End
;----------------------------------------
.message_160:
	db "Is th!{at_}!{you}, !{Name}? It !{se}ems",!Line2
	db "!{the} b!{is}hop c!{on}nect!{ed_}!{the} two",!Line3
	db "w!{or}lds !{so}!{me}!{wh}!{er}e n!{ear} !{the}",!WaitKey,!Scroll
	db "c!{ast}le.",!WaitKey,!Scroll
	db "If !{you} !{are_}head!{ing_}!{to} !{the} Dark",!Scroll
	db "W!{or}ld, th!{at_}!{sh}ould !{be} !{you}r",!Scroll
	db "next !{des}t!{in}!{at}i!{on}.",!End
;----------------------------------------
.message_161:
	db "(!{mu}mbl!{ing_}sleepily) My s!{on}",!Line2
	db "!{lo}v!{ed_}p!{la}y!{ing_}!{the} ocar!{in}a, but",!Line3
	db "w!{ent} !{of}f s!{ear}c!{hi}ng !{for} !{the}",!WaitKey,!Scroll
	db "Gold!{en_}Pow!{er_}!{and_}n!{ev}!{er}",!Scroll
	db "!{re}turned!{Dots}",!WaitKey,!Scroll
	db "I w!{on}d!{er_}!{wh}!{er}e he !{is} !{and_}!{wh}!{at}",!Scroll
	db "he!{s_}!{up} !{to} now!{Dots} Zzzzz!{Dots}",!Scroll
	db "Zzzzz!{Dots}",!End
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
	db "To !{on}e w!{ear}!{ing_}a cape, a Piece",!Line2
	db "!{of} H!{ear}t !{is} !{you}rs !{for} !{the}",!Line3
	db "taking.",!End
;----------------------------------------
.message_169:
	db "C!{at}!{ast}rophe !{sh}!{all_}!{be}f!{all_}!{an}y",!Line2
	db "!{wh}o throw !{some}!{thin}g !{in}!{to} !{thi}s",!Line3
	db "p!{on}d.",!End
;----------------------------------------
.message_170:
	db "!{Thi}s !{wa}y",!Line2
	db "!{4_}!{2_}!{Up} Skull Woods",!Line3
	db "!{4_}!{2_}!{Down} Outc!{ast} Vil!{la}ge",!End
;----------------------------------------
.message_171:
	db "!{Thi}s !{wa}y",!Line2
	db "!{4_}!{2_}!{Right} Cave",!End
;----------------------------------------
.message_172:
	db "!{Thi}s !{wa}y",!Line2
	db "!{4_}!{2_}!{Right} S!{ha}!{do}w Tem!{ple}",!End
;----------------------------------------
.message_173:
	db "!{Thi}s !{wa}y",!Line2
	db "!{4_}!{2_}!{Left} Bomb Shop",!End
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
	db "!{Thi}s !{wa}y",!Line2
	db "!{4_}!{2_}!{Right}!{Up} Lake !{of} C!{at}!{ast}rophe",!End
;----------------------------------------
.message_178:
	db "Ev!{er}y!{on}e !{has} !{be}!{en_}act!{in}g",!Line2
	db "!{st}r!{an}ge!{ly_}s!{in}ce th!{at_}b!{is}hop",!Line3
	db "Agh!{an}im !{sh}ow!{ed_}!{up}.",!WaitKey,!Scroll
	db "I w!{on}d!{er_}if I'll !{ev}!{ent}ual!{ly_}!{get}",!Scroll
	db "affected!{Dots}",!End
;----------------------------------------
.message_179:
	db "Hey !{you}! !{You}'!{re_}!{not} al!{lo}w!{ed_}!{in}",!Line2
	db "!{the} c!{ast}le, kid. Go !{get} !{so}!{me}",!Line3
	db "sleep!",!End
;----------------------------------------
.message_180:
	db !Window02
	db "!{Name}, !{it} !{is} I, Sa!{has}rah!{la}.",!Line2
	db "Let !{me} !{give_}!{you} !{so}!{me} advice.",!WaitKey,!Line3
	db "!{The}!{re}!{s_}a t!{re}asu!{re_}!{in} !{thi}s",!Scroll
	db "tem!{ple} !{you} !{can_}u!{se} !{to} defe!{at}",!Scroll
	db "m!{on}!{st}!{er}s c!{la}d !{in} !{ev}!{en_}!{the}",!WaitKey,!Scroll
	db "!{st}r!{on}ge!{st} arm!{or}. Be su!{re_}!{to}",!Scroll
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
	db "!{4_}!{2_}!{Snake1}!{Snake2}!{Waves1}!{Waves2}!{Waves1}!{Waves2}"
	db "!{3_}!{Snake1}!{Snake2}!{Waves1}!{Waves2}!{Waves1}!{Waves2}"
	db "!{3_}!{Ankh1}!{Ankh2}!{Waves1}!{Waves2}!{Waves1}!{Waves2}",!Line2

	db "!{4_}!{4_}!{2_}!{Ankh1}!{Ankh2}"
	db "!{3_}!{Snake1}!{Snake2}!{Waves1}!{Waves2}!{Waves1}!{Waves2}!{Snake1}!{Snake2}"
	db "!{3_}!{Ankh1}!{Ankh2}",!Line3

	db "!{3_}!{2_}!{Snake1}!{Snake2}!{Waves1}!{Waves2}!{Waves1}!{Waves2}"
	db "!{3_}!{Ankh1}!{Ankh2}!{Snake1}!{Snake2}!{Snake1}!{Snake2}!{Ankh1}!{Ankh2}"
	db "!{3_}!{Waves1}!{Waves2}!{Waves1}!{Waves2}!{Ankh1}!{Ankh2}",!End
;----------------------------------------
.message_183:	; Master Sword pedestal
	db "In hour !{of} !{the} C!{at}aclysm,",!Line2
	db "ar!{is}e a H!{er}o like !{the} dawn.",!WaitKey,!Line3
	db "Of knight!{ly_}pe!{di}g!{re}e,",!Scroll
	db "!{be}ar!{ing_}sigils th!{re}e,",!Scroll
	db "by such h!{and}s !{wi}ll b!{la}de",!WaitKey,!Scroll
	db "!{be} drawn.",!End
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
	db "!{Name}, !{it} !{is} I, Sa!{has}rah!{la}. !{You}",!Line2
	db "!{mu}!{st} ign!{it}e four t!{or}!{che}s !{in}",!Line3
	db "!{or}d!{er_}!{to} op!{en_}!{the} !{wa}y !{for}!{wa}rd.",!End
;----------------------------------------
.message_188:
	db "!{4_}!{4_}!{Snake1}!{Snake2}!{Snake1}!{Snake2}!{Ankh1}!{Ankh2}!{Waves1}!{Waves2}"
	db "!{3_}!{Snake1}!{Snake2}!{Waves1}!{Waves2}!{Waves1}!{Waves2}!{Snake1}!{Snake2}",!Line2
	db "!{4_}!{4_}!{3_}!{Ankh1}!{Ankh2}"
	db "!{3_}!{Waves1}!{Waves2}!{Snake1}!{Snake2}!{Ankh1}!{Ankh2}!{Waves1}!{Waves2}",!Line3
	db "!{4_}!{4_}!{Waves1}!{Waves2}!{Waves1}!{Waves2}!{Snake1}!{Snake2}!{Waves1}!{Waves2}"
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
	db "!{Name}, !{it} !{is} I, Sa!{has}rah!{la}.",!Line2
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
	db "You've !{di}scov!{er}!{ed_}my !{hi}dd!{en}",!Line2
	db "room. Keep !{thi}s a !{se}c!{re}t",!Line3
	db "!{be}t!{we}!{en_}us.",!End
;----------------------------------------
.message_200:
	db "I caught a !{be}e!",!WaitKey,!Line2
	db "Wh!{at_}!{sh}ould I !{do}?",!Line3
	db "!{4_}> I'll put !{it} !{in} a !{bo}ttle",!Scroll
	db "!{4_}!{3_}Let!{s_}!{se}t !{it} f!{re}e",!Choose,!End
;----------------------------------------
.message_201:
	db "I caught a fairy!",!WaitKey,!Line2
	db "Wh!{at_}!{sh}ould I !{do}?",!Line3
	db "!{4_}> I'll put !{it} !{in} a !{bo}ttle",!Scroll
	db "!{4_}!{3_}Let!{s_}!{se}t !{it} f!{re}e",!Choose,!End
;----------------------------------------
.message_202:
	db "I !{do}!{nt_}!{have} !{an}y empty",!Line2
	db "!{bo}ttles. Oh !{we}ll!{Dots} I guess I'll !{se}t",!Line3
	db "!{it} f!{re}e.",!End
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
	db "!{4_}!{3_}D!{on}'t ne!{ed_}!{it}",!Choose,!End
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
	db "Yo, !{Name}! !{You} !{se}em !{to} !{be} !{in}",!Line2
	db "a heap !{of} !{tr}ou!{ble}, but !{thi}s !{is}",!Line3
	db "!{all_}I !{can_}!{give_}!{you}.",!End
;----------------------------------------
.message_216:
	db "Ah, !{it}!{s_}!{you}! I'm !{so} g!{la}d !{to} !{se}e",!Line2
	db "!{you} ag!{ain}!",!WaitKey,!Line3
	db "So, !{wh}!{at_}!{do} !{you} need?",!Scroll
	db "!{4_}> Temp!{er_}my sw!{or}d",!Scroll
	db "!{4_}!{3_}Ju!{st} dropp!{ing_}by",!Choose,!End
;----------------------------------------
.message_217:
	db "I'll !{give_}!{you} a big !{di}scount!",!Line2
	db "!{4_}> H!{er}e!{s_}10 r!{up}ees",!Line3
	db "!{4_}!{3_}Wa!{it} a m!{in}ute",!Choose,!End
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
	db "w!{it}hout !{me}.",!WaitKey,!Scroll
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
	db "!{4_}!{3_}No !{wa}y",!Choose,!End
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
	db "Jo-m!{on}!{Dots} jo-m!{on}!{Dots}",!WaitKey,!Line2
	db "S!{ear}ch !{for} !{the} Mo!{on} P!{ear}l !{in} a",!Line3
	db "mount!{ain} !{to}w!{er}.",!End
;----------------------------------------
.message_240:
	db !Position01,!Speed03
	db "Jo-m!{on}!{Dots} jo-m!{on}!{Dots}",!WaitKey,!Line2
	db "!{The} b!{is}hop!{s_}!{bo}dy c!{an}!{not} !{be}",!Line3
	db "!{ha}r!{me}d, !{ev}!{en_}by !{the} M!{ast}!{er}",!Scroll
	db "Sw!{or}d.",!End
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
	db "!{4_}!{3_}I'll pass",!Choose,!End
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
	db "!{4_}!{3_}Not !{in}t!{er}e!{st}ed",!Choose,!End
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
	db "caus!{in}' !{the} r!{ain}!{st}!{or}m !{in} !{the}",!WaitKey,!Scroll
	db "!{bo}g.",!WaitKey,!Scroll
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
	db "!{4_}!{3_}I'll tell !{ev}!{er}y!{on}e",!Choose,!End
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
	db "!{4_}!{Ankh1}!{Ankh2}!{Ankh1}!{Ankh2}"
	db "!{3_}!{Ankh1}!{Ankh2}!{Snake1}!{Snake2}!{Waves1}!{Waves2}!{Ankh1}!{Ankh2}!{Waves1}!{Waves2}"
	db "!{3_}!{Waves1}!{Waves2}!{Snake1}!{Snake2}!{Waves1}!{Waves2}",!Line2
	db "!{4_}!{4_}!{Waves1}!{Waves2}!{Snake1}!{Snake2}!{Snake1}!{Snake2}"
	db "!{3_}!{Waves1}!{Waves2}!{Snake1}!{Snake2}!{Snake1}!{Snake2}!{Waves1}!{Waves2}!{Ankh1}!{Ankh2}",!Line3
	db "!{3_}!{2_}!{Waves1}!{Waves2}!{Waves1}!{Waves2}!{Snake1}!{Snake2}!{Ankh1}!{Ankh2}!{Waves1}!{Waves2}"
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
	db "succeed!{ed_}w!{er}e h!{ear}d !{fro}m",!Wait03,!Scroll
	db "ag!{ain}.",!Wait05,!Scroll
	db "And w!{or}!{se}, a my!{st}!{er}ious !{ev}il",!Scroll
	db "!{pow}!{er_}!{be}g!{an} !{to} f!{lo}w !{out_}!{fro}m",!Scroll
	db "!{the}!{re}.",!Wait05,!NextPic,!NextPic,!Scroll
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
	db "elim!{in}!{at}!{ed_}through !{the}",!Line3
	db "t!{re}a!{che}ry !{of} a my!{st}!{er}ious",!Wait02,!Scroll
	db "b!{is}hop !{know}n as Agahnim,",!Scroll
	db "!{wh}o !{ha}d !{be}!{en_}p!{lo}tt!{ing_}!{the}",!Scroll
	db "!{wh}ole ti!{me} !{to} b!{re}ak !{the} !{se}al.",!Wait04,!Wait05,!End
;----------------------------------------
.message_276:	; Intro sequence (3)
	db !Window02,!Color07,!Speed03,!Line1
	db "Agahnim m!{an}ipul!{at}!{ed_}!{the}",!Line2
	db "c!{ast}le !{so}l!{di}!{er}s !{in}!{to} captur!{in}g",!Line3
	db "!{ma}id!{en}s !{des}c!{en}d!{ed_}!{fro}m !{the}",!Wait02,!Scroll
	db "S!{ev}!{en_}Sages. !{The}!{se} girls w!{er}e",!Scroll
	db "th!{en_}sacrificed, !{on}e aft!{er}",!Scroll
	db "!{an}oth!{er}.",!Wait04,!Wait05,!End
;----------------------------------------
.message_277:	; Intro sequence (4)
	db !Window02,!Color07,!Speed03,!Line1
	db "!{The} f!{at}eful hour !{wh}!{er}e",!Line2
	db "Pr!{in}cess Zelda !{wi}ll !{be}",!Line3
	db "sacrific!{ed_}!{is} draw!{ing_}n!{ear}.",!Wait03,!Wait05,!End
;----------------------------------------
.message_278:
	db "It !{se}ems !{to} !{be} !{lo}!{ck}!{ed_}tight.",!Line2
	db "Guess I'll !{just} carry !{it} ar!{ound}",!Line3
	db "!{for} now.",!End
;----------------------------------------
.message_279:
	db "100 r!{up}ees !{for} 30 Bombs! 30",!Line2
	db "Bombs !{for} !{just} 100 r!{up}ees!",!Line3
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
	db "!{4_}!{3_}I'll !{tr}y !{it} my!{se}lf",!Choose,!End
;----------------------------------------
.message_284:
	db "Ki ki! Hmph!{Dots} Do !{it} !{you}r!{se}lf,",!Line2
	db "!{the}n! Kiki ki!",!End
;----------------------------------------
.message_285:
	db "Ki ki! !{Tha}t!{s_}!{the} spir!{it}! I'll take",!Line2
	db "100 r!{up}ees! Kiki ki!",!End
;----------------------------------------
.message_286:
	db "I'm Kiki !{the} m!{on}key! I !{lo}ve",!Line2
	db "r!{up}ees m!{or}e !{tha}n !{an}y!{thin}g. C!{an}",!Line3
	db "!{you} sp!{are_}10 r!{up}ees?",!WaitKey,!Scroll
	db "Wh!{at_}!{do} !{you} say?",!Scroll
	db "!{4_}> H!{er}e!{s_}10 r!{up}ees",!Scroll
	db "!{4_}!{3_}Not giv!{ing_}!{an}y!{thin}g",!Choose,!End
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
	db "Sages pass!{ed_}!{do}wn !{to} !{the}ir",!WaitKey,!Scroll
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
	db "sleep!{ing_}M!{ast}!{er_}Sw!{or}d as !{you}r",!WaitKey,!Scroll
	db "own.",!End
;----------------------------------------
.message_295:
	db "A!{ha}! Th!{at_}!{is} !{the} To!{me} !{of}",!Line2
	db "Mu!{do}ra! W!{it}h !{it}, !{you} c!{an}",!Line3
	db "!{com}p!{re}h!{en}d !{the} l!{an}guage !{of}",!WaitKey,!Scroll
	db "!{the} Hyli!{an}s.",!End
;----------------------------------------
.message_296:
	db "!{You} !{are_}!{the} H!{er}o, !{in}deed. I am",!Line2
	db "c!{er}t!{ain} !{you} !{wi}ll !{re}turn peace",!Line3
	db "!{to} !{thi}s l!{and}.",!End
;----------------------------------------
.message_297:
	db "Look !{at_}how !{you}'ve grown",!Line2
	db "aft!{er_}!{you}r !{tr}ial !{in} !{the} !{des}!{er}t.",!Line3
	db "!{You} !{are_}a v!{er}y !{pro}m!{is}!{in}g !{you}ng",!WaitKey,!Scroll
	db "m!{an}.",!End
;----------------------------------------
.message_298:
	db "Was !{it} !{you} !{wh}o !{di}!{st}ur!{be}d my",!Line2
	db "nap? H!{er}e, take !{thi}s !{and} !{go}",!Line3
	db "a!{wa}y.",!End
;----------------------------------------
.message_299:
	db "I !{have} !{not}!{hi}ng el!{se} !{to} give",!Line2
	db "!{you}, !{so} take !{thi}s !{in}!{st}ead!",!End
;----------------------------------------
.message_300:
	db "Yo, !{Name}! A !{st}r!{an}ge m!{is}t !{has}",!Line2
	db "fall!{en_}ov!{er_}!{the} !{for}e!{st}. If",!Line3
	db "!{you}'!{re_}head!{ing_}!{in}, !{ple}a!{se} !{be}",!WaitKey,!Scroll
	db "ca!{re}ful.",!End
;----------------------------------------
.message_301:
	db "!{Thi}s t!{re}e feels k!{in}da odd as !{we}",!Line2
	db "cut !{it}. Any!{wa}y, !{ba}!{ck} !{to} w!{or}k!",!End
;----------------------------------------
.message_302:
	db "Looks like !{the} !{for}e!{st} m!{is}t",!Line2
	db "cl!{ear}!{ed_}!{up}. !{Tha}nks! Now !{we} !{can_}",!Line3
	db "!{go} !{the}!{re} ag!{ain}! Right, bro?!",!End
;----------------------------------------
.message_303:
	db "Hey, !{Name}! I'm fight!{ing_}w!{it}h",!Line2
	db "my !{you}ng!{er_}broth!{er}, !{so} I !{se}aled",!Line3
	db "!{of}f !{the} !{do}!{or} !{to} !{hi}s room.",!End
;----------------------------------------
.message_304:
	db "So !{you} broke through !{the} !{wa}ll,",!Line2
	db "eh?",!WaitKey,!Line3
	db "Ah !{we}ll!{Dots} May!{be} I'll !{go} !{ma}ke !{up}",!Scroll
	db "w!{it}h !{hi}m!{Dots}",!End
;----------------------------------------
.message_305:
	db "Hey !{Name}, !{di}d !{you} !{com}e !{fro}m",!Line2
	db "my old!{er_}broth!{er}!{s_}room? Is he",!Line3
	db "!{st}ill !{an}gry?",!End
;----------------------------------------
.message_306:
	db !Speed02,!Position01,!Window02
	db "!{Name}, !{be}cau!{se} !{of} !{you}, I !{wa}s",!Line2
	db "a!{ble} !{to} escape !{fro}m !{the}",!Line3
	db "dem!{on}!{s_}clut!{che}s. !{Tha}nk !{you}.",!WaitKey,!Scroll
	db "!{Thi}s w!{or}ld !{wa}s !{on}ce a Sac!{re}d",!Scroll
	db "Realm !{wh}!{er}e !{the} Tri!{for}ce",!Scroll
	db "!{re}sided.",!WaitKey,!Scroll
	db "But !{the} Tri!{for}ce !{wa}s c!{la}i!{me}d",!Scroll
	db "by G!{an}!{on}, !{the} m!{ast}!{er_}!{of}",!Scroll
	db "!{thi}!{ev}es, !{wh}o!{se} !{ev}il !{des}i!{re}s",!WaitKey,!Scroll
	db "!{tr}!{an}s!{for}m!{ed_}!{thi}s w!{or}ld.",!WaitKey,!Scroll
	db "He !{has} !{be}!{en_}p!{lo}tt!{ing_}!{to}",!Scroll
	db "c!{on}qu!{er_}!{the} L!{ight_}W!{or}ld as",!Scroll
	db "!{so}!{on} as he g!{ain}s !{en}ough",!WaitKey,!Scroll
	db "!{pow}!{er}.",!WaitKey,!Scroll
	db "G!{an}!{on} us!{ed_}us s!{ev}!{en_}!{ma}id!{en}s",!Scroll
	db "as !{the} key !{to} b!{re}ak!{ing_}!{the}",!Scroll
	db "!{se}al, !{for} !{we} !{in}h!{er}!{it}!{ed_}!{the}",!WaitKey,!Scroll
	db "!{pow}!{er_}!{of} !{the} S!{ev}!{en_}Sages.",!WaitKey,!Scroll
	db "He !{in}t!{en}ds !{to} op!{en_}a !{la}rg!{er}",!Scroll
	db "passage n!{ear} !{the} c!{ast}le. But",!Scroll
	db "!{Name}, !{the}!{re} !{is} !{st}ill ti!{me}.",!WaitKey,!Scroll
	db "To!{get}h!{er}, !{we} !{ma}id!{en}s !{wi}ll !{be}",!Scroll
	db "!{pow}!{er}ful !{en}ough !{to} !{des}!{tr}oy",!Scroll
	db "!{the} !{ba}rri!{er_}surround!{ing_}G!{an}!{on}'s",!WaitKey,!Scroll
	db "!{hi}d!{ing_}p!{la}ce.",!WaitKey,!Scroll
	db "I !{wi}ll now u!{se} my !{pow}!{er_}!{to}",!Scroll
	db "r!{ev}eal !{the} !{lo}c!{at}i!{on} !{of} !{the}",!Scroll
	db "oth!{er_}!{ma}id!{en}s.",!Sound2D,!WaitKey,!Scroll
	db "I'm c!{er}t!{ain} !{you} !{wi}ll !{des}!{tr}oy",!Scroll
	db "G!{an}!{on}, !{and_}!{we}'ll f!{in}al!{ly_}!{re}turn",!Scroll
	db "!{to} our !{or}ig!{in}al !{for}ms.",!End
;----------------------------------------
.message_307:
	db !Speed02,!Position01,!Window02
	db "!{Name}, !{be}cau!{se} !{of} !{you}, I !{wa}s",!Line2
	db "a!{ble} !{to} escape !{fro}m !{the}",!Line3
	db "dem!{on}!{s_}clut!{che}s. !{Tha}nk !{you}.",!WaitKey,!Scroll
	db "!{The} Tri!{for}ce !{wi}ll gr!{an}t !{the}",!Scroll
	db "w!{is}hes !{of} !{wh}o!{ev}!{er_}!{to}u!{che}s !{it}",!Scroll
	db "!{for} as !{lo}ng as !{the}y live.",!WaitKey,!Scroll
	db "Th!{at_}!{is} !{wh}y !{it} !{wa}s kept !{in} !{the}",!Scroll
	db "Sacr!{ed_}Realm, w!{it}h !{it}s !{lo}c!{at}i!{on}",!Scroll
	db "pass!{ed_}!{do}wn !{on}!{ly_}am!{on}g a",!WaitKey,!Scroll
	db "!{se}lect few.",!WaitKey,!Scroll
	db "Yet !{thi}s l!{in}e !{of} !{know}ledge !{has}",!Scroll
	db "!{be}!{en_}brok!{en}, !{and_}!{the}",!Scroll
	db "Tri!{for}ce!{s_}!{lo}c!{at}i!{on} !{lo}!{st}.",!WaitKey,!Scroll
	db "Th!{at_}!{is}, until !{the} Sacr!{ed_}Realm",!Scroll
	db "!{wa}s !{di}scov!{er}!{ed_}by a !{thi}ef",!Scroll
	db "nam!{ed_}G!{an}!{on}!{do}rf.",!WaitKey,!Scroll
	db "Our !{on}!{ly_}!{ble}ss!{ing_}!{is} th!{at_}he",!Scroll
	db "n!{ev}!{er_}l!{ear}n!{ed_}how !{to} !{re}turn !{to}",!Scroll
	db "!{the} L!{ight_}W!{or}ld.",!WaitKey,!Scroll
	db "Wa!{it}! !{You} pos!{se}ss a Magical",!Scroll
	db "Mirr!{or} th!{at_}!{on}!{ly_}!{the} H!{er}o c!{an}",!Scroll
	db "u!{se}, !{do} !{you} !{not}?",!WaitKey,!Scroll
	db "!{The}!{re} !{are_}oth!{er_}p!{or}tals like",!Scroll
	db "!{the} !{on}e !{on} Hebra Mount!{ain}. If",!Scroll
	db "!{you} u!{se} tho!{se} a!{lo}ng w!{it}h",!WaitKey,!Scroll
	db "!{the} mirr!{or} !{to} !{tr}avel !{be}t!{we}!{en}",!Scroll
	db "!{the} two w!{or}lds, !{you} !{can_}su!{re}ly",!Scroll
	db "!{re}ach !{the} oth!{er_}!{ev}il m!{on}!{st}!{er}s",!WaitKey,!Scroll
	db "th!{at_}lurk !{in} !{the} Dark W!{or}ld.",!WaitKey,!Scroll
	db "I'm pray!{ing_}!{you}'ll !{be} !{the} !{on}e !{to}",!Scroll
	db "defe!{at_}G!{an}!{on}!{do}rf !{the} !{thi}ef -",!Scroll
	db "no, G!{an}!{on}, K!{ing_}!{of} Dem!{on}s!",!End
;----------------------------------------
.message_308:
	db !Speed02,!Position01,!Window02
	db "!{Name}, !{be}cau!{se} !{of} !{you}, I !{wa}s",!Line2
	db "a!{ble} !{to} escape !{fro}m !{the}",!Line3
	db "dem!{on}!{s_}clut!{che}s. !{Tha}nk !{you}.",!WaitKey,!Scroll
	db "Do !{you} !{know} !{the} !{pro}phecy !{of}",!Scroll
	db "!{the} G!{re}!{at_}C!{at}aclysm? !{Thi}s !{is}",!Scroll
	db "how I h!{ear}d !{it}.",!WaitKey,!Scroll
	db "If a p!{er}s!{on} w!{it}h !{an} !{ev}il h!{ear}t",!Scroll
	db "obt!{ain}s !{the} Tri!{for}ce, a H!{er}o",!Scroll
	db "!{is} !{des}t!{in}!{ed_}!{to} app!{ear}.",!WaitKey,!Scroll
	db "Th!{at_}h!{er}o a!{lo}ne !{wi}ll face",!Scroll
	db "!{the} !{on}e !{wh}o !{se}t !{of}f",!Scroll
	db "!{the}!{se} !{des}!{tr}uctive !{ev}!{ent}s.",!WaitKey,!Scroll
	db "Should !{the} H!{er}o fail, !{the}",!Scroll
	db "!{ent}i!{re_}w!{or}ld !{wi}ll f!{all_}und!{er_}!{the}",!Scroll
	db "!{sh}roud !{of} !{the} adv!{er}sary!{s_}!{ev}il",!WaitKey,!Scroll
	db "h!{ear}t.",!WaitKey,!Scroll
	db "On!{ly_}!{on}e !{des}c!{en}d!{ed_}!{fro}m !{the}",!Scroll
	db "Knights K!{in}sm!{en_}!{wh}o !{pro}tected",!Scroll
	db "!{the} Hyli!{an} royal fami!{ly_}c!{an}",!WaitKey,!Scroll
	db "!{be}!{com}e !{thi}s H!{er}o.",!WaitKey,!Scroll
	db "!{You} !{are_}!{of} th!{at_}b!{lo}odl!{in}e, a!{re}",!Scroll
	db "!{you} !{not}? !{The}n !{it}!{s_}!{up} !{to} !{you}",!Scroll
	db "!{to} !{re}scue Pr!{in}cess Zelda!",!End
;----------------------------------------
.message_309:
	db !Speed02,!Position01,!Window02
	db "!{Name}, !{be}cau!{se} !{of} !{you}, I !{wa}s",!Line2
	db "a!{ble} !{to} escape !{fro}m !{the}",!Line3
	db "dem!{on}!{s_}clut!{che}s. !{Tha}nk !{you}.",!WaitKey,!Scroll
	db "Wh!{en_}!{the} S!{ev}!{en_}Sages w!{er}e",!Scroll
	db "!{se}al!{ing_}!{the} passage !{to} !{the}",!Scroll
	db "Dark W!{or}ld, !{the} Knights K!{in}sm!{en}",!WaitKey,!Scroll
	db "vali!{an}t!{ly_}def!{en}d!{ed_}!{the}m !{fro}m",!Scroll
	db "!{the} !{at}ta!{ck}s !{of} dem!{on}s.",!WaitKey,!Scroll
	db "!{The}y say !{the} b!{lo}odl!{in}e !{of}",!Scroll
	db "tho!{se} knights !{wa}s almo!{st} !{wi}ped",!Scroll
	db "!{out_}!{in} !{the} cour!{se} !{of} !{tha}t",!WaitKey,!Scroll
	db "b!{at}tle!{Dots}",!WaitKey,!Scroll
	db "!{You} !{ma}y !{just} !{be} !{the} v!{er}y l!{ast}",!Scroll
	db "!{of} !{the}ir !{des}c!{en}d!{an}ts.",!WaitKey,!Scroll
	db "How !{in}c!{re}!{di}!{ble} !{it} !{is} !{for} !{the}",!Scroll
	db "l!{ast} !{of} !{the}ir b!{lo}odl!{in}e !{to}",!Scroll
	db "pot!{ent}ial!{ly_}!{be}!{com}e !{the} H!{er}o!",!WaitKey,!Scroll
	db "I'm c!{er}t!{ain} th!{at_}!{you} !{have} !{wh}!{at}",!Scroll
	db "!{it} takes !{to} defe!{at_}G!{an}!{on}!",!End
;----------------------------------------
.message_310:
	db !Speed02,!Position01,!Window02
	db "!{Name}, !{be}cau!{se} !{of} !{you}, I !{wa}s",!Line2
	db "a!{ble} !{to} escape !{fro}m !{the}",!Line3
	db "dem!{on}!{s_}clut!{che}s. !{Tha}nk !{you}.",!WaitKey,!Scroll
	db "It !{is} said !{the} Hyli!{an} peo!{ple}",!Scroll
	db "!{on}ce !{wi}eld!{ed_}my!{st}!{er}ious !{pow}!{er}s",!Scroll
	db "like th!{at_}!{of} !{the} S!{ev}!{en_}Sages.",!WaitKey,!Scroll
	db "Yet ov!{er_}ti!{me}, Hyli!{an} b!{lo}od !{has}",!Scroll
	db "!{thi}nned, !{and_}!{ev}!{en_}!{we}",!Scroll
	db "!{des}c!{en}d!{an}ts !{of} !{the} S!{ev}!{en}",!WaitKey,!Scroll
	db "Sages !{have} !{mu}ch !{di}m!{in}!{is}hed",!Scroll
	db "!{pow}!{er}s.",!WaitKey,!Scroll
	db "If !{sh}own !{the} !{pow}!{er_}!{of} courage",!Scroll
	db "th!{at_}!{the} knights !{on}ce",!Scroll
	db "pos!{se}s!{se}d, !{the} w!{is}!{do}m pas!{se}d",!WaitKey,!Scroll
	db "!{do}wn !{to} us by !{the} S!{ev}!{en}",!Scroll
	db "Sages !{wi}ll grow !{st}r!{on}g!{er}!",!WaitKey,!Scroll
	db "On!{ly_}a !{sh}!{or}t ti!{me} !{re}m!{ain}s until",!Scroll
	db "!{the} passage l!{in}k!{ing_}!{the} two",!Scroll
	db "w!{or}lds !{at_}!{the} c!{ast}le op!{en}s",!WaitKey,!Scroll
	db "!{com}!{ple}tely.",!WaitKey,!Scroll
	db "If !{you} defe!{at_}G!{an}!{on}, !{the} Dark",!Scroll
	db "W!{or}ld !{wi}ll v!{an}!{is}h a!{lo}ng w!{it}h",!Scroll
	db "!{hi}m, !{and_}!{the} Tri!{for}ce !{wi}ll a!{wa}!{it}",!WaitKey,!Scroll
	db "a new m!{ast}!{er}.",!WaitKey,!Scroll
	db "!{Name}, I !{be}li!{ev}e !{in} !{you}. D!{on}'t",!Scroll
	db "!{ev}!{er_}!{give_}!{up}.",!End
;----------------------------------------
.message_311:
	db !Speed02,!Position01,!Window02
	db "!{Name}, !{be}cau!{se} !{of} !{you}, I !{wa}s",!Line2
	db "a!{ble} !{to} escape !{fro}m !{the}",!Line3
	db "dem!{on}!{s_}clut!{che}s. !{Tha}nk !{you}.",!WaitKey,!Scroll
	db "G!{an}!{on} captur!{ed_}us !{be}cau!{se} he",!Scroll
	db "could!{nt_}b!{re}ak !{the} !{se}al !{of} !{the}",!Scroll
	db "S!{ev}!{en_}Sages w!{it}h !{hi}s !{pow}!{er}",!WaitKey,!Scroll
	db "a!{lo}ne. He need!{ed_}!{the} !{pow}!{er}s !{we}",!Scroll
	db "!{in}h!{er}!{it}ed.",!WaitKey,!Scroll
	db "And !{so}, us!{ing_}!{the} b!{is}hop",!Scroll
	db "Agahnim as !{hi}s pawn, he d!{re}w",!Scroll
	db "us !{in}!{to} !{the} Dark W!{or}ld.",!WaitKey,!Scroll
	db "Once !{we} f!{in}!{is}h!{ed_}b!{re}ak!{ing_}!{the}",!Scroll
	db "!{se}al, !{we} w!{er}e no !{lo}ng!{er_}!{of} !{an}y",!Scroll
	db "u!{se}, !{so} he !{tr}app!{ed_}us !{in} !{the}!{se}",!WaitKey,!Scroll
	db "cry!{st}als !{and_}h!{and}!{ed_}us ov!{er_}!{to}",!Scroll
	db "!{the} m!{on}!{st}!{er}s.",!WaitKey,!Scroll
	db "But G!{an}!{on}!{s_}failu!{re_}!{to} account",!Scroll
	db "!{for} !{you} !{wi}ll !{be} !{hi}s un!{do}!{in}g.",!WaitKey,!Scroll
	db "!{Name}!{Dots} Pr!{in}cess Zelda !{is}",!Scroll
	db "!{wa}!{it}!{ing_}!{for} !{you} !{at_}Turtle Ro!{ck}.",!Scroll
	db "Go !{to} h!{er}.",!End
;----------------------------------------
.message_312:
	db !Speed02,!Position01,!Window02
	db "!{Name}, !{it}!{s_}ex!{tr}a!{or}!{di}nary",!Line2
	db "th!{at_}!{you}'ve !{com}e !{all_}!{thi}s !{wa}y.",!Line3
	db "Ju!{st} as I thought, !{you} !{tr}uly",!WaitKey,!Scroll
	db "!{are_}!{the} leg!{en}dary H!{er}o, !{and}",!Scroll
	db "I've felt !{thi}s !{fro}m !{the} fir!{st}",!Scroll
	db "ti!{me} !{we} !{me}t.",!WaitKey,!Scroll
	db "G!{an}!{on} put !{up} a !{ba}rri!{er_}ar!{ound}",!Scroll
	db "!{hi}s !{to}w!{er_}!{on} De!{at}h Mount!{ain},",!Scroll
	db "!{and_}he!{s_}!{wa}!{it}!{ing_}!{for} !{the} right",!WaitKey,!Scroll
	db "ti!{me} !{to} slip through a passage",!Scroll
	db "!{be}t!{we}!{en_}!{the} two w!{or}lds.",!WaitKey,!Scroll
	db "If G!{an}!{on} !{re}a!{che}s !{the} Light",!Scroll
	db "W!{or}ld, !{it} m!{ight_}!{not} !{be} possi!{ble}",!Scroll
	db "!{to} c!{at}ch !{hi}m.",!WaitKey,!Scroll
	db "But if he !{re}m!{ain}s !{in}side !{thi}s",!Scroll
	db "c!{lo}!{se}d-!{of}f !{re}alm, !{you} c!{an}",!Scroll
	db "!{tr}a!{ck} !{hi}m !{do}wn !{wh}!{er}!{ev}!{er_}he",!WaitKey,!Scroll
	db "runs.",!WaitKey,!Scroll
	db "It!{s_}ti!{me} !{to} take !{the} s!{ev}!{en}",!Scroll
	db "cry!{st}als !{to} G!{an}!{on}!{s_}Tow!{er}. We",!Scroll
	db "!{wi}ll b!{re}ach !{it}s !{ba}rri!{er_}w!{it}h our",!WaitKey,!Scroll
	db "!{com}b!{in}!{ed_}!{pow}!{er}s.",!Sound2D,!WaitKey,!Scroll
	db "!{Name}!{Dots} It !{is} !{up} !{to} us !{to}",!Scroll
	db "!{re}!{st}!{or}e peace !{to} our k!{in}g!{do}m.",!End
;----------------------------------------
.message_313:
	db !Speed02,!Position01,!Window02
	db "May !{the} !{wa}y !{of} !{the} H!{er}o lead",!Line2
	db "!{to} !{the} Tri!{for}ce.",!End
;----------------------------------------
.message_314:
	db !Speed02,!Position01,!Window02
	db "Do !{you} und!{er}!{st}!{and}?",!Line2
	db "!{4_}> Yes",!Line3
	db "!{4_}!{3_}Not !{at_}all",!Choose,!End
;----------------------------------------
.message_315:
	db "!{Name}, !{the} s!{ev}!{en_}!{of} us !{wi}ll",!Line2
	db "now !{com}b!{in}e our !{pow}!{er}s !{to}",!Line3
	db "b!{re}ach !{the} !{ba}rri!{er_}!{of} G!{an}!{on}'s",!WaitKey,!Scroll
	db "Tow!{er}!",!End
;----------------------------------------
.message_316:
	db !Speed02,!Position01,!Window02
	db "!{Name}, !{it}!{s_}ex!{tr}a!{or}!{di}nary",!Line2
	db "th!{at_}!{you}'ve !{com}e !{all_}!{thi}s !{wa}y.",!Line3
	db "Ju!{st} as I thought, !{you} !{tr}uly",!WaitKey,!Scroll
	db "!{are_}!{the} leg!{en}dary H!{er}o, !{and}",!Scroll
	db "I've felt !{thi}s !{fro}m !{the} fir!{st}",!Scroll
	db "ti!{me} !{we} !{me}t.",!WaitKey,!Scroll
	db "G!{an}!{on} put !{up} a !{ba}rri!{er_}ar!{ound}",!Scroll
	db "!{hi}s !{to}w!{er_}!{on} De!{at}h Mount!{ain},",!Scroll
	db "!{and_}he!{s_}!{wa}!{it}!{ing_}!{for} !{the} right",!WaitKey,!Scroll
	db "ti!{me} !{to} slip through a passage",!Scroll
	db "!{be}t!{we}!{en_}!{the} two w!{or}lds.",!WaitKey,!Scroll
	db "If G!{an}!{on} !{re}a!{che}s !{the} Light",!Scroll
	db "W!{or}ld, !{it} m!{ight_}!{not} !{be} possi!{ble}",!Scroll
	db "!{to} c!{at}ch !{hi}m.",!WaitKey,!Scroll
	db "But if he !{re}m!{ain}s !{in}side !{thi}s",!Scroll
	db "c!{lo}!{se}d-!{of}f !{re}alm, !{you} c!{an}",!Scroll
	db "!{tr}a!{ck} !{hi}m !{do}wn !{wh}!{er}!{ev}!{er_}he",!WaitKey,!Scroll
	db "runs.",!WaitKey,!Scroll
	db "How!{ev}!{er}, !{the}!{re} !{are_}!{st}ill",!Scroll
	db "!{ma}id!{en}s !{in} ne!{ed_}!{of} !{you}r help.",!WaitKey,!Scroll
	db "Once !{you} save !{all_}!{of} !{the}m,",!Scroll
	db "head !{to} G!{an}!{on}!{s_}Tow!{er}.",!WaitKey,!Scroll
	db "W!{it}h !{the} b!{lo}od !{of} !{the} S!{ev}!{en}",!Scroll
	db "Sages !{in} our ve!{in}s, !{we}'ll su!{re}ly",!Scroll
	db "b!{re}ach G!{an}!{on}!{s_}!{ba}rri!{er}.",!WaitKey,!Scroll
	db "!{Name}!{Dots} It !{is} !{up} !{to} us !{to}",!Scroll
	db "!{re}!{st}!{or}e peace !{to} our k!{in}g!{do}m.",!End
;----------------------------------------
.message_317:
	db "Ah, !{Name} !{the} Magnific!{ent}! I",!Line2
	db "!{have} !{be}!{en_}!{wa}!{it}!{ing_}!{for} !{you}! Heh",!Line3
	db "heh heh!{Dots}",!WaitKey,!Scroll
	db "!{You} !{know}, I !{wa}s actual!{ly_}hop!{in}g",!Scroll
	db "!{to} !{des}!{tr}oy Zelda r!{ight_}!{be}!{for}e",!Scroll
	db "!{you}r eyes.",!WaitKey,!Scroll
	db "Behold! !{The} f!{in}al mom!{ent} !{of}",!Scroll
	db "Pr!{in}cess Zelda!",!End
;----------------------------------------
.message_318:
	db "Mua!{ha}!{ha}!{ha}! W!{it}h !{thi}s f!{in}al",!Line2
	db "sacrifice, !{the} !{se}al !{of} !{the}",!Line3
	db "S!{ev}!{en_}Sages !{is} brok!{en_}!{at_}l!{ast}.",!WaitKey,!Scroll
	db "It !{is} !{on}!{ly_}a m!{at}t!{er_}!{of} ti!{me}",!Scroll
	db "!{be}!{for}e !{ev}il !{pow}!{er_}!{en}gulfs !{thi}s",!Scroll
	db "k!{in}g!{do}m.",!WaitKey,!Scroll
	db "!{You} !{se}e, !{ev}!{en_}!{the} !{so}-called",!Scroll
	db """Leg!{en}dary H!{er}o"" !{is} no m!{at}ch",!Scroll
	db "!{for} us dem!{on}s pos!{se}ss!{ing_}!{the}",!WaitKey,!Scroll
	db "Gold!{en_}Pow!{er}.",!WaitKey,!Scroll
	db "Mua!{ha}!{ha}!{ha}! I !{mu}!{st} !{be} !{go}!{in}g!",!End
;----------------------------------------
.message_319:
	db "Wh!{at}!{s_}!{thi}s? !{You} !{wa}nt !{to} !{be}",!Line2
	db "utt!{er}!{ly_}!{des}!{tr}oyed? Well, I'll",!Line3
	db "!{ma}ke !{you}r w!{is}h !{com}e !{tr}ue!",!End
;----------------------------------------
.message_320:
	db "Urggh!{Dots} Ju!{st} as I suspect!{ed_}!{of}",!Line2
	db "!{the} ""H!{er}o.""",!WaitKey,!Line3
	db "But !{thi}s !{is} !{not} !{the} !{en}d. I'll",!Scroll
	db "draw !{you} w!{it}h !{me} !{in}!{to} !{the}",!Scroll
	db "Dark W!{or}ld!",!End
;----------------------------------------
.message_321:
	db "Mua!{ha}!{ha}!{ha}! !{You} !{have} !{do}ne !{we}ll",!Line2
	db "!{to} !{ma}ke !{it} !{thi}s far, oh !{Name}",!Line3
	db "!{the} Magnific!{ent}.",!WaitKey,!Scroll
	db "I am !{so} v!{er}y !{ple}as!{ed_}!{to} !{me}et",!Scroll
	db "!{you} !{on}ce ag!{ain}.",!WaitKey,!Scroll
	db "But I !{re}g!{re}t !{to} !{in}!{for}m !{you}",!Scroll
	db "!{the}!{re} !{wi}ll !{be} no fur!{the}r",!Scroll
	db "!{me}et!{in}gs aft!{er_}!{thi}s.",!WaitKey,!Scroll
	db "Now DIE, damn !{you}!",!End
;----------------------------------------
.message_322:
	db "Heya! Wh!{at_}br!{in}gs !{you} ar!{ound}?",!Line2
	db "!{4_}> I !{wa}nt !{the} t!{re}asu!{re}",!Line3
	db "!{4_}!{3_}Ju!{st} v!{is}!{it}!{in}g",!Choose,!End
;----------------------------------------
.message_323:	; Flippers cost
	db "Oh yeah? !{You} c!{an}'t !{just} !{have}",!Line2
	db "!{it} !{for} f!{re}e. How a!{bo}ut I !{se}ll",!Line3
	db "!{it} !{for} 500 r!{up}ees?",!WaitKey,!Scroll
	db "Wh!{at_}!{do} !{you} say?",!Scroll
	db "!{4_}> H!{er}e!{s_}!{the} r!{up}ees",!Scroll
	db "!{4_}!{3_}N!{ev}!{er}m!{in}d",!Choose,!End
;----------------------------------------
.message_324:
	db "Wa!{ha}!{ha}! Right, h!{er}e!{s_}!{the}",!Line2
	db "Flipp!{er}s, !{and_}a l!{it}tle !{bo}nus!",!WaitKey,!Line3
	db "!{You} !{have} p!{er}m!{is}si!{on} !{to} u!{se} our",!Scroll
	db "!{se}c!{re}t w!{at}!{er}!{wa}ys c!{on}nect!{in}g",!Scroll
	db "Hyrule!{s_}riv!{er}s !{and_}!{la}kes. Ju!{st}",!WaitKey,!Scroll
	db "s!{wi}m !{in}!{to} !{an}y w!{hi}rlpool!",!WaitKey,!Scroll
	db "Now, take !{go}od c!{are_}!{of} tho!{se}",!Scroll
	db "Flipp!{er}s. Wa!{ha}!{ha}! L!{at}!{er}!",!End
;----------------------------------------
.message_325:
	db "Well, save !{you}r r!{up}ees !{and}",!Line2
	db "!{com}e !{ba}!{ck} !{wh}!{en_}!{you}'ve !{go}t !{the}",!Line3
	db "!{do}ugh. Wa!{ha}!{ha}! See ya ar!{ound}!",!End
;----------------------------------------
.message_326:
	db "Oh yeah? Co!{me} !{ba}!{ck} !{an}yti!{me}",!Line2
	db "!{you} w!{an}na !{se}e !{me} ag!{ain}.",!Line3
	db "Wa!{ha}!{ha}! Bye now!",!End
;----------------------------------------
.message_327:
	db "Heya, !{Name}! !{You} w!{an}na !{know}",!Line2
	db "!{wh}!{er}e !{the} eld!{er_}!{is}? Ju!{st} !{ma}ke",!Line3
	db "su!{re_}!{you} keep !{it} a !{se}c!{re}t !{fro}m",!WaitKey,!Scroll
	db "!{the} !{ba}d guys!",!WaitKey,!Scroll
	db "He!{s_}!{hi}d!{ing_}n!{ear} a tem!{ple} e!{ast}",!Scroll
	db "!{of} !{the} c!{ast}le. Look, I'll !{ma}rk",!Scroll
	db "!{it} !{on} !{you}r !{ma}p. H!{er}e !{you} !{go}!",!Sound2D,!End
;----------------------------------------
.message_328:
	db "Did !{you} !{me}et !{the} eld!{er}? Once",!Line2
	db "!{the} !{ba}d guys !{are_}!{all_}!{go}ne, he",!Line3
	db "!{can_}!{com}e !{ba}!{ck} ho!{me} !{to} !{the}",!WaitKey,!Scroll
	db "vil!{la}ge.",!End
;----------------------------------------
.message_329:
	db "Now, !{tha}t!{s_}a face I !{ha}v!{en}'t",!Line2
	db "!{se}!{en_}ar!{ound}! I take !{it} !{you}'!{re}",!Line3
	db "h!{er}e !{in} s!{ear}ch !{of} !{the} Gold!{en}",!WaitKey,!Scroll
	db "Pow!{er}.",!WaitKey,!Scroll
	db "Un!{for}tun!{at}ely, !{it} !{wi}ll !{on}!{ly_}o!{be}y",!Scroll
	db "!{the} !{on}e !{wh}o fir!{st} !{to}u!{che}s !{it}.",!WaitKey,!Scroll
	db "!{The} m!{an} !{wh}o c!{re}!{at}!{ed_}!{thi}s w!{or}ld",!Scroll
	db "brought !{for}th !{all_}th!{at_}!{you} !{se}e",!Scroll
	db "as a !{re}flecti!{on} !{of} !{hi}s h!{ear}t.",!WaitKey,!Scroll
	db "Yes, I !{to}o !{wa}s bl!{in}d!{ed_}by",!Scroll
	db "avarice !{and_}!{have} !{be}!{com}e a",!Scroll
	db "m!{on}!{st}!{er_}like !{the} oth!{er}s.",!WaitKey,!Scroll
	db "!{The}!{re} !{is} !{on}!{ly_}!{on}e !{wa}y !{to}",!Scroll
	db "!{re}!{st}!{or}e !{thi}s p!{la}ce !{to} !{wh}!{at_}!{it}",!Scroll
	db "!{wa}s!{Dots} A w!{or}thy H!{er}o !{mu}!{st}",!WaitKey,!Scroll
	db "ov!{er}throw !{the} vile adv!{er}sary",!Scroll
	db "!{and_}c!{la}im !{the} Gold!{en_}Pow!{er}.",!WaitKey,!Scroll
	db "Me!{an}w!{hi}le, I'll !{be} !{wa}!{it}!{in}g",!Scroll
	db "p!{at}i!{ent}!{ly_}!{in} !{thi}s !{for}m.",!WaitKey,!Scroll
	db "But how m!{is}c!{hi}!{ev}ous !{it} !{wa}s",!Scroll
	db "!{of} !{thi}s !{re}alm!{s_}!{or}ig!{in}al",!Scroll
	db "!{in}!{ha}b!{it}!{an}ts !{to} leave !{the} Gold!{en}",!WaitKey,!Scroll
	db "Pow!{er_}!{be}!{hi}nd.",!WaitKey,!Scroll
	db "Or !{to} c!{all_}!{it} by !{it}s !{tr}ue na!{me},",!Scroll
	db "!{the} Tri!{for}ce!{Dots}",!End
;----------------------------------------
.message_330:
	db "!{4_}!{3_}-My!{st}!{er}ious Spr!{in}g-",!Line2
	db "Wo!{nt_}!{you} throw !{some}!{thin}g !{in}?",!WaitKey,!Line3
	db "Wh!{at_}!{wi}ll !{you} !{do}?",!Scroll
	db "!{4_}> I'll !{to}ss !{an} !{it}em",!Scroll
	db "!{4_}!{3_}I'd r!{at}h!{er_}!{not}",!Choose,!End
;----------------------------------------
.message_331:
	db "Not !{go}nna !{do} !{it}!",!End
;----------------------------------------
.message_332:
	db "Not !{go}nna !{do} !{it}!",!End
;----------------------------------------
.message_333:
	db "I'll !{re}turn !{thi}s !{to} !{you}, but DO",!Line2
	db "NOT drop !{it} ag!{ain}!",!End
;----------------------------------------
.message_334:
	db "How m!{an}y r!{up}ees !{wi}ll !{you} !{to}ss?",!Line2
	db "!{4_}> !{Number01}!{Number00} r!{up}ees",!Line3
	db "!{4_}!{3_}!{Number03}!{Number02} r!{up}ees",!Choose,!End
;----------------------------------------
.message_335:
	db "!{You} !{are_}!{an} h!{on}e!{st} p!{er}s!{on}. I like",!Line2
	db "th!{at_}a!{bo}ut !{you}, !{so} I'll !{give_}!{you}",!Line3
	db "!{some}!{thin}g valua!{ble}.",!WaitKey,!Scroll
	db "!{The}!{se} !{are_}Silv!{er_}Arrows. !{You}'ll",!Scroll
	db "ne!{ed_}!{the}!{se} !{for} deliv!{er}!{ing_}!{the}",!Scroll
	db "f!{in}!{is}!{hi}ng b!{lo}w !{to} G!{an}!{on}!",!WaitKey,!Scroll
	db "!{You} !{know}, !{thi}s ex!{tr}a !{we}!{ight_}I",!Scroll
	db "put !{on} !{mu}!{st} !{be} due !{to} G!{an}!{on}'s",!Scroll
	db "!{ma}gic, !{so} !{ple}a!{se} !{ma}ke su!{re_}!{to}",!WaitKey,!Scroll
	db "defe!{at_}!{hi}m.",!End
;----------------------------------------
.message_336:
	db !Line2
	db "!{4_}!{4_}!{3_}G!{re}!{at_}!{ble}ss!{in}gs!",!End
;----------------------------------------
.message_337:
	db !Line2
	db "!{4_}!{4_} Mod!{er}!{at}e !{ble}ss!{in}gs.",!End
;----------------------------------------
.message_338:
	db !Line2
	db "!{4_}!{4_}!{3_}M!{in}!{or} !{ble}ss!{in}gs.",!End
;----------------------------------------
.message_339:
	db !Line2
	db "!{4_}!{4_}!{3_}A t!{er}ri!{ble} cur!{se}!",!End
;----------------------------------------
.message_340:
	db "By !{the} !{wa}y, !{you}r !{for}tune !{for}",!Line2
	db "!{to}day !{is}!{Dots}",!End
;----------------------------------------
.message_341:
	db "I f!{ound} a Piece !{of} H!{ear}t!",!Line2
	db "!{4_}!{4_}!{4_}!{4_} ",!1HeartL,!1HeartR,!End
;----------------------------------------
.message_342:
	db "I f!{ound} a Piece !{of} H!{ear}t!",!Line2
	db "!{4_}!{4_}!{4_}!{4_} ",!2HeartL,!1HeartR,!End
;----------------------------------------
.message_343:
	db "I f!{ound} a Piece !{of} H!{ear}t!",!Line2
	db "!{4_}!{4_}!{4_}!{4_} ",!3HeartL,!3HeartR,!End
;----------------------------------------
.message_344:
	db "I f!{ound} a Piece !{of} H!{ear}t!",!Line2
	db "!{4_}!{4_}!{4_}!{4_} ",!4HeartL,!4HeartR,!Line3
	db "My h!{ear}t l!{ev}el !{in}c!{re}a!{se}d!",!End
;----------------------------------------
.message_345:
	db "I f!{ound} a H!{ear}t C!{on}t!{ain}!{er}!",!Line2
	db "!{4_}!{4_}!{4_}!{4_} ",!4HeartL,!4HeartR,!Line3
	db "My h!{ear}t l!{ev}el !{in}c!{re}a!{se}d!",!End
;----------------------------------------
.message_346:
	db "W!{ear}y !{tr}avel!{er}, !{com}e !{and_}let",!Line2
	db "!{me} !{so}o!{the} !{you}r a!{che}s !{and}",!Line3
	db "p!{ain}s.",!WaitKey,!Scroll
	db "Now, c!{lo}!{se} !{you}r eyes !{for} a",!Scroll
	db "mom!{ent}!{Dots}",!End
;----------------------------------------
.message_347:
	db "Whee! Roll!{ing_}ar!{ound} !{is} fun!",!WaitKey,!Line2
	db "Looks like !{you}'ve turn!{ed_}!{in}!{to} a",!Line3
	db "bunny, !{ha}v!{en}'t !{you}?",!WaitKey,!Scroll
	db "!{Thi}s w!{or}ld !{and_}our w!{or}ld might",!Scroll
	db "!{lo}ok simi!{la}r, but !{the}y a!{re}",!Scroll
	db "!{re}al!{ly_}qu!{it}e !{di}ff!{er}!{ent}!",!WaitKey,!Scroll
	db "Who!{ev}!{er} !{com}es h!{er}e ch!{an}ges !{to}",!Scroll
	db "a !{di}ff!{er}!{ent} !{for}m !{re}flect!{ing_}",!Scroll
	db "!{the}ir h!{ear}t. I'm al!{wa}ys",!WaitKey,!Scroll
	db "!{bo}unc!{ing_}!{fro}m !{on}e !{thin}g !{to}",!Scroll
	db "!{an}oth!{er}, !{so} I turn!{ed_}!{in}!{to} a !{ba}ll!",!WaitKey,!Scroll
	db "!{The}!{re}!{s_}!{an} !{or}b call!{ed_}!{the} Mo!{on}",!Scroll
	db "P!{ear}l th!{at_}m!{ight_}al!{lo}w !{you} !{to}",!Scroll
	db "!{re}t!{ain} !{you}r !{or}ig!{in}al !{for}m.",!WaitKey,!Scroll
	db "Good lu!{ck}! Whee!",!End
;----------------------------------------
.message_348:
	db "Oh, wow! !{You}r !{for}m !{di}dn't",!Line2
	db "ch!{an}ge! !{You}'!{re_}no !{or}!{di}nary guy,",!Line3
	db "!{are_}!{you}?",!End
;----------------------------------------
	db !BankEnd
;----------------------------------------
padbyte $FF : pad $1D8000
warnpc $1D8000	; 0x0E8000
