;****************************************************************
; 	Zelda 3 Redux - Dialogue 1 data
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
	db "Save And C!{on}t!{in}ue",!Line2
	db "Save And Qu!{it}",!Line3
	db "Do Not Save And C!{on}t!{in}ue",!End
;----------------------------------------
.message_004:
	db !Speed00
	db "0- !{Number00}. 1- !{Number01}",!Line2
	db "2- !{Number02}. 3- !{Number03}",!End
;----------------------------------------
.message_005:
	db "!{You} c!{an}'t !{ent}!{er_}!{with} !{some}!{thin}g",!Line2
	db "fol!{lo}!{wi}ng !{you}.",!End
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
	db "!{wh}ile.!{2_}I'll !{be} !{ba}!{ck} by m!{or}n!{in}g.",!Line3
	db "D!{on}'t leave !{the} hou!{se}.",!End
;----------------------------------------
.message_014:
	db "Uhhh!{Dots} Th!{at_}voice! !{Name}?",!Line2
	db "Is !{it} !{you}?!{2_}I !{to}ld !{you}",!Line3
	db "!{to} !{wa}!{it} !{at_}ho!{me}!{Dots}",!WaitKey,!Scroll
	db "Take my sw!{or}d !{and_}!{sh}ield !{and}",!Scroll
	db "l!{is}t!{en}.!{2_}!{You} !{can_}focus !{pow}!{er_}!{in}",!Scroll
	db "!{the} b!{la}de (hold !{the} B Butt!{on}).",!WaitKey,!Scroll
	db "!{Dots}!{The}n !{re}lea!{se} !{it} us!{ing_}!{the}",!Scroll
	db "!{se}c!{re}t technique h!{and}!{ed_}!{do}wn",!Scroll
	db "by our peo!{ple}!{Dots}",!WaitKey,!Scroll
	db "!{Name}!{Dots} !{You} !{mu}!{st} !{re}scue",!Scroll
	db "Pr!{in}cess Zelda. Our peo!{ple} a!{re}",!Scroll
	db "f!{at}!{ed_}!{to} !{do} !{so}.",!WaitKey,!Scroll
	db "But !{do} !{not} f!{all_}victim!{Dots}",!Scroll
	db "!{to} f!{at}e!{Dots} !{Name}!{Dots}",!WaitKey,!Scroll
	db "I !{sh}!{all_}al!{wa}ys !{re}!{me}m!{be}r!{Dots}",!Scroll
	db "our ti!{me}!{Dots} !{to}!{get}h!{er}!{Dots}",!End
;----------------------------------------
.message_015:
	db "Wh!{at}'!{re_}!{you} !{do}!{ing_}!{up} !{thi}s l!{at}e,",!Line2
	db "kid?!{2_}!{You} !{can_}!{st}ay !{up} !{wh}!{en}",!Line3
	db "!{you}'!{re_}grown !{up}!!{2_}Now !{go} ho!{me}!",!End
;----------------------------------------
.message_016:
	db "I !{se}e !{you} brought a !{ma}p !{so} !{you}",!Line2
	db "!{do}!{nt_}!{get} !{lo}!{st}.!{2_}(P!{re}ss !{the}",!Line3
	db "X Butt!{on} !{to} !{se}e !{you}r !{ma}p).",!End
;----------------------------------------
.message_017:
	db "!{You} !{lo}ok !{st}r!{on}g !{for} a kid.!{2_}How",!Line2
	db "!{mu}ch !{can_}!{you} lift?!{2_}(P!{re}ss !{the}",!Line3
	db "A Butt!{on} w!{hi}le !{to}uc!{hi}ng a !{thin}g",!WaitKey,!Scroll
	db "!{to} lift !{it}.)",!End
;----------------------------------------
.message_018:
	db "I'll !{be}t !{you} c!{an}'t !{wa}!{it} until !{you}",!Line2
	db "!{are_}old !{en}ough !{to} u!{se} a sw!{or}d!",!Line3
	db "(P!{re}ss !{the} B Butt!{on} !{to} u!{se}",!WaitKey,!Scroll
	db "!{you}r sw!{or}d !{wh}!{en_}!{you} !{get} !{it}.)",!End
;----------------------------------------
.message_019:
	db "Th!{at_}!{ma}rk !{on} !{you}r !{ma}p !{mu}!{st} !{be}",!Line2
	db "!{you}r !{des}t!{in}!{at}i!{on}.",!End
;----------------------------------------
.message_020:
	db "!{You} !{can_}!{of}t!{en_}f!{in}d valua!{ble}s",!Line2
	db "!{in} !{che}!{st}s.!{2_}(P!{re}ss !{the} A",!Line3
	db "Butt!{on} !{in} !{fro}nt !{of} a !{che}!{st} !{to}",!WaitKey,!Scroll
	db "op!{en_}!{it}.)",!End
;----------------------------------------
.message_021:
	db "Us !{so}l!{di}!{er}s !{have} !{be}!{en_}ar!{ound},",!Line2
	db "kid.!{2_}!{You} !{can_}l!{ear}n a !{lo}t !{fro}m",!Line3
	db "us.!{2_}But !{you} al!{re}ady !{know} !{tha}t!",!End
;----------------------------------------
.message_022:
	db "Meet !{the} eld!{er_}!{of} !{the} vil!{la}ge",!Line2
	db "!{and_}!{get} !{the} M!{ast}!{er_}Sw!{or}d.",!End
;----------------------------------------
.message_023:
	db "Pr!{in}cess Zelda, !{you} !{are_}safe!",!Line2
	db "Is !{thi}s !{you}r !{do}!{in}g, !{Name}?",!End
;----------------------------------------
.message_024:
	db "I s!{en}!{se} th!{at_}a mighty !{ev}il",!Line2
	db "!{for}ce gui!{des} !{the} prie!{st}'s",!Line3
	db "acti!{on}s !{and_}augm!{ent}s !{hi}s",!WaitKey,!Scroll
	db "!{ma}gical !{pow}!{er}.!{2_}!{The} !{on}ly",!Scroll
	db "!{we}ap!{on} pot!{ent} !{en}ough !{to}",!Scroll
	db "defe!{at_}!{the} prie!{st} !{is} !{the}",!WaitKey,!Scroll
	db "leg!{en}dary M!{ast}!{er_}Sw!{or}d.",!Scroll
	db "It !{is} said th!{at_}!{the} vil!{la}ge eld!{er}",!Scroll
	db "!{is} a !{des}c!{en}d!{an}t !{of} !{on}e !{of} !{the}",!WaitKey,!Scroll
	db "s!{ev}!{en_}sages.!{2_}May!{be}",!Scroll
	db "he !{can_}tell !{you} m!{or}e!{Dots}",!Scroll
	db "I !{wi}ll !{ma}rk !{hi}s hou!{se} !{on} !{you}r",!WaitKey,!Scroll
	db "!{ma}p.!{2_}But w!{at}ch !{you}r !{ev}!{er}y",!Scroll
	db "move!!{2_}I am c!{er}t!{ain} th!{at_}!{the}",!Scroll
	db "c!{ast}le !{so}l!{di}!{er}s !{wi}ll !{be} !{lo}ok!{in}g",!WaitKey,!Scroll
	db "!{for} !{you} now!!{2_}!{Dots}!{4_}!{Dots}!{4_}!{Dots}",!Sound2D,!Scroll
	db "I !{wi}ll !{hi}de Pr!{in}cess Zelda h!{er}e.",!Scroll
	db "Do !{not} w!{or}ry!!{2_}Seek !{the} eld!{er}!",!WaitKey,!Scroll
	db "!{Dots}!{4_}!{Dots}!{4_}!{Dots}",!Scroll
	db "Do !{you} und!{er}!{st}!{and}?",!Scroll
	db "!{4_}> Yes",!Scroll
	db "!{4_}!{4_}Not !{at_}all",!Choose,!End
;----------------------------------------
.message_025:
	db "If !{you} defe!{at_}!{the} prie!{st}, !{the}",!Line2
	db "!{so}l!{di}!{er}s !{ma}y !{re}g!{ain}",!Line3
	db "!{the}ir s!{an}!{it}y.",!WaitKey,!Scroll
	db "Go, !{se}ek !{the} P!{en}d!{an}ts!",!End
;----------------------------------------
.message_026:
	db "Take !{the} th!{re}e P!{en}d!{an}ts !{in}!{to}",!Line2
	db "!{the} Lo!{st} Woods.!{2_}!{The} M!{ast}!{er}",!Line3
	db "Sw!{or}d a!{wa}!{it}s !{you} !{the}!{re}.",!End
;----------------------------------------
.message_027:
	db "!{Name}!!{2_}!{You} !{are_}a !{se}c!{on}d !{to}o",!Line2
	db "l!{at}e.!{2_}I !{have} failed!{Dots} Zelda!{Dots}",!Line3
	db "!{The} !{so}l!{di}!{er}s !{have}",!WaitKey,!Scroll
	db "abduct!{ed_}h!{er}.",!Scroll
	db "!{The}y !{have} tak!{en_}h!{er_}!{to}",!Scroll
	db "!{the} c!{ast}le.",!WaitKey,!Scroll
	db "!{You} !{mu}!{st} f!{in}d h!{er_}!{be}!{for}e !{the}",!Scroll
	db "prie!{st} w!{or}ks !{hi}s !{ma}gic.",!WaitKey,!Scroll
	db "Plea!{se}!{Dots}!{You} !{are_}our !{on}ly",!Scroll
	db "hope!{Dots}",!End
;----------------------------------------
.message_028:
	db "!{Tha}nk !{you}, !{Name}.!{2_}I !{ha}d a",!Line2
	db "feel!{ing_}!{you} w!{er}e !{get}t!{ing_}c!{lo}!{se}.",!End
;----------------------------------------
.message_029:
	db "Yes, !{it} !{wa}s !{Name} !{wh}o helped",!Line2
	db "!{me} escape !{fro}m !{the} dunge!{on}!",!Line3
	db "Wh!{en_}I !{wa}s captive !{the} prie!{st}",!WaitKey,!Scroll
	db "said, ""Once I !{have} f!{in}!{is}h!{ed_}w!{it}h",!Scroll
	db "!{you}, !{the} f!{in}al !{on}e, !{the} !{se}al !{of}",!Scroll
	db "!{the} sages !{wi}ll op!{en}.""",!WaitKey,!Scroll
	db "!{Dots}!{4_}!{Dots}!{4_}!{Dots}",!Scroll
	db "!{Name}, !{you} !{mu}!{st} !{not} let !{the}",!Scroll
	db "l!{and_}!{of} Hyrule f!{all_}!{in}!{to} !{the}",!WaitKey,!Scroll
	db "prie!{st}!{s_}clut!{che}s.",!Scroll
	db "If he !{re}lea!{se}s !{the} !{se}al !{of} !{the}",!Scroll
	db "s!{ev}!{en_}sages, !{ev}il !{pow}!{er_}!{wi}ll",!WaitKey,!Scroll
	db "ov!{er}!{wh}elm !{thi}s l!{and}.",!Scroll
	db "Be!{for}e th!{at_}!{ha}pp!{en}s!{Dots}",!Scroll
	db "!{be}!{for}e !{it}!{s_}!{to}o l!{at}e!{Dots} !{des}!{tr}oy",!WaitKey,!Scroll
	db "!{the} prie!{st} !{be}!{for}e he !{des}!{tr}oys",!Scroll
	db "!{all_}!{of} Hyrule!!{2_}!{You} !{can_}!{do} !{it}!",!Scroll
	db "!{You} c!{an}!{Dots}",!End
;----------------------------------------
.message_030:
	db "!{Name}, !{be} ca!{re}ful !{out_}!{the}!{re}!",!Line2
	db "I !{know} !{you} !{can_}save Hyrule!",!End
;----------------------------------------
.message_031:
	db !Window02,!Speed03
	db "Help !{me}!{Dots}",!Wait01,!Line3
	db "Plea!{se} help !{me}!{Dots}",!WaitKey,!Scroll
	db "I am a pr!{is}!{on}!{er_}!{in} !{the} dunge!{on}",!Scroll
	db "!{of} !{the} c!{ast}le.",!Scroll
	db "My na!{me} !{is} Zelda.",!WaitKey,!Scroll
	db "!{The} prie!{st}, Agahnim, !{has} !{do}ne!{Dots}",!Scroll
	db "!{some}!{thin}g !{to} !{the} oth!{er_}m!{is}s!{in}g",!Scroll
	db "girls.!{2_}Now !{on}!{ly_}I !{re}m!{ain}!{Dots}",!WaitKey,!Scroll
	db "Agahnim !{has} !{se}iz!{ed_}c!{on}!{tr}ol !{of}",!Scroll
	db "!{the} c!{ast}le !{and_}!{is} now !{tr}y!{ing_}!{to}",!Scroll
	db "op!{en_}!{the} s!{ev}!{en_}sages' !{se}al.",!WaitKey,!Scroll
	db "!{Dots}!{3_}!{Dots}",!Scroll
	db "I am !{in} !{the} dunge!{on} !{of} !{the}",!Scroll
	db "c!{ast}le.",!WaitKey,!Scroll
	db "Plea!{se} help !{me}!{Dots}",!End
;----------------------------------------
.message_032:
	db !Window02,!Speed03
	db "Help !{me}!{Dots}",!Line2
	db "I am !{in} !{the} dunge!{on} !{of} !{the}",!Line3
	db "c!{ast}le.",!WaitKey,!Scroll
	db "I !{know} !{the}!{re} !{is} a !{hi}dd!{en_}p!{at}h",!Scroll
	db "!{fro}m outside !{of} !{the} c!{ast}le !{to}",!Scroll
	db "!{the} gard!{en_}!{in}side.",!End
;----------------------------------------
.message_033:
	db "!{The}!{re} !{is} a !{se}c!{re}t passage !{in}",!Line2
	db "!{the} thr!{on}e room th!{at_}leads",!Line3
	db "!{to} !{the} S!{an}ctuary.",!WaitKey,!Scroll
	db "I'm su!{re_}!{the} old m!{an} !{the}!{re}",!Scroll
	db "!{wi}ll help us.",!End
;----------------------------------------
.message_034:
	db "Th!{at_}!{or}nam!{ent}al !{sh}elf !{sh}ould",!Line2
	db "op!{en}.!{2_}Do !{you} !{have} a light?",!Line3
	db "It!{s_}p!{it}ch dark !{in}side !{and_}!{you}",!WaitKey,!Scroll
	db "c!{an}'t !{se}e w!{it}h!{out_}!{on}e.",!Scroll
	db "If !{you}'!{re_}!{re}ady, let!{s_}!{go}!",!Scroll
	db "Help !{me} pu!{sh} !{it} !{fro}m !{the} left!",!End
;----------------------------------------
.message_035:
	db "!{You} !{have} !{to} pull !{the} l!{ev}!{er_}!{to}",!Line2
	db "op!{en_}!{the} !{do}!{or}.!{2_}(P!{re}ss !{the} A",!Line3
	db "Butt!{on} !{and_}hold Down !{on} !{the}",!WaitKey,!Scroll
	db "C!{on}!{tr}ol Pad.)",!End
;----------------------------------------
.message_036:
	db "All right,!{2_}let!{s_}!{get} !{out_}!{of} h!{er}e",!Line2
	db "!{be}!{for}e !{the} prie!{st} !{not}ices.!{2_}I",!Line3
	db "!{know} a !{se}c!{re}t p!{at}h, but fir!{st}",!WaitKey,!Scroll
	db "!{we} !{have} !{to} !{go} !{to} !{the}",!Scroll
	db "fir!{st} f!{lo}!{or}.!{2_}Let!{s_}!{go}!",!End
;----------------------------------------
.message_037:
	db "!{Name}, l!{is}t!{en_}ca!{re}fully.!{2_}!{The}",!Line2
	db "prie!{st} !{is} !{ma}gical!{ly_}c!{on}!{tr}oll!{in}g",!Line3
	db "!{all_}!{the} !{so}l!{di}!{er}s !{in} !{the} c!{ast}le.",!WaitKey,!Scroll
	db "I f!{ear} !{the} w!{or}!{st} !{for}",!Scroll
	db "my f!{at}h!{er}!{Dots}",!Scroll
	db "!{The} prie!{st} !{is} !{an} !{in}hum!{an} fi!{en}d",!WaitKey,!Scroll
	db "w!{it}h !{st}r!{on}g !{ma}gical !{pow}!{er}s!",!Scroll
	db "!{Dots}!{3_}!{Dots}!{3_}!{Dots}",!WaitKey,!Scroll
	db "Do !{you} und!{er}!{st}!{and}?",!Scroll
	db "!{4_}> Yes",!Scroll
	db "!{4_}!{4_}Not !{at_}all",!Choose,!End
;----------------------------------------
.message_038:
	db "!{You} !{sh}ould fol!{lo}w !{the} !{ma}rks",!Line2
	db "!{the} eld!{er_}!{ma}de !{on} !{you}r !{ma}p",!Line3
	db "!{wh}!{en_}!{you} exp!{lo}!{re}.",!WaitKey,!Scroll
	db "If !{you} !{do}!{nt_}!{know} !{wh}!{at_}!{to} !{do}",!Scroll
	db "next, !{you} !{can_}al!{so} v!{is}!{it} a",!Scroll
	db "!{for}tune tell!{er}.",!End
;----------------------------------------
.message_039:
	db "!{Name}, !{you} !{are_}w!{on}d!{er}ful!",!Line2
	db "As I thought, !{you} !{have} !{the}",!Line3
	db "!{pow}!{er_}!{of} !{the} H!{er}o !{in}side !{you}!",!WaitKey,!Scroll
	db "Now, !{you} !{sh}ould !{get} !{the} M!{ast}!{er}",!Scroll
	db "Sw!{or}d.!{2_}I am c!{on}fid!{ent} th!{at_}!{you}",!Scroll
	db "!{can_}defe!{at_}!{the} !{ev}il prie!{st}!",!End
;----------------------------------------
.message_040:
	db !Window02,!Speed03
	db "!{Name}!!{2_}Help!!{2_}!{The} !{so}l!{di}!{er}s",!Line2
	db "!{are_}!{com}!{ing_}!{to} !{the} S!{an}ctuary!",!Line3
	db "AIEEEEEEE!",!WaitKey,!Scroll
	db "!{Dots} !{Dots} !{Dots}",!End
;----------------------------------------
.message_041:
	db "Aft!{er_}pass!{ing_}through !{the}!{se}",!Line2
	db "!{se}w!{er}s, !{we} !{wi}ll !{be} v!{er}y c!{lo}!{se}",!Line3
	db "!{to} !{the} S!{an}ctuary!",!WaitKey,!Scroll
	db "Let!{s_}!{be} ca!{re}ful!",!End
;----------------------------------------
.message_042:
	db "!{The} S!{an}ctuary !{is} !{just} !{be}y!{on}d",!Line2
	db "th!{at_}!{do}!{or}.!{2_}Pull !{the} sw!{it}ch",!Line3
	db "ov!{er_}!{the}!{re}.",!End
;----------------------------------------
.message_043:
	db "Who? Oh, !{it}!{s_}!{you}, !{Name}!",!Line2
	db "Wh!{at_}!{can_}I !{do} !{for} !{you}, !{you}ng",!Line3
	db "m!{an}?!{2_}!{The} eld!{er}?!{2_}Oh, no !{on}e",!WaitKey,!Scroll
	db "!{has} !{se}!{en_}!{hi}m s!{in}ce !{the} prie!{st}",!Scroll
	db "!{be}g!{an} collect!{ing_}victims!{Dots}",!Scroll
	db "!{Dots}!{3_}!{Dots}!{3_}!{Dots}",!WaitKey,!Scroll
	db "Wh!{at}?!{2_}M!{ast}!{er_}Sw!{or}d?!{2_}Well, I",!Scroll
	db "!{do}!{nt_}!{re}!{me}m!{be}r !{the} details",!Scroll
	db "exactly, but!{Dots}",!End
;----------------------------------------
.message_044:
	db "L!{on}g a!{go}, a !{pro}sp!{er}ous peo!{ple}",!Line2
	db "!{know}n as !{the} Hyli!{an}s !{in}!{ha}b!{it}ed",!Line3
	db "!{thi}s l!{and}!{Dots}",!WaitKey,!Scroll
	db "Leg!{en}ds tell !{of} m!{an}y t!{re}asu!{re}s",!Scroll
	db "th!{at_}!{the} Hyli!{an}s !{hi}d throughout",!Scroll
	db "!{the} l!{and}!{Dots}",!WaitKey,!Scroll
	db "!{The} M!{ast}!{er_}Sw!{or}d, a mighty",!Scroll
	db "b!{la}de !{for}g!{ed_}ag!{ain}!{st} tho!{se}",!Scroll
	db "w!{it}h !{ev}il h!{ear}ts, !{is} !{on}e !{of}",!WaitKey,!Scroll
	db "!{the}m.!{2_}Peo!{ple} say th!{at_}now !{it}",!Scroll
	db "!{is} sleep!{ing_}deep !{in} !{the} !{for}e!{st}!{Dots}",!Scroll
	db "!{Dots} !{Dots} !{Dots}",!WaitKey,!Scroll
	db "Do !{you} und!{er}!{st}!{and_}!{the} leg!{en}d?",!Scroll
	db "!{4_}> Yes",!Scroll
	db "!{4_}!{4_}Not !{at_}all",!Choose,!End
;----------------------------------------
.message_045:
	db "Any!{wa}y, !{lo}ok !{for} !{the} eld!{er}.",!Line2
	db "!{The}!{re} !{mu}!{st} !{be} !{so}!{me}!{on}e !{in} !{the}",!Line3
	db "vil!{la}ge !{wh}o !{know}s !{wh}!{er}e he !{is}.",!WaitKey,!Scroll
	db "!{You} take c!{are_}now, !{Name}!{Dots}",!End
;----------------------------------------
.message_046:
	db "Ohhh,!{Name}.!{2_}!{You}'ve ch!{an}ged!",!Line2
	db "!{You} !{lo}ok !{ma}rve!{lo}us!{Dots}!{2_}Plea!{se}",!Line3
	db "save us !{fro}m Agahnim",!WaitKey,!Scroll
	db "!{the} prie!{st}!",!End
;----------------------------------------
.message_047:
	db "Hey!!{2_}H!{er}e !{is} !{Name}, !{the}",!Line2
	db "!{wa}nt!{ed_}m!{an}!!{2_}Sol!{di}!{er}s!!{2_}Any!{on}e!",!Line3
	db "Co!{me} qui!{ck}ly!",!End
;----------------------------------------
.message_048:
	db "Inc!{re}!{di}!{ble}!!{2_}At l!{ast} !{you} !{have}",!Line2
	db "!{the} th!{re}e P!{en}d!{an}ts!{Dots}!{2_}Now, !{you}",!Line3
	db "!{sh}ould !{go} !{to} !{the} Lo!{st} Woods.",!WaitKey,!Scroll
	db "If !{you} !{are_}!{the} !{tr}ue H!{er}o, !{the}",!Scroll
	db "sw!{or}d !{it}!{se}lf !{wi}ll !{se}lect !{you}.",!Scroll
	db "!{Dots} !{Dots} !{Dots}",!End
;----------------------------------------
.message_049:
	db "I am !{to}o old !{to} fight.",!Line2
	db "I !{can_}!{on}!{ly_}!{re}!{ly_}!{on} !{you}.",!End
;----------------------------------------
.message_050:
	db "I am, !{in}deed, Sa!{has}rah!{la}, !{the}",!Line2
	db "vil!{la}ge eld!{er_}!{and_}a !{des}c!{en}d!{ent}",!Line3
	db "!{of} !{the} s!{ev}!{en_}sages.",!WaitKey,!Scroll
	db "!{Dots}!{3_}!{Dots}!{4_} Oh !{re}ally?",!Scroll
	db "!{Name}, I am surpr!{is}!{ed_}a !{you}ng",!Scroll
	db "m!{an} like !{you} !{is} s!{ear}c!{hi}ng !{for}",!WaitKey,!Scroll
	db "!{the} sw!{or}d !{of} !{ev}il!{s_}b!{an}e.",!Scroll
	db "Not !{just} !{an}y!{on}e !{can_}u!{se} !{tha}t",!Scroll
	db "!{we}ap!{on}.!{2_}Leg!{en}ds say !{on}!{ly_}!{the}",!WaitKey,!Scroll
	db "H!{er}o !{wh}o !{has} w!{on} !{the} th!{re}e",!Scroll
	db "P!{en}d!{an}ts !{can_}!{wi}eld !{the} sw!{or}d.",!Scroll
	db "!{Dots}!{3_}!{Dots}!{3_}!{Dots}",!WaitKey,!Scroll
	db "Do !{you} !{re}al!{ly_}!{wa}nt !{to} f!{in}d !{it}?",!Scroll
	db "!{4_}> Yeah!",!Scroll
	db "!{4_}!{4_}Of Cour!{se}!",!Choose,!End
;----------------------------------------
.message_051:
	db "Good.!{2_}As a te!{st}, !{can_}!{you}",!Line2
	db "!{re}!{tr}i!{ev}e !{the} P!{en}d!{an}t Of",!Line3
	db "Courage !{fro}m !{the} E!{ast} Pa!{la}ce?",!WaitKey,!Scroll
	db "If !{you} br!{ing_}!{it} h!{er}e, I !{wi}ll tell",!Scroll
	db "!{you} m!{or}e !{of} !{the} leg!{en}d !{and}",!Scroll
	db "!{give_}!{you} a !{ma}gical artifact.",!Sound2D,!WaitKey,!Scroll
	db "Now, !{go} !{for}!{wa}rd !{to} !{the} pa!{la}ce.",!End
;----------------------------------------
.message_052:
	db "Oth!{er_}!{re}l!{at}ives !{of} !{the} sages",!Line2
	db "!{are_}!{hi}d!{ing_}!{fro}m !{the} !{ev}il",!Line3
	db "prie!{st}!{s_}fol!{lo}w!{er}s.",!WaitKey,!Scroll
	db "!{You} !{sh}ould f!{in}d !{the}m.",!End
;----------------------------------------
.message_053:
	db !Window02,!Speed03
	db "!{Name}, !{it} !{is} I, Sa!{has}rah!{la}.",!Line2
	db "I am !{com}!{mu}nic!{at}!{ing_}!{to} !{you}",!Line3
	db "across !{the} void through",!WaitKey,!Scroll
	db "telep!{at}hy!{Dots}!{2_}!{The} p!{la}ce !{wh}!{er}e",!Scroll
	db "!{you} now !{st}!{and_}!{wa}s !{the} Sac!{re}d",!Scroll
	db "Realm, but !{ev}il !{pow}!{er_}turn!{ed_}!{it}",!WaitKey,!Scroll
	db "!{in}!{to} !{the} Dark W!{or}ld.!{2_}!{The}",!Scroll
	db "prie!{st} !{has} brok!{en_}!{the} sages'",!Scroll
	db "!{se}al !{and_}op!{en}!{ed_}a g!{at}e",!WaitKey,!Scroll
	db "!{to} l!{in}k !{the} w!{or}lds",!Scroll
	db "!{at_}Hyrule C!{ast}le.!{2_}In",!Scroll
	db "!{or}d!{er_}!{to} save !{thi}s !{ha}lf !{of} !{the}",!WaitKey,!Scroll
	db "w!{or}ld, !{the} L!{ight_}W!{or}ld, !{you}",!Scroll
	db "!{mu}!{st} w!{in} !{ba}!{ck} !{the} Gold!{en}",!Scroll
	db "Pow!{er}.!{2_}!{You} !{mu}!{st} al!{so} !{re}scue",!WaitKey,!Scroll
	db "!{the} s!{ev}!{en_}!{ma}id!{en}s !{wh}o Agahnim",!Scroll
	db "s!{ent} !{to} !{the} Dark W!{or}ld.!{2_}As",!Scroll
	db "!{me}m!{be}rs !{of} !{the} b!{lo}odl!{in}e !{of}",!WaitKey,!Scroll
	db "!{the} s!{ev}!{en_}sages, !{the}y !{have}",!Scroll
	db "!{pow}!{er_}th!{at_}!{wi}ll su!{re}!{ly_}help !{you}.",!Scroll
	db "!{The} !{ma}id!{en}s !{are_}!{lo}!{ck}!{ed_}!{in}",!WaitKey,!Scroll
	db "!{hi}dd!{en_}dunge!{on}s full !{of} !{ev}il",!Scroll
	db "c!{re}!{at}u!{re}s !{and_}d!{an}g!{er}ous !{tr}aps.",!Scroll
	db "!{The} Dark Pa!{la}ce !{sh}ould",!WaitKey,!Scroll
	db "!{be} !{you}r fir!{st} !{go}al !{in} !{thi}s w!{or}ld!",!Sound2D,!Scroll
	db "!{Name}, I !{can_}!{re}!{ly_}!{on} !{on}ly",!Scroll
	db "!{you}.!{2_}Plea!{se} !{ma}ke !{thi}s old",!WaitKey,!Scroll
	db "m!{an}!{s_}w!{is}hes !{com}e !{tr}ue.",!Scroll
	db "I !{be}g !{you}!",!End
;----------------------------------------
.message_054:
	db !Window02,!Speed03
	db "But I s!{en}!{se} !{you}r hel!{ple}ssness!{Dots}",!Line2
	db "Be!{for}e !{you} !{go} !{an}y fur!{the}r,",!Line3
	db "f!{in}d !{the} Mo!{on} P!{ear}l !{on}",!WaitKey,!Scroll
	db "De!{at}h Mount!{ain}.!{2_}It !{wi}ll !{pro}tect",!Scroll
	db "!{you} !{fro}m !{the} Dark W!{or}ld's",!Scroll
	db "!{ma}gic !{so} !{you} !{can_}keep !{you}r",!WaitKey,!Scroll
	db "h!{er}oic figu!{re}.",!End
;----------------------------------------
.message_055:
	db "A helpful !{it}em !{is} !{hi}dd!{en_}!{in} !{the}",!Line2
	db "cave !{on} !{the} e!{ast} side !{of} Lake",!Line3
	db "Hylia.!{2_}Get !{it}!",!End
;----------------------------------------
.message_056:
	db "Oh!?!{2_}!{You} !{go}t !{the} P!{en}d!{an}t Of",!Line2
	db "Courage!!{2_}Now I !{wi}ll tell !{you}",!Line3
	db "m!{or}e !{of} !{the} leg!{en}d!{Dots}",!WaitKey,!Scroll
	db "Th!{re}e !{or} four g!{en}!{er}!{at}i!{on}s a!{go},",!Scroll
	db "!{an} !{or}d!{er_}!{of} knights !{pro}tected",!Scroll
	db "!{the} Hyli!{an} royalty.",!WaitKey,!Scroll
	db "!{The}!{se} Knights Of Hyrule w!{er}e",!Scroll
	db "al!{so} guar!{di}!{an}s !{of} !{the} P!{en}d!{an}t",!Scroll
	db "Of Courage.",!WaitKey,!Scroll
	db "Un!{for}tun!{at}ely, mo!{st} !{of} !{the}m",!Scroll
	db "w!{er}e !{des}!{tr}oy!{ed_}!{in} !{the} g!{re}!{at}",!Scroll
	db "!{wa}r ag!{ain}!{st} !{ev}il th!{at_}!{to}ok",!WaitKey,!Scroll
	db "p!{la}ce !{wh}!{en_}!{the} s!{ev}!{en_}sages",!Scroll
	db "c!{re}!{at}!{ed_}!{the}ir !{se}al.!{2_}Am!{on}g !{the}",!Scroll
	db "!{des}c!{en}d!{an}ts !{of} !{the} Knights Of",!WaitKey,!Scroll
	db "Hyrule a h!{er}o !{mu}!{st} app!{ear}.",!Scroll
	db "!{Dots}I !{se}e.!{2_}!{Name}, I !{be}li!{ev}e !{you}.",!Scroll
	db "!{You} !{sh}ould !{get} !{the} !{re}m!{ain}!{in}g",!WaitKey,!Scroll
	db "P!{en}d!{an}ts.",!Scroll
	db "And carry !{thi}s w!{it}h !{you}.",!Scroll
	db "!{Thi}s !{is} a t!{re}asu!{re_}pass!{ed_}!{do}wn",!WaitKey,!Scroll
	db "by !{the} families !{of} !{the} sages.",!Scroll
	db "I !{wa}nt !{you} !{to} !{have} !{it}.",!End
;----------------------------------------
.message_057:
	db "!{You} !{are_}c!{or}!{re}ct, !{you}ng m!{an}!",!Line2
	db "I am Sa!{has}rah!{la}, !{the} vil!{la}ge",!Line3
	db "eld!{er_}!{and_}a !{des}c!{en}d!{ent} !{of} !{the},!WaitKey",!Scroll
	db "s!{ev}!{en_}sages.",!Scroll
	db "!{Dots} !{Dots} !{Dots} Wh!{at}?",!Scroll
	db "!{Name}, I'm surpr!{is}!{ed_}a !{you}ng",!WaitKey,!Scroll
	db "m!{an} like !{you} !{is} !{lo}ok!{ing_}!{for} !{the}",!Scroll
	db "sw!{or}d !{of} !{ev}il!{s_}b!{an}e.!{2_}Not !{just}",!Scroll
	db "!{an}y!{on}e !{can_}u!{se} th!{at_}sw!{or}d.",!WaitKey,!Scroll
	db "Acc!{or}d!{ing_}!{to} !{the} tales h!{and}ed",!Scroll
	db "!{do}wn by !{the} Hyli!{an}s, !{on}!{ly_}!{the}",!Scroll
	db "H!{er}o !{wh}o !{has} !{des}!{tr}oy!{ed_}th!{re}e",!WaitKey,!Scroll
	db "g!{re}!{at_}!{ev}ils !{and_}w!{on} !{the} th!{re}e",!Scroll
	db "P!{en}d!{an}ts !{can_}!{wi}eld !{the} sw!{or}d!{Dots}",!Scroll
	db "!{Dots} !{Dots} !{Dots}",!WaitKey,!Scroll
	db "I !{se}e !{you} !{have} acquir!{ed_}!{the}",!Scroll
	db "P!{en}d!{an}t !{of} Courage.!{2_}I !{wi}ll tell",!Scroll
	db "!{you} a!{bo}ut !{the} leg!{en}d !{be}!{hi}nd !{it}.",!WaitKey,!Scroll
	db "Th!{re}e !{or} four g!{en}!{er}!{at}i!{on}s a!{go},",!Scroll
	db "!{an} !{or}d!{er_}!{of} knights !{pro}tected",!Scroll
	db "!{the} Hyli!{an} royalty.",!WaitKey,!Scroll
	db "!{The}!{se} Knights Of Hyrule w!{er}e",!Scroll
	db "al!{so} guar!{di}!{an}s !{of} !{the} P!{en}d!{an}t",!Scroll
	db "Of Courage.",!WaitKey,!Scroll
	db "Un!{for}tun!{at}ely, mo!{st} !{of} !{the}m",!Scroll
	db "w!{er}e !{des}!{tr}oy!{ed_}!{in} !{the} g!{re}!{at}",!Scroll
	db "!{wa}r ag!{ain}!{st} !{ev}il th!{at_}!{to}ok",!WaitKey,!Scroll
	db "p!{la}ce !{wh}!{en_}!{the} s!{ev}!{en_}sages",!Scroll
	db "c!{re}!{at}!{ed_}!{the}ir !{se}al.!{2_}Am!{on}g !{the}",!Scroll
	db "!{des}c!{en}d!{an}ts !{of} !{the} Knights Of",!WaitKey,!Scroll
	db "Hyrule a h!{er}o !{mu}!{st} app!{ear}.",!Scroll
	db "!{Dots}I !{se}e.!{2_}!{Name}, I !{be}li!{ev}e !{you}.",!Scroll
	db "!{You} !{sh}ould !{get} !{the} !{re}m!{ain}!{in}g",!WaitKey,!Scroll
	db "P!{en}d!{an}ts.",!Scroll
	db "And carry !{thi}s w!{it}h !{you}.",!Scroll
	db "!{Thi}s !{is} a t!{re}asu!{re_}pass!{ed_}!{do}wn",!WaitKey,!Scroll
	db "by !{the} families !{of} !{the} sages.",!Scroll
	db "I !{wa}nt !{you} !{to} !{have} !{it}.",!End
;----------------------------------------
.message_058:
	db "I !{wi}ll !{give_}100 R!{up}ees !{to} !{the}",!Line2
	db "m!{an} !{wh}o f!{in}ds !{the} !{des}c!{en}d!{an}ts",!Line3
	db "!{of} !{the} sages.!{3_}THE KING",!End
;----------------------------------------
.message_059:
	db "!{2_}!{LinkL}!{LinkR}!{2_}WANTED!!{2_}!{Thi}s !{is} !{the}",!Line2
	db "crim!{in}al !{wh}o kidnapp!{ed_}Zelda.",!Line3
	db "C!{all_}a !{so}l!{di}!{er_}if !{you} !{se}e !{hi}m!",!End
;----------------------------------------
.message_060:
	db "!{4_} DANGER!",!Line2
	db "Do !{not} !{ent}!{er_}De!{at}h Mount!{ain}",!Line3
	db "w!{it}h!{out_}!{the} K!{in}g!{s_}p!{er}m!{is}si!{on}!",!End
;----------------------------------------
.message_061:
	db "!{Thi}s !{wa}y !{to} !{the}",!Line2
	db "!{4_} Lo!{st} Woods",!End
;----------------------------------------
.message_062:
	db "!{4_}!{4_}!{3_}DANGER!",!Line2
	db "Bew!{are_}!{of} deep w!{at}!{er_}!{and_}Z!{or}a!",!End
;----------------------------------------
.message_063:
	db "Wel!{com}e !{to} !{the} Magic Shop.",!Line2
	db "!{The} W!{at}!{er}f!{all_}Of W!{is}!{hi}ng !{is}",!Line3
	db "!{just} ahead.!",!End
;----------------------------------------
.message_064:
	db "!{Thi}s cave leads !{to} !{the} p!{at}h",!Line2
	db "!{ba}!{ck} !{to} Kakariko Vil!{la}ge.",!End
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
	db "!{4_}!{4_} Des!{er}t Of My!{st}!{er}y",!End
;----------------------------------------
.message_068:
	db "!{Thi}s !{wa}y !{Up} !{Right}",!Line2
	db "!{4_}!{4_} Magic Shop",!Line3
	db "!{4_}!{4_} W!{at}!{er}f!{all_}Of W!{is}!{hi}ng",!End
;----------------------------------------
.message_069:
	db "!{Thi}s !{wa}y !{Right} E!{ast}!{er}n Pa!{la}ce",!Line3
	db "!{Thi}s !{wa}y !{Left} Hyrule C!{ast}le",!End
;----------------------------------------
.message_070:
	db !Line2
	db "!{4_}!{4_}Lake Hylia",!End
;----------------------------------------
.message_071:
	db "Pay no !{at}t!{ent}i!{on} !{to} !{the}",!Line2
	db "av!{er}age middle-ag!{ed_}m!{an}",!Line3
	db "!{st}!{and}!{ing_}by !{thi}s sign.",!WaitKey,!Scroll
	db "Leave !{hi}m a!{lo}ne!",!End
;----------------------------------------
.message_072:
	db !Line2
	db "!{The} Hou!{se} Of Lum!{be}rja!{ck}s",!Line3
	db "A. Bumpk!{in} !{and_}B. Bumpk!{in}",!End
;----------------------------------------
.message_073:
	db "!{Thi}s !{wa}y !{Down}",!Line2
	db "!{4_}!{3_}Kakariko Vil!{la}ge",!End
;----------------------------------------
.message_074:
	db "Dou!{ble}, !{do}u!{ble} !{to}il !{and_}!{tr}ou!{ble},",!Line2
	db "fi!{re_}burn !{and_}cauldr!{on} bub!{ble}!{Dots}",!Line3
	db "Mak!{ing_}!{mu}!{sh}room b!{re}w, I am!{Dots}",!End
;----------------------------------------
.message_075:
	db "Heh heh!{Dots}!{2_}!{Tha}nk !{you}, !{you}ng",!Line2
	db "m!{an}!{Dots}!{2_}Co!{me} !{ba}!{ck} !{to} !{the} !{sh}op",!Line3
	db "l!{at}!{er_}!{for} !{some}!{thin}g !{go}od!{Dots}",!WaitKey,!Scroll
	db "Heh heh!{Dots}",!End
;----------------------------------------
.message_076:
	db "Mmmmm!{Dots}!{2_}!{The} s!{me}ll !{of} rott!{en}",!Line2
	db "fru!{it}!{Dots}!{2_}If !{you} !{give_}!{me} !{tha}t",!Line3
	db "Mu!{sh}room, I !{can_}f!{in}!{is}h my b!{re}w.",!WaitKey,!Scroll
	db "Heh heh!{Dots}",!End
;----------------------------------------
.message_077:
	db "If !{you} !{wa}nt !{to} buy !{the} poti!{on},",!Line2
	db "!{you} !{sh}ould br!{ing_}a !{bo}ttle !{to}",!Line3
	db "put !{it} !{in}!{Dots}!{2_}He he he!",!End
;----------------------------------------
.message_078:
	db "R!{ed_}!{is} !{the} poti!{on} !{of} life.",!Line2
	db "G!{re}!{en_}!{is} !{the} poti!{on} !{of} !{ma}gic.",!Line3
	db "Blue r!{en}ews !{bo}th life !{and}",!WaitKey,!Scroll
	db "!{ma}gic.",!Scroll
	db "H!{er}e, t!{ast}e a sam!{ple} !{of} !{the}",!Scroll
	db "R!{ed_}Poti!{on}!{Dots}!{2_}He he!",!End
;----------------------------------------
.message_079:
	db "W!{it}h!{out_}a !{ma}gic !{bo}ttle, !{you} c!{an}",!Line2
	db "!{not} buy !{an}y poti!{on}s.",!Line3
	db "He he he!",!End
;----------------------------------------
.message_080:
	db "No,!{2_}no,!{2_}no!{Dots}!{2_}I c!{an}'t put",!Line2
	db "!{an}y!{thin}g !{in}!{to} a full !{bo}ttle.",!Line3
	db "He he he!",!End
;----------------------------------------
.message_081:
	db "!{You} !{go}t !{the} L!{an}t!{er}n!",!Line2
	db "Now !{you} !{can_}l!{ight_}t!{or}!{che}s !{and}",!Line3
	db "!{se}e !{you}r !{wa}y !{in} darkness.",!End
;----------------------------------------
.message_082:
	db "!{You} !{go}t !{the} Boom!{er}!{an}g!",!Line2
	db "Give !{it} a !{tr}y!!{2_}(To !{se}lect !{an}",!Line3
	db "!{it}em, p!{re}ss !{the} Start Butt!{on}.)",!End
;----------------------------------------
.message_083:
	db "!{You} f!{ound} !{the} Bow!",!Line2
	db "!{You} !{can_}!{sh}oot arrows until !{you}",!Line3
	db "run out!",!End
;----------------------------------------
.message_084:
	db "!{You} !{bo}rrow!{ed_}a !{sh}ovel!",!Line2
	db "!{You} !{can_}!{di}g !{in} m!{an}y p!{la}ces.",!Line3
	db "!{You} n!{ev}!{er_}!{know} !{wh}!{at_}!{you}'ll",!WaitKey,!Scroll
	db "f!{in}d!",!End
;----------------------------------------
.message_085:
	db "!{Thi}s !{is} !{the} Magic Cape!",!Line2
	db "!{You} !{are_}!{in}v!{is}i!{ble} !{wh}!{en_}!{you} w!{ear}",!Line3
	db "!{it}! W!{at}ch !{you}r Magic Met!{er}!",!End
;----------------------------------------
.message_086:
	db "!{Thi}s !{is} Magic Powd!{er}!",!Line2
	db "Try !{to} spr!{in}kle !{it} !{on} !{en}emies",!Line3
	db "!{and_}m!{an}y oth!{er_}!{thin}gs!",!End
;----------------------------------------
.message_087:
	db "!{You} !{bo}ught Z!{or}a!{s_}Flipp!{er}s!",!Line2
	db "W!{it}h !{the}!{se} !{you} !{sh}ould !{be} a!{ble}",!Line3
	db "!{to} s!{wi}m !{ev}!{en_}!{in} deep w!{at}!{er}!",!End
;----------------------------------------
.message_088:
	db "!{You} !{go}t !{the} Pow!{er_}G!{lo}ve!",!Line2
	db "!{You} !{can_}feel !{st}r!{en}gth !{in} !{bo}th",!Line3
	db "h!{and}s!!{2_}!{You} !{can_}pi!{ck} !{up} !{and}",!WaitKey,!Scroll
	db "carry !{st}!{on}es now!",!End
;----------------------------------------
.message_089:
	db "!{You} w!{on} !{the} P!{en}d!{an}t Of",!Line2
	db "Courage!!{2_}Take !{it} !{to}",!Line3
	db "Sa!{has}rah!{la}!",!WaitKey,!Scroll
	db "Two P!{en}d!{an}ts !{re}m!{ain}!",!End
;----------------------------------------
.message_090:
	db "!{You} w!{on} !{the} P!{en}d!{an}t Of Pow!{er}!",!Line2
	db "!{You}r !{go}al !{of} f!{in}d!{ing_}th!{re}e",!Line3
	db "P!{en}d!{an}ts !{is} !{in} sight!",!WaitKey,!Scroll
	db "Go !{for} !{the} l!{ast} !{on}e!",!End
;----------------------------------------
.message_091:
	db "!{You} w!{on} !{the} P!{en}d!{an}t Of W!{is}!{do}m!",!Line2
	db "W!{it}h !{thi}s, !{you} !{have} collected",!Line3
	db "!{all_}th!{re}e P!{en}d!{an}ts!!{2_}Go now !{to}",!WaitKey,!Scroll
	db "!{the} Lo!{st} Woods !{to} !{get}",!Scroll
	db "!{the} M!{ast}!{er_}Sw!{or}d!",!End
;----------------------------------------
.message_092:
	db "!{Thi}s Mu!{sh}room s!{me}lls like s!{we}et",!Line2
	db "rott!{en_}fru!{it}!{Dots}",!Line3
	db "!{You} !{can_}!{give_}!{thi}s !{to} !{an}y!{on}e",!WaitKey,!Scroll
	db "!{wh}o !{wa}nts !{it} (Select !{it} !{and}",!Scroll
	db "p!{re}ss !{the} Y Butt!{on}).",!End
;----------------------------------------
.message_093:
	db "!{You} f!{ound} !{the} Tome !{of} Mu!{do}ra!",!Line2
	db "!{You} !{can_}u!{se} !{it} !{to} !{re}ad !{the}",!Line3
	db "!{an}ci!{ent} l!{an}guage !{of} !{the}",!WaitKey,!Scroll
	db "Hyli!{an}s!",!End
;----------------------------------------
.message_094:
	db "!{You} f!{ound} !{the} Mo!{on} P!{ear}l!",!Line2
	db "!{Thi}s !{pro}tects !{The} H!{er}o !{fro}m",!Line3
	db "!{the} ch!{an}g!{ing_}effects !{of} !{the}",!WaitKey,!Scroll
	db "Gold!{en_}Pow!{er}.",!End
;----------------------------------------
.message_095:
	db "!{You} f!{ound} !{the} Compass!",!Line2
	db "Now !{you} !{can_}p!{in}po!{in}t !{the}",!Line3
	db "!{la}ir !{of} !{the} dunge!{on}!{s_}!{ev}il",!WaitKey,!Scroll
	db "m!{ast}!{er}!",!End
;----------------------------------------
.message_096:
	db "!{You} !{go}t !{the} Map!",!Line2
	db "!{You} !{can_}u!{se} !{it} !{to} !{se}e !{you}r",!Line3
	db "curr!{ent} pos!{it}i!{on} !{and_}!{the} !{re}!{st}",!WaitKey,!Scroll
	db "!{of} !{the} dunge!{on} (P!{re}ss X).",!End
;----------------------------------------
.message_097:
	db "!{You} f!{ound} !{the} Ice Rod!",!Line2
	db "Its c!{hi}ll !{ma}gic bl!{ast}s !{the} air!",!Line3
	db "But w!{at}ch !{you}r Magic Met!{er}!",!End
;----------------------------------------
.message_098:
	db "!{You} f!{ound} !{the} Fi!{re_}Rod!",!Line2
	db "!{Thi}s rod !{com}m!{and}s !{the} r!{ed_}fi!{re}!",!Line3
	db "But w!{at}ch !{you}r Magic Met!{er}!",!End
;----------------------------------------
.message_099:
	db "!{Thi}s !{is} !{the} Eth!{er_}Medalli!{on}!",!Line2
	db "Its !{ma}gic c!{on}!{tr}ols !{the} !{up}p!{er}",!Line3
	db "!{at}mosph!{er}e !{and_}po!{la}r w!{in}d!",!WaitKey,!Scroll
	db "W!{at}ch !{you}r Magic Met!{er}!",!End
;----------------------------------------
.message_100:
	db "!{Thi}s !{is} !{the} Bom!{bo}s Medalli!{on}!",!Line2
	db "Its !{ma}gic !{ma}kes !{the} gr!{ound}",!Line3
	db "exp!{lo}de w!{it}h !{pow}!{er}!",!WaitKey,!Scroll
	db "W!{at}ch !{you}r Magic Met!{er}!",!End
;----------------------------------------
.message_101:
	db "!{Thi}s !{is} !{the} Quake Medalli!{on}!",!Line2
	db "Its !{ma}gic cau!{se}s !{the} gr!{ound}",!Line3
	db "!{to} s!{ha}ke !{and_}defe!{at}s",!WaitKey,!Scroll
	db "n!{ear}by !{en}emies!",!Scroll
	db "W!{at}ch !{you}r Magic Met!{er}!",!End
;----------------------------------------
.message_102:
	db "!{You} !{go}t !{the} Magic Hamm!{er}!",!Line2
	db "!{You} !{can_}drive !{the} wood!{en}",!Line3
	db "!{st}akes !{do}wn !{in}!{to} !{the} gr!{ound}!",!WaitKey,!Scroll
	db "!{You} !{can_}u!{se} !{it} !{to} p!{ound} !{on}",!Scroll
	db "oth!{er_}!{thin}gs !{to}o!",!End
;----------------------------------------
.message_103:
	db "Oh!!{2_}H!{er}e !{is} !{the} Ocar!{in}a!",!Line2
	db "Its !{mu}sic su!{re}!{ly_}!{has} !{so}!{me}",!Line3
	db "my!{st}!{er}ious !{pow}!{er}!",!End
;----------------------------------------
.message_104:
	db "!{You} !{go}t !{the} C!{an}e Of So!{ma}ria!",!Line2
	db "It !{wi}ll !{be} v!{er}y helpful if !{you}",!Line3
	db "!{ma}ke !{pro}p!{er_}u!{se} !{of} !{it}!",!WaitKey,!Scroll
	db "Wh!{at_}a my!{st}!{er}ious c!{an}e!",!End
;----------------------------------------
.message_105:
	db "BOING!!{2_}!{Thi}s !{is} !{the} Hookshot!",!Line2
	db "It ext!{en}ds !{and_}c!{on}!{tr}acts !{and}!{Dots}",!Line3
	db "BOING!!{2_}It !{can_}grap!{ple} m!{an}y",!WaitKey,!Scroll
	db "!{thin}gs!",!End
;----------------------------------------
.message_106:
	db "!{You} !{go}t !{so}!{me} Bombs!",!Line2
	db "!{You} !{can_}pi!{ck} !{up} !{and_}throw",!Line3
	db "a Bomb !{you} p!{la}ced",!WaitKey,!Scroll
	db "(P!{re}ss !{the} A Butt!{on})!",!End
;----------------------------------------
.message_107:
	db "!{Thi}s !{is} a Magic Bottle!",!Line2
	db "!{You} !{can_}!{st}!{or}e !{an} !{it}em",!Line3
	db "!{in}side !{and_}th!{en_}u!{se} !{it} l!{at}!{er}!",!End
;----------------------------------------
.message_108:
	db "!{You} !{go}t !{the} Big Key!",!Line2
	db "!{Thi}s !{is} !{the} m!{ast}!{er_}key !{of} !{the}",!Line3
	db "dunge!{on}.!{2_}It !{can_}op!{en_}m!{an}y",!WaitKey,!Scroll
	db "!{lo}!{ck}s th!{at_}sm!{all_}keys c!{an}!{not}.",!End
;----------------------------------------
.message_109:
	db "!{You} !{go}t !{the} T!{it}!{an}!{s_}M!{it}t!",!Line2
	db "Now !{you} !{can_}lift !{the} heavie!{st}",!Line3
	db "!{st}!{on}es th!{at_}w!{er}e !{on}ce",!WaitKey,!Scroll
	db "impossi!{ble} !{to} budge.",!End
;----------------------------------------
.message_110:
	db "He gave !{you} !{the} Magic Mirr!{or}!",!Line2
	db "!{Thi}s mirr!{or} !{is} blue, cl!{ear} !{and}",!Line3
	db "!{be}autiful!{Dots}",!WaitKey,!Scroll
	db "!{You} feel like !{it} !{is} !{go}!{ing_}!{to}",!Scroll
	db "abs!{or}b !{you} !{in}!{to} !{an}oth!{er_}w!{or}ld!{Dots}",!End
;----------------------------------------
.message_111:
	db "!{Thi}s !{is} !{it}!!{2_}!{The} M!{ast}!{er_}Sw!{or}d!",!Line2
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots}",!Line3
	db "No, !{thi}s c!{an}'t !{be} !{it}!{Dots} Too !{ba}d.",!End
;----------------------------------------
.message_112:
	db !Window02,!Speed03
	db "Sudd!{en}ly, Sa!{has}rah!{la} c!{on}tacts",!Line2
	db "!{you} telep!{at}!{hi}cally!{Dots}",!Line3
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots}",!WaitKey,!Scroll
	db "!{Name}, !{it} !{is} ex!{tr}a!{or}!{di}nary",!Scroll
	db "th!{at_}!{you} w!{on} !{the} M!{ast}!{er_}Sw!{or}d",!Scroll
	db "th!{at_}!{ma}kes !{ev}il !{re}t!{re}!{at}!{Dots}",!WaitKey,!Scroll
	db "W!{it}h !{thi}s s!{hi}n!{ing_}sw!{or}d, I",!Scroll
	db "!{be}li!{ev}e !{you} !{can_}deflect !{the}",!Scroll
	db "prie!{st}!{s_}!{ev}il !{pow}!{er}s.",!WaitKey,!Scroll
	db !Scroll
	db "!{The} !{des}t!{in}y !{of} !{thi}s l!{and}",!Scroll
	db "!{is} !{in} !{you}r h!{and}s.",!WaitKey,!Scroll
	db "Plea!{se}, !{Name}!{Dots}",!End
;----------------------------------------
.message_113:
	db "Heh heh heh!{Dots}!{2_}!{Tha}nk !{you}!",!Line2
	db "!{Thi}s !{is} !{the} Me!{di}c!{in}e !{of} Life.",!Line3
	db "U!{se} !{it} !{to} !{re}g!{ain} !{you}r Life",!WaitKey,!Scroll
	db "!{pow}!{er}.",!End
;----------------------------------------
.message_114:
	db "Heh heh heh!{Dots}!{2_}!{Tha}nk !{you}!",!Line2
	db "!{Thi}s !{is} !{the} Me!{di}c!{in}e !{of} Magic.",!Line3
	db "!{You} !{can_}!{re}c!{ha}rge !{you}r my!{st}ic",!WaitKey,!Scroll
	db "!{en}!{er}gy w!{it}h !{it}.",!End
;----------------------------------------
.message_115:
	db "Heh heh heh!{Dots}!{2_}!{Tha}nk !{you}!",!Line2
	db "!{Thi}s !{is} !{the} Me!{di}c!{in}e !{of} Life !{and}",!Line3
	db "Magic!!{2_}!{You} !{can_}!{re}cov!{er_}!{bo}th!",!End
;----------------------------------------
.message_116:
	db "!{You} !{bo}rrow!{ed_}!{the} Bug C!{at}c!{hi}ng",!Line2
	db "Net!!{2_}!{The}!{re} !{ma}y !{be} !{so}!{me} oth!{er}",!Line3
	db "!{thin}gs !{you} !{can_}c!{at}ch w!{it}h !{it},",!WaitKey,!Scroll
	db "!{to}o.",!End
;----------------------------------------
.message_117:
	db "!{You} f!{ound} !{the} Blue Mail!",!Line2
	db "!{Thi}s arm!{or} !{re}duces !{the} da!{ma}ge",!Line3
	db "th!{at_}!{you} take !{fro}m !{en}emies!",!End
;----------------------------------------
.message_118:
	db "!{You} f!{ound} !{the} R!{ed_}Mail!",!Line2
	db "!{Thi}s !{pro}vi!{des} !{ev}!{en_}!{be}tt!{er}",!Line3
	db "!{pro}tecti!{on} !{tha}n !{the} Blue Mail!",!End
;----------------------------------------
.message_119:
	db "G!{re}!{at}!!{2_}!{You}r sw!{or}d !{is} !{st}r!{on}g!{er}!",!Line2
	db "!{You} !{can_}feel !{the} !{sh}e!{er_}!{pow}!{er}",!Line3
	db "f!{lo}w!{ing_}through !{you}r !{bo}dy!",!End
;----------------------------------------
.message_120:
	db "!{You} f!{ound} !{the} Mirr!{or} S!{hi}eld!",!Line2
	db "!{You} !{can_}now !{re}flect !{be}ams",!Line3
	db "th!{at_}!{you}r old !{sh}ield",!WaitKey,!Scroll
	db "could!{nt_}b!{lo}!{ck}!",!End
;----------------------------------------
.message_121:
	db "!{You} !{go}t !{the} C!{an}e Of Byrna!",!Line2
	db "If !{you} sw!{ing_}!{it} !{on}ce, a r!{ing_}!{of}",!Line3
	db "l!{ight_}!{wi}ll !{pro}tect !{you}!",!End
;----------------------------------------
.message_122:
	db "Eh?!{2_}It!{s_}!{lo}!{ck}ed!",!Line2
	db "If !{you} !{ha}d !{the} Big Key, !{you}",!Line3
	db "m!{ight_}!{be} a!{ble} !{to} op!{en_}!{it}!",!End
;----------------------------------------
.message_123:
	db "!{You} !{are_}!{sh}!{or}t !{on} Magic Pow!{er}!",!Line2
	db "!{You} c!{an}'t u!{se} !{thi}s !{it}em now.",!Line3
	db "W!{at}ch !{you}r Magic Met!{er}!",!End
;----------------------------------------
.message_124:
	db "He gives !{you} !{the} Pegasus",!Line2
	db "Boots!!{2_}Now !{you} !{can_}execute a",!Line3
	db "d!{ev}!{ast}!{at}!{ing_}da!{sh} !{at}ta!{ck}!",!WaitKey,!Scroll
	db "(Hold !{the} A Butt!{on}",!Scroll
	db "!{for} a !{sh}!{or}t ti!{me}.)",!End
;----------------------------------------
.message_125:
	db "Wow!!{2_}I !{ha}v!{en}'t !{se}!{en_}a n!{or}!{ma}l",!Line2
	db "p!{er}s!{on} !{in} a few hundr!{ed_}y!{ear}s!",!Line3
	db "Let !{me} talk !{to} !{you} !{for} a w!{hi}le.",!End
;----------------------------------------
.message_126:
	db "Do !{you} !{know} a!{bo}ut !{the}",!Line2
	db "Gar!{go}yle !{st}!{at}ue !{in} !{the} vil!{la}ge?",!Line3
	db "Peo!{ple} say !{the}y !{can_}h!{ear} a girl",!WaitKey,!Scroll
	db "call!{ing_}!{for} help !{fro}m und!{er_}!{the}",!Scroll
	db "!{st}!{at}ue.!{2_}Is!{nt_}th!{at_}a !{st}r!{an}ge",!Scroll
	db "!{st}!{or}y!{Dots}",!End
;----------------------------------------
.message_127:
	db "Surpr!{is}!{in}gly, !{the} Tri!{for}ce",!Line2
	db "c!{re}!{at}!{ed_}!{thi}s w!{or}ld !{to} fulfill",!Line3
	db "G!{an}!{on}!{s_}w!{is}h.",!WaitKey,!Scroll
	db "Wh!{at_}!{is} G!{an}!{on}!{s_}w!{is}h,",!Scroll
	db "!{you} ask?!{2_}It !{is} !{to} rule !{the}",!Scroll
	db "!{ent}i!{re_}cosmos!!{2_}D!{on}'t !{you} !{thin}k",!WaitKey,!Scroll
	db "!{it} m!{ight_}!{be} possi!{ble} w!{it}h !{the}",!Scroll
	db "!{pow}!{er_}!{of} !{the} Tri!{for}ce",!Scroll
	db "!{be}!{hi}nd !{you}?",!End
;----------------------------------------
.message_128:
	db "I !{on}ce liv!{ed_}!{in} !{the} Lo!{st} Woods,",!Line2
	db "until !{the} day I w!{and}!{er}!{ed_}!{in}!{to} a",!Line3
	db "!{ma}gic !{tr}!{an}sp!{or}t!{er}!{Dots}",!WaitKey,!Scroll
	db "!{The} !{pow}!{er_}!{of} !{the} Dark W!{or}ld",!Scroll
	db "qui!{ck}!{ly_}turn!{ed_}!{me} !{in}!{to} !{thi}s",!Scroll
	db "t!{re}e s!{ha}pe!{Dots},!WaitKey",!Scroll
	db "I guess !{the} two !{for}e!{st}s a!{re}",!Scroll
	db "c!{on}nect!{ed_}w!{it}h each oth!{er}!{Dots}",!End
;----------------------------------------
.message_129:
	db "I h!{ear}d th!{at_}us!{ing_}Bombs !{is} !{the}",!Line2
	db "!{be}!{st} !{wa}y !{to} defe!{at_}!{the}",!Line3
	db "!{on}e-ey!{ed_}gi!{an}ts.,!WaitKey",!Scroll
	db "!{Tha}t!{s_}!{all_}I !{know}!",!End
;----------------------------------------
.message_130:
	db "Qu!{it} !{bo}th!{er}!{ing_}!{me}!!{2_}And w!{at}ch",!Line2
	db "!{wh}!{er}e !{you}'!{re_}!{go}!{ing_}!{wh}!{en_}!{you}",!Line3
	db "da!{sh} ar!{ound}!",!End
;----------------------------------------
.message_131:
	db "{You} !{go}t !{the} P!{en}d!{an}t Of Pow!{er}!",!Line2
	db "!{You} !{have} now collect!{ed_}all",!Line3
	db "th!{re}e P!{en}d!{an}ts!!{2_}Go !{for}th now",!WaitKey,!Scroll
	db "!{to} !{the} Lo!{st} Woods !{for} !{the}",!Scroll
	db "M!{ast}!{er_}Sw!{or}d!",!End
;----------------------------------------
.message_132:
	db "!{You} !{go}t !{the} P!{en}d!{an}t Of W!{is}!{do}m!",!Line2
	db "Ag!{ain} !{you}r !{pow}!{er_}!{has} !{in}c!{re}a!{se}d!",!Line3
	db "Now, !{go} !{for} !{the} l!{ast} !{on}e!",!End
;----------------------------------------
.message_133:
	db "Well howdy, L!{ight_}W!{or}ld!{er}!",!Line2
	db "!{You} !{lo}ok like a !{st}raight",!Line3
	db "!{sh}oot!{er}!{Dots}!{2_}W!{an}t !{to} !{tr}y !{you}r",!WaitKey,!Scroll
	db "skill !{in} my !{sh}oot!{ing_}gall!{er}y?",!Scroll
	db "I'll !{give_}!{you} five !{sh}ots !{for} 20",!Scroll
	db "R!{up}ees.!{2_}If !{you}'!{re_}as s!{ha}rp",!WaitKey,!Scroll
	db "as I !{thin}k !{you} a!{re}, !{you} !{st}!{and}",!Scroll
	db "!{to} rake !{in} !{the} R!{up}ees.",!WaitKey,!Scroll
	db "How a!{bo}ut !{it}, !{st}r!{an}g!{er}?",!Scroll
	db "!{4_}> P!{la}y",!Scroll
	db "!{4_}!{4_}No !{wa}y",!Choose,!End
;----------------------------------------
.message_134:
	db "All right!!{2_}Aim ca!{re}fully!",!Line2
	db "Ready?!{2_}GO!",!End
;----------------------------------------
.message_135:
	db "Well l!{it}tle partn!{er}, !{you} c!{an}",!Line2
	db "turn !{you}r!{se}lf r!{ight_}ar!{ound} !{and}",!Line3
	db "leave !{the} sa!{me} !{wa}y !{you}",!WaitKey,!Scroll
	db "ca!{me} !{in}.",!Scroll
	db "See !{you} l!{at}!{er}!!{2_}Have a nice day!",!End
;----------------------------------------
.message_136:
	db "W!{an}t !{to} !{sh}oot ag!{ain}?",!Line2
	db "!{4_}> C!{on}t!{in}ue",!Line3
	db "!{4_}!{3_}Qu!{it}",!Choose,!End
;----------------------------------------
.message_137:	; Pond text
	db "--POND OF HAPPINESS--",!Line2
	db "Throw !{so}!{me} R!{up}ees !{in} !{and_}!{you}r",!Line3
	db "w!{is}hes !{wi}ll su!{re}!{ly_}!{com}e !{tr}ue.",!WaitKey,!Scroll
	db "Do !{you} !{wa}nt !{to} throw R!{up}ees?",!Scroll
	db "!{4_}> Throw a few",!Scroll
	db "!{4_}!{4_}D!{on}'t feel like !{it}",!Choose,!End
;----------------------------------------
.message_138:
	db "Select !{an} !{it}em us!{ing_}!{the}",!Line2
	db "C!{on}!{tr}ol Pad !{and_}throw !{it} us!{in}g",!Line3
	db "!{the} Y Butt!{on}.",!Item,!End
;----------------------------------------
.message_139:
	db "Hel!{lo} !{the}!{re}.!{2_}Did !{you} drop !{thi}s?",!Line2
	db "!{4_}> Yes",!Line3
	db "!{4_}!{3_}No, I !{di}dn't",!Choose,!End
;----------------------------------------
.message_140:
	db "I like !{an} h!{on}e!{st} p!{er}s!{on}.",!Line2
	db "I !{wi}ll !{give_}!{you} !{some}!{thin}g !{be}tt!{er}",!Line3
	db "!{in} !{re}turn.",!End
;----------------------------------------
.message_141:
	db "A!{re_}!{you} su!{re_}!{thi}s !{is} !{not} !{you}rs?",!Line2
	db "!{4_}> Really, !{it} !{is}n't",!Line3
	db "!{4_}!{3_}To tell !{the} !{tr}uth, !{it} !{is}",!Choose,!End
;----------------------------------------
.message_142:
	db "Now,!{2_}now, !{do}!{nt_}tell !{me} a lie.",!Line2
	db "Plea!{se} take !{it} !{ba}!{ck}.",!End
;----------------------------------------
.message_143:
	db "!{You} !{go}t !{the} Magical Boom!{er}!{an}g!",!Line2
	db "!{You} !{can_}throw !{thi}s f!{ast}!{er_}!{and}",!Line3
	db "farth!{er_}!{tha}n !{you}r old !{on}e!",!End
;----------------------------------------
.message_144:
	db "!{You}r !{sh}ield !{is} im!{pro}ved!",!Line2
	db "Now !{you} !{can_}def!{en}d !{you}r!{se}lf",!Line3
	db "ag!{ain}!{st} fi!{re}!{ba}lls!",!End
;----------------------------------------
.message_145:
	db "!{The}!{se} !{are_}!{the} Silv!{er_}Arrows",!Line2
	db "!{you} ne!{ed_}!{to} defe!{at_}G!{an}!{on}!",!End
;----------------------------------------
.message_146:
	db "She fill!{ed_}!{you}r !{bo}ttle w!{it}h !{the}",!Line2
	db "Me!{di}c!{in}e Of Magic.!{2_}To !{get} such",!Line3
	db "a poti!{on} f!{re}e !{is} qu!{it}e",!WaitKey,!Scroll
	db "a !{ba}rg!{ain}!",!End
;----------------------------------------
.message_147:
	db "!{You}r sw!{or}d !{is} !{st}r!{on}g!{er}!",!Line2
	db "!{You} !{can_}feel !{it}s !{pow}!{er}",!Line3
	db "throbb!{ing_}!{in} !{you}r h!{and}!",!End
;----------------------------------------
.message_148:
	db "Happ!{in}ess !{in}c!{re}as!{ed_}!{Number03}!{Number02} R!{up}ees.",!Line2
	db "In !{to}tal, !{you}r Happ!{in}ess !{is} !{Number01}!{Number00}.",!Line3
	db "!{You} !{be}ca!{me} !{ha}ppi!{er_}by !{on}e",!WaitKey,!Scroll
	db "!{st}ep.",!End
;----------------------------------------
.message_149:
	db "I !{wi}ll !{ma}ke !{you}r w!{is}h !{com}e !{tr}ue.",!Line2
	db "!{2_}>I !{wa}nt !{to} carry m!{or}e Bombs",!Line3
	db "!{4_}I !{wa}nt !{to} carry m!{or}e Arrows",!SelChng,!End
;----------------------------------------
.message_150:
	db "!{The}n I !{wi}ll !{in}c!{re}a!{se} !{you}r",!Line2
	db "carry!{ing_}abil!{it}y !{so} !{you} c!{an}",!Line3
	db "carry !{Number01}!{Number00} Bombs !{at_}!{ma}xi!{mu}m.",!WaitKey,!Scroll
	db "!{Thi}s !{is} !{just} a sm!{all_}!{ha}pp!{in}ess",!Scroll
	db "I !{can_}!{give_}!{to} !{you}.",!End
;----------------------------------------
.message_151:
	db "!{The}n I !{wi}ll !{in}c!{re}a!{se} !{you}r",!Line2
	db "carry!{ing_}abil!{it}y !{so} !{you} c!{an}",!Line3
	db "carry !{Number01}!{Number00} Arrows !{at_}!{ma}xi!{mu}m.",!WaitKey,!Scroll
	db "!{Thi}s !{is} !{just} a sm!{all_}!{ha}pp!{in}ess",!Scroll
	db "I !{can_}!{give_}!{to} !{you}.",!End
;----------------------------------------
.message_152:
	db "I c!{an}!{not} gr!{an}t !{an}y m!{or}e w!{is}hes",!Line2
	db "!{for} !{you}, but a fri!{en}d !{of} m!{in}e",!Line3
	db "m!{ight_}!{be} a!{ble} !{to}!{Dots}",!WaitKey,!Scroll
	db "She lives !{in} !{the} W!{at}!{er}f!{all_}Of",!Scroll
	db "W!{is}!{hi}ng n!{ear} Z!{or}a!{s_}!{la}ke.",!Scroll
	db "I !{wi}ll !{re}turn !{you}r R!{up}ees !{to}",!WaitKey,!Scroll
	db "!{you}.!{2_}May !{you} !{be} !{ha}ppy!{Dots}",!End
;----------------------------------------
.message_153:
	db "Uhhh!{Dots}!{2_}W!{at}ch !{you}r !{st}ep.",!Line2
	db "!{The}!{re} !{are_}holes !{in} !{the} gr!{ound}.",!Line3
	db "Could !{you} turn r!{ight_}h!{er}e?",!WaitKey,!Scroll
	db "!{You}ng m!{an}, !{are_}!{you} al!{so} !{go}!{in}g",!Scroll
	db "!{to} !{the} mount!{ain} !{to} !{lo}ok !{for} !{the}",!Scroll
	db "Gold!{en_}Pow!{er}?",!WaitKey,!Scroll
	db "Ju!{st} ahead !{is} a mount!{ain} full",!Scroll
	db "!{of} m!{on}!{st}!{er}s.!{2_}M!{an}y peo!{ple} !{have}",!Scroll
	db "v!{an}!{is}h!{ed_}!{in} !{thi}s mount!{ain} w!{hi}le",!WaitKey,!Scroll
	db "!{lo}ok!{ing_}!{for} !{the} Gold!{en_}Pow!{er}.",!Scroll
	db !Scroll,!WaitKey,!Scroll
	db "I !{do}!{nt_}!{wa}nt !{to} !{st}e!{er_}!{you}",!Scroll
	db "wr!{on}g, !{so} !{ple}a!{se} !{do}!{nt_}!{get} !{to}o",!Scroll
	db "!{in}volv!{ed_}!{in} such a !{ma}d que!{st}.",!End
;----------------------------------------
.message_154:
	db "Uhh!{Dots}!{2_}!{The}!{re} !{mu}!{st} !{be} a H!{ear}t !{in}",!Line2
	db "!{the} !{bo}ttle.",!End
;----------------------------------------
.message_155:
	db "Uhh!{Dots}!{2_}Turn r!{ight_}h!{er}e!{Dots}!{3_}!{Dots}",!Line2
	db "!{You} !{know}, I !{have} a",!Line3
	db "gr!{and}daught!{er_}!{wh}o !{is} !{you}r",!WaitKey,!Scroll
	db "age!{Dots}!{2_}!{The} K!{ing_}!{to}ok h!{er_}!{to} !{the}",!Scroll
	db "c!{ast}le !{and_}!{sh}e n!{ev}!{er_}!{re}turned.",!Scroll
	db "Kidnapp!{ing_}tho!{se} !{ma}id!{en}s !{mu}!{st}",!WaitKey,!Scroll
	db "!{be} part !{of} !{the} prie!{st}!{s_}p!{lo}t!",!Scroll
	db "I'm su!{re_}he !{is} !{tr}y!{ing_}!{to}",!Scroll
	db "!{so}!{me}how u!{se} !{the} !{pow}!{er_}!{of} !{the}",!WaitKey,!Scroll
	db "!{des}c!{en}d!{an}ts !{of} !{the} sages!{Dots}",!End
;----------------------------------------
.message_156:
	db "I !{do}!{nt_}!{know} !{wh}o !{you} a!{re}, but",!Line2
	db "if !{you} !{are_}!{go}!{ing_}!{to} !{go} !{up}",!Line3
	db "!{the} mount!{ain}, !{wi}ll !{you} take !{me}",!WaitKey,!Scroll
	db "w!{it}h !{you}?!{2_}I !{lo}!{st} my !{la}mp,",!Scroll
	db "!{so}!{Dots}",!End
;----------------------------------------
.message_157:
	db "!{The} m!{is}s!{ing_}!{ma}id!{en}s !{are_}!{st}ill",!Line2
	db "alive !{so}!{me}!{wh}!{er}e.!{2_}I !{be}li!{ev}e !{tha}t",!Line3
	db "a H!{er}o !{wi}ll !{re}scue !{the}m!{Dots}",!WaitKey,!Scroll
	db "I !{wa}!{it} !{for} th!{at_}day!{Dots}",!Scroll
	db "Uhh!{Dots}!{2_}!{The}!{se} !{are_}d!{an}g!{er}ous",!Scroll
	db "ti!{me}s!{Dots}!{2_}I talk!{ed_}!{to}o !{mu}ch.",!WaitKey,!Scroll
	db "Any!{wa}y!{Dots}!{2_}!{Tha}nk !{you} !{for} !{you}r",!Scroll
	db "k!{in}dness !{to} !{an} old m!{an} like !{me}.",!Scroll
	db "Uhh!{Dots}!{2_}I !{wa}nt!{ed_}!{to} !{give_}!{you}",!WaitKey,!Scroll
	db "!{thi}s.!{2_}If !{you} w!{and}!{er_}!{in}!{to}",!Scroll
	db "a !{ma}gical !{tr}!{an}sp!{or}t!{er}, gaze",!Scroll
	db "!{in}!{to} !{thi}s mirr!{or}.",!End
;----------------------------------------
.message_158:
	db "!{The} prie!{st} !{has} deceiv!{ed_}!{the}",!Line2
	db "K!{in}g, !{and_}now he !{is} !{tr}y!{ing_}!{to}",!Line3
	db "op!{en_}!{the} !{wa}y !{to} !{the}",!WaitKey,!Scroll
	db "Dark W!{or}ld.!{2_}To !{com}!{ple}te",!Scroll
	db "!{you}r que!{st}, !{you} !{wi}ll need",!Scroll
	db "!{the} Mo!{on} P!{ear}l, w!{hi}ch !{is} !{in} !{the}",!WaitKey,!Scroll
	db "!{to}w!{er_}!{on} !{to}p !{of} !{the} mount!{ain}.",!Scroll
	db "All I !{can_}!{do} !{for} !{you} now !{is} !{to}",!Scroll
	db "!{com}!{for}t !{you}r w!{ear}!{in}ess!{Dots}",!WaitKey,!Scroll
	db "Co!{me} !{ba}!{ck} h!{er}e !{an}y ti!{me}.",!End
;----------------------------------------
.message_159:
	db !Line1
	db "!{The} Mo!{on} P!{ear}l !{wi}ll !{pro}tect !{it}s",!Line2
	db "!{be}ar!{er_}!{fro}m !{the} !{ma}gical air !{of}",!Line3
	db "!{the} Sacr!{ed_}Realm, !{so} !{you} c!{an}",!WaitKey,!Scroll
	db "keep !{you}r hum!{an} s!{ha}pe !{the}!{re}.",!Scroll
	db "All I !{can_}!{do} !{for} !{you} now !{is}",!Scroll
	db "!{com}!{for}t !{you}r w!{ear}!{in}ess!{Dots}",!WaitKey,!Scroll
	db "Co!{me} !{ba}!{ck} h!{er}e !{an}y ti!{me}.",!End
;----------------------------------------
.message_160:
	db "!{Name}, I !{thin}k !{the} prie!{st}",!Line2
	db "c!{on}nect!{ed_}!{the} two w!{or}lds",!Line3
	db "!{so}!{me}!{wh}!{er}e ar!{ound} !{the} c!{ast}le.",!WaitKey,!Scroll
	db "All I !{can_}!{do} !{for} !{you} now !{is} !{to}",!Scroll
	db "!{com}!{for}t !{you}r w!{ear}!{in}ess!{Dots}",!Scroll
	db "Co!{me} !{ba}!{ck} h!{er}e !{an}y ti!{me}.",!End
;----------------------------------------
.message_161:
	db "!{Dots}!{mu}m!{ble} !{mu}m!{ble}!{Dots}!{2_}My s!{on}",!Line2
	db "!{re}al!{ly_}lik!{ed_}!{to} p!{la}y !{the} ocar!{in}a,",!Line3
	db "but he w!{ent} !{to} !{lo}ok !{for} !{the}",!WaitKey,!Scroll
	db "Gold!{en_}Pow!{er_}!{and_}!{has} !{not}",!Scroll
	db "!{re}turned!{Dots} !{Dots} !{Dots}",!Scroll
	db "I w!{on}d!{er_}!{wh}!{er}e he !{is} !{and_}!{wh}!{at}",!WaitKey,!Scroll
	db "he !{is} !{do}!{ing_}now?!{Dots}",!Scroll
	db "!{Dots}!{2_}Zzzzzz!{2_}Zzzzzz",!End
;----------------------------------------
.message_162:
	db "!{Dots}!{mu}m!{ble} !{mu}m!{ble}!{Dots}!{2_}Oh?!{2_}!{Thi}s",!Line2
	db "!{is} my s!{on}!{s_}ocar!{in}a!{Dots}!",!Line3
	db "Did !{you} !{me}et my s!{on}?",!WaitKey,!Scroll
	db "Wh!{er}e !{is} he?!{2_}Is he !{all_}right?",!Scroll
	db "!{Dots} !{Dots} !{Dots} !{Dots}",!Scroll
	db !WaitKey,!Scroll
	db "Oh, I !{se}e!{Dots}!{2_}Well, I !{can_}tell",!Scroll
	db "!{wh}!{at_}!{you} !{wa}nt !{to} say by !{the}",!Scroll
	db "!{lo}ok !{in} !{you}r eyes!{Dots}",!End
;----------------------------------------
.message_163:
	db "Would !{you} keep !{the} ocar!{in}a?",!Line2
	db "And !{wi}ll !{you} p!{la}y !{it}s s!{we}et",!Line3
	db "!{me}!{lo}dy !{for} !{the} bird !{in} !{the}",!WaitKey,!Scroll
	db "vil!{la}ge squa!{re}?",!Scroll
	db "I !{be}g !{of} !{you}, !{ple}a!{se}!",!Scroll
	db "My s!{on} would !{pro}!{ba}b!{ly_}!{wa}nt !{it}",!WaitKey,!Scroll
	db "!{thi}s !{wa}y!{Dots}",!Scroll
	db "!{Dots}But !{st}ill, I w!{is}h I could",!Scroll
	db "!{se}e !{hi}m !{on}ce m!{or}e!{Dots}",!End
;----------------------------------------
.message_164:
	db "Zzzzzzz!{2_}Zzzzzzzz",!Line2
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots}",!Line3
	db "Sn!{or}e!{2_}Zzzzzz!{2_}Zzzzzz",!End
;----------------------------------------
.message_165:
	db "Oh, !{Name}.!{2_}!{The} rum!{or}s say",!Line2
	db "!{you} kidnapp!{ed_}!{the} Pr!{in}cess,",!Line3
	db "but I !{st}ill !{tr}u!{st} !{you}.",!End
;----------------------------------------
.message_166:
	db "I c!{an}'t !{be}li!{ev}e !{you} caught !{me}!",!Line2
	db "W!{it}h !{you}r spe!{ed_}!{it} !{mu}!{st} !{have}",!Line3
	db "!{be}!{en_}easy !{to} kidnap Zelda!{Dots}",!WaitKey,!Scroll
	db "!{You} !{do}!{nt_}!{lo}ok like such a !{ba}d",!Scroll
	db "guy, though!{Dots}",!Scroll
	db "Any!{wa}y, !{be}cau!{se} !{you} !{have}",!WaitKey,!Scroll
	db "such qui!{ck} feet, !{it} m!{ight_}!{be} a",!Scroll
	db "!{go}od idea !{to} run !{and_}!{ba}!{sh} !{in}!{to}",!Scroll
	db "m!{an}y !{thin}gs!{Dots}",!WaitKey,!Scroll
	db "F!{or} exam!{ple}, !{the} t!{re}es !{in} !{thi}s",!Scroll
	db "vil!{la}ge !{have} m!{an}y u!{se}ful !{thin}gs",!Scroll
	db "h!{an}g!{ing_}!{in} !{the}ir br!{an}!{che}s!{Dots}",!WaitKey,!Scroll
	db "Well, !{just} !{tr}y !{it}, OK?!",!End
;----------------------------------------
.message_167:
	db "If !{you} !{have} !{en}ough ti!{me} !{to}",!Line2
	db "!{re}ad !{thi}s sign, !{you} !{sh}ould !{go}",!Line3
	db "!{to} !{the} !{go}al im!{me}!{di}!{at}ely!",!End
;----------------------------------------
.message_168:
	db "I'll !{give_}a piece !{of} H!{ear}t !{to}",!Line2
	db "!{the} p!{er}s!{on} !{wh}o w!{ear}s !{the} Cape.",!End
;----------------------------------------
.message_169:
	db "Cur!{se}s !{to} !{an}y!{on}e !{wh}o throws",!Line2
	db "!{some}!{thin}g !{in}!{to} my circle !{of}",!Line3
	db "!{st}!{on}es.",!End
;----------------------------------------
.message_170:
	db "!{Thi}s !{wa}y !{Up} Skelet!{on} F!{or}e!{st}",!Line3
	db "!{Thi}s !{wa}y !{Down} Vil!{la}ge Of Outc!{ast}s",!End
;----------------------------------------
.message_171:
	db !Line2
	db "!{Thi}s !{wa}y !{Right} Cave",!End
;----------------------------------------
.message_172:
	db !Line2
	db "!{Thi}s !{wa}y !{Right} Dark Pa!{la}ce",!End
;----------------------------------------
.message_173:
	db !Line2
	db "!{Thi}s !{wa}y !{Left} Bomb Shop",!End
;----------------------------------------
.message_174:
	db "!{Left}!{2_}S!{wa}mp Of Evil",!Line2
	db "!{4_}!{4_} No En!{tr}!{an}ce",!Line3
	db "!{4_}!{4_} No Escape",!End
;----------------------------------------
.message_175:
	db "!{Thi}s !{is} !{the} Vil!{la}ge Of Outc!{ast}s.",!Line2
	db "Peo!{ple} w!{it}h!{out_}R!{up}ees !{are_}!{not}",!Line3
	db "!{we}l!{com}e h!{er}e.",!End
;----------------------------------------
.message_176:
	db "!{The} W!{at}!{er}f!{all_}Of W!{is}!{hi}ng !{is} !{just}",!Line2
	db "ar!{ound} !{the} c!{or}n!{er}.",!End
;----------------------------------------
.message_177:
	db "!{Thi}s !{wa}y !{Right}!{Up}",!Line2
	db "Lake Of Ill Om!{en}",!End
;----------------------------------------
.message_178:
	db "Aft!{er_}Agahnim !{to}ok ov!{er},",!Line2
	db "!{ev}!{er}y!{on}e !{be}g!{an} !{to} act",!Line3
	db "!{st}r!{an}gely.",!WaitKey,!Scroll
	db "I s!{up}po!{se} !{it}!{s_}!{on}ly",!Scroll
	db "a m!{at}t!{er_}!{of} ti!{me} !{be}!{for}e",!Scroll
	db "I'm affected, !{to}o.",!End
;----------------------------------------
.message_179:
	db "Hey hey!!{2_}!{You}'!{re_}!{not} al!{lo}w!{ed_}!{in}",!Line2
	db "!{the} c!{ast}le, s!{on}!",!Line3
	db "Go ho!{me} !{and_}!{get} !{so}!{me} sleep!",!End
;----------------------------------------
.message_180:
	db !Window02
	db "!{Name}, !{it} !{is} I, Sa!{has}rah!{la}.!{2_}I",!Line2
	db "!{can_}talk !{to} !{you} telep!{at}!{hi}cally",!Line3
	db "!{wh}!{en_}!{you} !{to}uch !{the}!{se} tiles.",!WaitKey,!Scroll
	db "H!{er}e !{is} a !{hi}nt.!{2_}!{You} !{can_}u!{se} !{the}",!Scroll
	db "t!{re}asu!{re_}!{hi}dd!{en_}!{in} !{thi}s pa!{la}ce",!Scroll
	db "!{to} defe!{at_}arm!{or}!{ed_}foes.",!End
;----------------------------------------
.message_181:
	db !Window02
	db "!{Name}, !{it} !{is} I, Sa!{has}rah!{la} !{the}",!Line2
	db "eld!{er}.!{2_}An !{or}b !{know}n as !{the}",!Line3
	db "Mo!{on} P!{ear}l !{is} !{in} !{thi}s !{to}w!{er}.",!WaitKey,!Scroll
	db "Who!{ev}!{er_}holds !{the} Mo!{on} P!{ear}l !{is}",!Scroll
	db "!{pro}tect!{ed_}!{so} th!{at_}!{hi}s !{for}m !{wi}ll",!Scroll
	db "!{not} ch!{an}ge !{in} !{the} Dark W!{or}ld.",!WaitKey,!Scroll
	db "!{You} !{mu}!{st} f!{in}d !{it} !{and_}escape",!Scroll
	db "!{fro}m !{the} !{to}w!{er}!",!Scroll
	db "D!{on}'t !{for}!{get} !{the} Mo!{on} P!{ear}l!{Dots}",!End
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
	db "C!{at}aclysm!{s_}Eve",!Line3
	db "W!{in}s th!{re}e sym!{bo}ls !{of} virtue.",!WaitKey,!Scroll
	db "!{The} M!{ast}!{er_}Sw!{or}d he !{wi}ll !{the}n",!Scroll
	db "!{re}!{tr}i!{ev}e,",!Scroll
	db "Keep!{ing_}!{the} Knight!{s_}l!{in}e !{tr}ue.",!End
;----------------------------------------
.message_184:
	db !Window02
	db "!{Name}, !{it} !{is} I, Sa!{has}rah!{la}.",!Line2
	db "!{You} !{mu}!{st} !{so}!{me}how !{ma}ke !{you}r",!Line3
	db "!{wa}y !{to} !{the} !{to}p !{of} Spectacle",!WaitKey,!Scroll
	db "Ro!{ck}.!{2_}From !{the}!{re} !{you} c!{an}",!Scroll
	db "!{re}ach !{the} Tow!{er_}!{of} H!{er}a !{on}",!Scroll
	db "!{to}p !{of} De!{at}h Mount!{ain}.",!End
;----------------------------------------
.message_185:
	db !Window02
	db "!{Name}, !{it} !{is} I, Sa!{has}rah!{la}.",!Line2
	db "Objects ex!{is}t si!{mu}lt!{an}eous!{ly_}!{in}",!Line3
	db "!{bo}th w!{or}lds w!{it}h simi!{la}r s!{ha}pes.",!WaitKey,!Scroll
	db "If !{the} !{for}m !{of} a !{thin}g ch!{an}ges,",!Scroll
	db "!{it} !{wi}ll affect !{the} s!{ha}pe !{of} !{it}s",!Scroll
	db "tw!{in} !{in} !{the} oth!{er_}w!{or}ld.",!End
;----------------------------------------
.message_186:
	db !Window02
	db "!{Name}!{Dots}!{2_}It!{s_}!{me}, Zelda!{Dots}",!Line2
	db "D!{on}'t !{be} deceiv!{ed_}by !{the} !{ma}gic",!Line3
	db "!{of} Bl!{in}d !{the} !{Thi}ef!!{2_}Be ca!{re}ful!",!End
;----------------------------------------
.message_187:
	db !Window02
	db "!{Name},!{2_}!{it} !{is} I, Sa!{has}rah!{la}",!Line2
	db "!{the} eld!{er}!!{2_}!{You} !{mu}!{st} !{se}t fi!{re}",!Line3
	db "!{to} four t!{or}!{che}s !{to} op!{en}",!WaitKey,!Scroll
	db "!{the} !{wa}y !{for}!{wa}rd.",!End
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
	db "To op!{en_}!{the} !{wa}y !{to} !{go} !{for}!{wa}rd,",!Line2
	db "Make !{you}r w!{is}h h!{er}e",!Line3
	db "And !{it} !{wi}ll !{be} gr!{an}ted.",!End
;----------------------------------------
.message_190:
	db !Window02
	db "Wh!{en_}G!{an}!{on} !{is} !{st}unned, give",!Line2
	db "!{hi}m !{hi}s l!{ast} mom!{ent} w!{it}h a",!Line3
	db "Silv!{er_}Arrow!",!WaitKey,!Scroll
	db "Do !{you} und!{er}!{st}!{and}, !{Name}?",!End
;----------------------------------------
.message_191:
	db !Window02
	db "!{Name}, !{can_}!{you} h!{ear} !{me}?",!Line2
	db "It!{s_}!{me}, Zelda.!{2_}I am !{lo}!{ck}!{ed_}!{in}",!Line3
	db "Turtle Ro!{ck} !{on} !{to}p !{of} De!{at}h",!WaitKey,!Scroll
	db "Mount!{ain}.!{2_}I !{know} !{you} !{are_}!{do}!{in}g",!Scroll
	db "!{you}r !{be}!{st}, but !{ple}a!{se} hurry!{Dots}",!End
;----------------------------------------
.message_192:
	db !Window02
	db "!{Name}, !{it} !{is} I, Sa!{has}rah!{la}.",!Line2
	db "!{You} !{mu}!{st} n!{ev}!{er_}fail !{to} f!{in}d all",!Line3
	db "!{the} t!{re}asu!{re}s !{in} each dunge!{on}.",!End
;----------------------------------------
.message_193:
	db !Window02
	db "L!{is}t!{en_}!{we}ll, !{Name}.",!Line2
	db "Ev!{en_}w!{it}h !{the} M!{ast}!{er_}Sw!{or}d,",!Line3
	db "!{you} c!{an}!{not} !{in}flict physical",!WaitKey,!Scroll
	db "!{ha}rm !{on} !{the} prie!{st}.",!Scroll
	db "!{You} !{mu}!{st} f!{in}d a !{wa}y !{to} !{re}turn",!Scroll
	db "!{hi}s own !{ev}il !{ma}gic !{pow}!{er_}!{to} !{hi}m.",!End
;----------------------------------------
.message_194:
	db !Window02
	db "!{Name}, !{do} !{not} u!{se} !{all_}!{you}r",!Line2
	db "!{ma}gic !{pow}!{er_}if !{you} !{do} !{not}",!Line3
	db "pos!{se}ss !{the} Poti!{on} Of Magic.",!WaitKey,!Scroll
	db "Now, !{get} !{re}ady !{to} !{go} !{in}!{to} !{the}",!Scroll
	db "depths !{of} !{thi}s dunge!{on}.",!End
;----------------------------------------
.message_195:
	db !Window02
	db "!{Name}, !{do} !{you} pos!{se}ss !{the}",!Line2
	db "Poti!{on} !{of} Magic?!{2_}If !{not}, I",!Line3
	db "!{re}!{com}m!{en}d ag!{ain}!{st} !{go}!{ing_}!{an}y",!WaitKey,!Scroll
	db "fur!{the}r.",!End
;----------------------------------------
.message_196:
	db !Window02
	db "!{Name}, !{the} !{ma}gic f!{la}!{me}s !{wi}ll",!Line2
	db "!{pro}tect !{you} !{in}side !{thi}s icy",!Line3
	db "dunge!{on}.",!End
;----------------------------------------
.message_197:
	db !Window02
	db "!{You} c!{an}!{not} !{des}!{tr}oy !{the}",!Line2
	db "Skelet!{on} Kn!{ight_}w!{it}h !{the} sw!{or}d",!Line3
	db "a!{lo}ne.!{2_}Wh!{en_}he col!{la}p!{se}s, he !{is}",!WaitKey,!Scroll
	db "vuln!{er}a!{ble} !{to} !{an}oth!{er_}!{we}ap!{on}.",!End
;----------------------------------------
.message_198:
	db !Window02
	db "!{Name}, !{it} !{is} I, Sa!{has}rah!{la} !{the}",!Line2
	db "eld!{er}.!{2_}I !{have} !{so}!{me} advice!{Dots}",!Line3
	db "In !{the} dunge!{on}s, !{you} !{can_}gaze",!WaitKey,!Scroll
	db "!{in}!{to} !{the} Magic Mirr!{or} !{to} !{re}turn",!Scroll
	db "!{to} !{the} !{en}!{tr}!{an}ce !{at_}!{an}y ti!{me}.",!Scroll
	db "Do !{not} !{for}!{get} !{thi}s!",!End
;----------------------------------------
.message_199:	; Chris Houlihan room
	db "My na!{me} !{is} Chr!{is} Houlih!{an}.",!Line2
	db "!{Thi}s !{is} my !{to}p !{se}c!{re}t room.",!Line3
	db "Keep !{it} !{be}t!{we}!{en_}us, OK?",!End
;----------------------------------------
.message_200:
	db "!{You} caught a !{be}e!",!WaitKey,!Line2
	db "Wh!{at_}!{wi}ll !{you} !{do}?",!Line3
	db "!{4_}> Keep !{it} !{in} a !{bo}ttle",!Scroll
	db "!{4_}!{4_}Set !{it} f!{re}e",!Choose,!End
;----------------------------------------
.message_201:
	db "!{You} caught a fairy!",!WaitKey,!Line2
	db "Wh!{at_}!{wi}ll !{you} !{do}?",!Line3
	db "!{4_}> Keep !{it} !{in} a !{bo}ttle",!Scroll
	db "!{4_}!{4_}Set !{it} f!{re}e",!Choose,!End
;----------------------------------------
.message_202:
	db "!{You} !{do}!{nt_}!{have} !{an}y empty",!Line2
	db "!{bo}ttles.!{2_}!{You} !{have} no choice!{Dots}",!Line3
	db "Ju!{st} !{se}t !{it} f!{re}e.",!End
;----------------------------------------
.message_203:
	db "!{Thi}s !{tr}y !{you}r ti!{me} !{wa}s",!Line2
	db "!{Number03}!{Number02} m!{in}utes !{Number01}!{Number00} !{se}c!{on}ds.",!End
;----------------------------------------
.message_204:
	db "If !{you} !{can_}!{re}ach !{the} !{go}al",!Line2
	db "w!{it}!{hi}n 15 !{se}c!{on}ds, !{we} !{wi}ll give",!Line3
	db "!{you} !{some}!{thin}g !{go}od.",!WaitKey,!Scroll
	db "Ready, Set!{Dots} !{Dots}!{2_}GO!",!End
;----------------------------------------
.message_205:
	db "!{You} qualified!",!Line2
	db "C!{on}gr!{at}ul!{at}i!{on}s!",!Line3
	db "I p!{re}s!{ent} !{you} w!{it}h a piece !{of}",!WaitKey,!Scroll
	db "H!{ear}t!",!End
;----------------------------------------
.message_206:
	db "!{You}'!{re_}!{not} qualified.",!Line2
	db "Too !{ba}d!",!Line3
	db "Why !{do}!{nt_}!{you} !{tr}y ag!{ain}?",!End
;----------------------------------------
.message_207:
	db "I !{do}!{nt_}!{have} !{an}y!{thin}g m!{or}e !{to}",!Line2
	db "!{give_}!{you}.",!Line3
	db "I'm s!{or}ry!",!End
;----------------------------------------
.message_208:
	db "!{You} !{have} !{to} !{ent}!{er_}!{the} !{ma}ze",!Line2
	db "!{fro}m !{the} !{pro}p!{er_}!{en}!{tr}!{an}ce !{or} I",!Line3
	db "c!{an}'t c!{lo}!{ck} !{you}r ti!{me}!{Dots}",!End
;----------------------------------------
.message_209:
	db "!{You}, sir!!{2_}Have !{you} !{be}!{en_}!{go}!{in}g",!Line2
	db "through life w!{it}h!{out_}!{on}e !{of} my",!Line3
	db "hold-!{an}y!{thin}g !{bo}ttles?",!WaitKey,!Scroll
	db "Well !{st}ep r!{ight_}!{up} !{and_}!{ma}ke",!Scroll
	db "!{you}r life !{com}!{ple}te!!{2_}I've !{go}t",!Scroll
	db "!{on}e !{on} sale now !{for} !{the} !{lo}w,",!WaitKey,!Scroll
	db "!{lo}w price !{of} 100 R!{up}ees!",!WaitKey,!Scroll
	db "Wh!{at_}!{do} !{you} say?!{2_}Int!{er}e!{st}ed?",!Scroll
	db "!{4_}> I'll take !{on}e",!Scroll
	db "!{4_}!{4_}D!{on}'t ne!{ed_}!{it}",!Choose,!End
;----------------------------------------
.message_210:
	db "Good buy!!{2_}!{Tha}nks a !{lo}t!",!Line2
	db "Now, hold !{it} a!{bo}ve !{you}r head",!Line3
	db "!{for} !{the} !{wh}ole w!{or}ld !{to} !{se}e, OK?",!WaitKey,!Scroll
	db "It!{s_}!{go}od !{for} bus!{in}ess!",!End
;----------------------------------------
.message_211:
	db "So !{you}'!{re_}broke, eh?!{2_}Too !{ba}d!{Dots}",!Line2
	db "Co!{me} !{ba}!{ck} aft!{er_}!{you} !{ear}n m!{or}e",!Line3
	db "R!{up}ees.!{2_}It m!{ight_}!{st}ill !{be} h!{er}e.",!End
;----------------------------------------
.message_212:
	db "I'm !{all_}!{so}ld !{out_}!{of} !{bo}ttles.",!Line2
	db "Co!{me} !{ba}!{ck} l!{at}!{er}, OK?",!Line3
	db "!{Dots} !{Dots} !{Dots}",!End
;----------------------------------------
.message_213:
	db "Wow!!{2_}I've n!{ev}!{er_}!{se}!{en_}such a",!Line2
	db "r!{are_}bug!!{2_}I'll buy !{it} !{for}",!Line3
	db "100 R!{up}ees, OK?!{2_}D!{on}e!",!End
;----------------------------------------
.message_214:
	db "Hey!!{2_}!{The}y say e!{at}!{ing_}f!{is}h",!Line2
	db "!{ma}kes !{you} s!{ma}rt.!{2_}!{You} !{have} !{to}",!Line3
	db "!{give_}!{me} !{thi}s f!{is}h !{for} !{thi}s",!WaitKey,!Scroll
	db "!{st}uff, OK?!{2_}D!{on}e!",!End
;----------------------------------------
.message_215:
	db "Yo!!{2_}!{Name}! !{You} !{se}em !{to} !{be} !{in}",!Line2
	db "a heap !{of} !{tr}ou!{ble}, but !{thi}s !{is}",!Line3
	db "!{all_}I !{can_}!{give_}!{you}.",!End
;----------------------------------------
.message_216:
	db "Hey !{you}!",!Line2
	db "Wel!{com}e!",!Line3
	db !WaitKey,!Scroll
	db "Ask us !{to} !{do} !{an}y!{thin}g!",!Scroll
	db "!{4_}> Temp!{er_}my sw!{or}d",!Scroll
	db "!{4_}!{4_}I !{just} dropp!{ed_}by",!Choose,!End
;----------------------------------------
.message_217:
	db "I'll !{give_}!{you} a big !{di}scount!",!Line2
	db "!{4_}>Sw!{or}d Temp!{er}ed!{Dots} 10 R!{up}ees",!Line3
	db "!{4_}!{2_}Wa!{it} a m!{in}ute",!Choose,!End
;----------------------------------------
.message_218:
	db "Temp!{er}ed, eh?!{2_}A!{re_}!{you} su!{re}?",!Line2
	db "!{4_}> Yes",!Line3
	db "!{4_}!{3_}I ch!{an}g!{ed_}my m!{in}d",!Choose,!End
;----------------------------------------
.message_219:
	db "Well, !{we} c!{an}'t !{ma}ke !{it} !{an}y",!Line2
	db "!{st}r!{on}g!{er_}!{tha}n !{tha}t!{Dots} S!{or}ry!",!End
;----------------------------------------
.message_220:
	db "Drop by ag!{ain} !{an}yti!{me} !{you}",!Line2
	db "!{wa}nt !{to}.!{2_}Hi ho!!{2_}Hi ho!",!Line3
	db "We'!{re_}!{of}f !{to} w!{or}k!",!End
;----------------------------------------
.message_221:
	db "All right, no !{pro}!{ble}m.",!Line2
	db "We'll !{have} !{to} keep !{you}r sw!{or}d",!Line3
	db "!{for} a w!{hi}le.",!End
;----------------------------------------
.message_222:
	db "!{You}r sw!{or}d !{is} temp!{er}ed-!{up}!",!Line2
	db "Now hold !{it}!",!End
;----------------------------------------
.message_223:
	db "If my !{lo}!{st} partn!{er_}!{re}turns,",!Line2
	db "!{we} !{can_}temp!{er_}!{you}r sw!{or}d,",!Line3
	db "but now, I c!{an}'t !{do}",!WaitKey,!Scroll
	db "!{an}y!{thin}g !{for} !{you}.",!End
;----------------------------------------
.message_224:
	db "Oh!!{2_}Happy days !{are_}h!{er}e ag!{ain}!",!Line2
	db "!{You} f!{ound} my partn!{er}!",!Line3
	db "!{Dots}!{2_}We !{are_}v!{er}y !{ha}ppy now!{Dots}",!WaitKey,!Scroll
	db "Drop by h!{er}e ag!{ain}!",!Scroll
	db "At th!{at_}ti!{me}, !{we} !{wi}ll temp!{er}",!Scroll
	db "!{you}r sw!{or}d p!{er}fectly!",!End
;----------------------------------------
.message_225:
	db "Ribb!{it} ribb!{it}!{Dots}!{2_}!{You}r !{bo}dy !{di}d",!Line2
	db "!{not} ch!{an}ge!!{2_}!{You} !{are_}!{not} !{just}",!Line3
	db "!{an} !{or}!{di}nary guy, !{are_}!{you}?",!WaitKey,!Scroll
	db "I us!{ed_}!{to} live !{in} Kakariko Town.",!Scroll
	db "I w!{on}d!{er_}!{wh}!{at_}my partn!{er_}!{is}",!Scroll
	db "!{do}!{ing_}!{the}!{re} w!{it}h!{out_}!{me}!{Dots}",!WaitKey,!Scroll
	db "Ribb!{it}!!{2_}I !{have} a !{re}que!{st} !{of}",!Scroll
	db "!{you}.",!Scroll
	db "Plea!{se} take !{me} !{to} my partn!{er}!",!WaitKey,!Scroll
	db "Plea!{se}!!{2_}Ribb!{it}!!{2_}Plea!{se}!",!End
;----------------------------------------
.message_226:
	db "I'm s!{or}ry, !{we}'!{re_}!{not} !{do}ne yet.",!Line2
	db "Co!{me} !{ba}!{ck} aft!{er_}a w!{hi}le.",!End
;----------------------------------------
.message_227:
	db "!{Tha}nk !{you}!",!Line2
	db !Line3
	db "!{Tha}nk !{you}!",!End
;----------------------------------------
.message_228:
	db "Hey hey, am!{at}eurs !{sh}ouldn't",!Line2
	db "!{tr}y !{to} !{do} !{thi}s.!{2_}!{You}'!{re_}!{just}",!Line3
	db "!{get}t!{ing_}!{in} !{the} !{wa}y!",!End
;----------------------------------------
.message_229:
	db "Aft!{er_}w!{and}!{er}!{ing_}!{in}!{to} !{thi}s w!{or}ld",!Line2
	db "I turn!{ed_}!{in}!{to} !{thi}s s!{ha}pe.",!Line3
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots},!WaitKey",!Scroll
	db "I !{en}joy!{ed_}p!{la}y!{ing_}!{the}",!Scroll
	db "ocar!{in}a !{in} !{the} !{or}ig!{in}al w!{or}ld!{Dots}",!Scroll
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots}",!WaitKey,!Scroll
	db "!{The}!{re} !{wa}s a sm!{all_}grove !{wh}!{er}e",!Scroll
	db "m!{an}y !{an}i!{ma}ls g!{at}h!{er}ed.!{2_}I !{wa}nt",!Scroll
	db "!{to} !{se}e th!{at_}p!{la}ce ag!{ain}!{Dots}",!WaitKey,!Scroll
	db "I buri!{ed_}my ocar!{in}a !{the}!{re}",!Scroll
	db "w!{it}h !{so}!{me} f!{lo}w!{er_}!{se}eds.",!Scroll
	db !WaitKey,!Scroll
	db "Will !{you} !{tr}y !{to} f!{in}d !{it} !{for} !{me}?",!Scroll
	db "!{4_}> Yes",!Scroll
	db "!{4_}!{4_}No !{wa}y",!Choose,!End
;----------------------------------------
.message_230:
	db "!{The}n I !{wi}ll l!{en}d !{you} my !{sh}ovel.",!Line2
	db "Good lu!{ck}!",!End
;----------------------------------------
.message_231:
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots}",!Line2
	db "I !{se}e.!{2_}I wo!{nt_}ask !{you} ag!{ain}!{Dots}",!Line3
	db "Good bye.",!End
;----------------------------------------
.message_232:
	db "Did !{you} f!{in}d my ocar!{in}a?",!Line2
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots}",!Line3
	db "Plea!{se} keep !{lo}ok!{ing_}!{for} !{it}!{Dots}",!End
;----------------------------------------
.message_233:
	db "!{Tha}nk !{you}, !{Name}.!{2_}But !{it}",!Line2
	db "!{lo}oks like I c!{an}'t p!{la}y my",!Line3
	db "ocar!{in}a !{an}y m!{or}e.",!WaitKey,!Scroll
	db "Plea!{se} take !{it}.",!WaitKey,!Scroll
	db "If by ch!{an}ce !{you} !{go} !{to} !{the}",!Scroll
	db "vil!{la}ge I liv!{ed_}!{in}, !{ple}a!{se} give",!Scroll
	db "!{it} !{to} a tir!{ed_}old m!{an} !{you} !{wi}ll",!WaitKey,!Scroll
	db "f!{in}d !{the}!{re}.",!Scroll
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots}",!Scroll
	db "Well,!{2_}my m!{in}d !{is} !{get}t!{in}g",!WaitKey,!Scroll
	db "!{ha}zy!{Dots}",!Scroll
	db "Plea!{se} let !{me} h!{ear} !{the} s!{ound} !{of}",!Scroll
	db "!{the} ocar!{in}a !{on}e l!{ast} ti!{me}!{Dots}",!End
;----------------------------------------
.message_234:
	db !Position01
	db "Hocus pocus!",!Line2
	db "!{You} !{wi}ll f!{in}d !{the} eld!{er}",!Line3
	db "Sa!{has}rah!{la}!{Dots}",!End
;----------------------------------------
.message_235:
	db !Position01
	db "Abracadabra a!{la}kazam!",!Line2
	db "!{You} !{wi}ll op!{en_}a !{des}!{er}t !{lo}!{ck} w!{it}h",!Line3
	db "!{the} Tome !{of} Mu!{do}ra.",!End
;----------------------------------------
.message_236:
	db !Position01
	db "Hocus pocus!",!Line2
	db "!{You} !{wi}ll f!{in}d a !{me}m!{be}r !{of} !{the}",!Line3
	db "sages' l!{in}e !{in} !{the} !{des}!{er}t.",!End
;----------------------------------------
.message_237:
	db !Position01
	db "Abracadabra a!{la}kazam!",!Line2
	db "!{You} !{wi}ll f!{in}d a !{mu}!{sh}room !{lo}v!{er}",!Line3
	db "!{at_}!{the} Magic Shop!{Dots}",!End
;----------------------------------------
.message_238:
	db !Position01
	db "Hocus pocus!",!Line2
	db "!{You} !{wi}ll !{me}et Z!{or}a liv!{ing_}!{in} a",!Line3
	db "!{la}ke !{at_}!{the} riv!{er}!{s_}!{so}urce!{Dots}",!End
;----------------------------------------
.message_239:
	db !Position01
	db "Abracadabra a!{la}kazam!",!Line2
	db "!{The} !{tr}ue H!{er}o !{wi}ll f!{in}d !{the}",!Line3
	db "Mo!{on} P!{ear}l !{in} !{the}",!WaitKey,!Scroll
	db "mount!{ain} !{to}w!{er}.",!End
;----------------------------------------
.message_240:
	db !Position01
	db "Hocus pocus!",!Line2
	db "Ev!{en_}!{the} mighty M!{ast}!{er_}Sw!{or}d",!Line3
	db "c!{an}!{not} !{ha}rm !{the} prie!{st}!{s_}!{bo}dy.",!End
;----------------------------------------
.message_241:
	db !Position01
	db "Abracadabra a!{la}kazam!",!Line2
	db "!{The} !{tr}ue H!{er}o !{wi}ll jump !{in}!{to} !{the}",!Line3
	db "!{we}ll n!{ear} !{the} sm!{it}hy!{s_}!{sh}op.",!End
;----------------------------------------
.message_242:
	db !Position01
	db "Well, I !{have} !{to} say my c!{on}!{di}ti!{on}",!Line2
	db "!{is}!{nt_}v!{er}y !{go}od !{to}day.!{2_}But I",!Line3
	db "!{wa}nt !{you} !{to} !{com}e !{ba}!{ck} ag!{ain}!{Dots}",!End
;----------------------------------------
.message_243:
	db !Position01
	db "Hmmm!{Dots}!{2_}!{You} !{lo}ok like !{you} might",!Line2
	db "!{have} !{an} !{in}t!{er}e!{st}!{ing_}!{des}t!{in}y!{Dots}",!Line3
	db "May I tell !{you}r !{for}tune?",!WaitKey,!Scroll
	db "I'll !{ma}ke !{it} !{che}ap!{Dots}",!Scroll
	db "!{4_}> Ask !{hi}m !{to} tell !{it}",!Scroll
	db "!{4_}!{4_}Not !{in}t!{er}e!{st}ed",!Choose,!End
;----------------------------------------
.message_244:
	db !Position01
	db "Now I !{wi}ll take !{Number00}!{Number01} R!{up}ees.",!Line2
	db "I hope !{you} !{wi}ll !{be} healthy.",!Line3
	db "Yee!{ha}h !{ha} !{ha}h!",!End
;----------------------------------------
.message_245:
	db !Position01
	db "It !{is} !{in}de!{ed_}a po!{or} m!{an} !{wh}o !{is}",!Line2
	db "!{not} !{in}t!{er}e!{st}!{ed_}!{in} !{hi}s futu!{re}!{Dots}",!Line3
	db "I'll !{be} !{wa}!{it}!{ing_}!{for} !{you}r !{re}turn.",!End
;----------------------------------------
.message_246:
	db !Position01
	db "Hocus pocus!",!Line2
	db "!{You} !{wi}ll !{me}et a !{st}r!{an}ge m!{an}",!Line3
	db "!{st}!{and}!{ing_}!{in} !{the} !{des}!{er}t!{Dots}",!End
;----------------------------------------
.message_247:
	db !Position01
	db "Abracadabra a!{la}kazam!",!Line2
	db "!{The} !{go}ssip !{sh}op !{in} !{the} Dark",!Line3
	db "W!{or}ld !{has} t!{re}asu!{re_}!{for} !{the}",!WaitKey,!Scroll
	db "ask!{in}g!{Dots}",!End
;----------------------------------------
.message_248:
	db !Position01
	db "Hocus pocus!",!Line2
	db "!{You} !{wi}ll f!{in}d !{the} sm!{it}h's",!Line3
	db "partn!{er_}!{in} !{the}",!WaitKey,!Scroll
	db "Vil!{la}ge Of Outc!{ast}s.",!End
;----------------------------------------
.message_249:
	db !Position01
	db "Abracadabra a!{la}kazam!",!Line2
	db "!{You} !{wi}ll f!{in}d a t!{re}asu!{re_}!{re}!{st}!{in}g",!Line3
	db "!{in} peace !{in} !{the} graveyard.",!End
;----------------------------------------
.message_250:
	db !Position01
	db "Hocus pocus!",!Line2
	db "!{You} !{wi}ll buy a new k!{in}d !{of} !{bo}mb",!Line3
	db "!{in} !{the} Bomb Shop.",!End
;----------------------------------------
.message_251:
	db !Position01
	db "Abracadabra a!{la}kazam!",!Line2
	db "!{You} !{wi}ll f!{in}d !{some}!{thin}g !{in}side",!Line3
	db "!{the} pyramid !{of} !{the} Dark W!{or}ld.",!End
;----------------------------------------
.message_252:
	db !Position01
	db "Hocus pocus!",!Line2
	db "!{You} !{wi}ll run !{in}!{to} a !{ba}rri!{er_}if",!Line3
	db "!{you} !{tr}y !{to} !{ent}!{er}",!WaitKey,!Scroll
	db "G!{an}!{on}!{s_}Tow!{er}.",!End
;----------------------------------------
.message_253:
	db !Position01
	db "Abracadabra a!{la}kazam!",!Line2
	db "!{You} !{wi}ll ne!{ed_}Silv!{er_}Arrows !{to}",!Line3
	db "!{give_}G!{an}!{on} !{hi}s l!{ast} mom!{ent}.",!End
;----------------------------------------
.message_254:
	db "Hey!!{2_}I'll tell !{you} a pr!{of}!{it}a!{ble}",!Line2
	db "!{st}!{or}y if !{you} pay !{me} 20 R!{up}ees.",!WaitKey,!Scroll
	db "How a!{bo}ut !{it}?",!Scroll
	db "!{4_}> Pay R!{up}ees",!Scroll
	db "!{4_}!{4_}D!{on}'t !{wa}nt !{to} h!{ear} !{it}",!Choose,!End
;----------------------------------------
.message_255:
	db "Hah!!{2_}!{Tha}nk !{you}.!{2_}!{The}y say",!Line2
	db "!{the}!{re} !{is} a t!{in}y circle !{of} ro!{ck}s",!Line3
	db "!{in} !{the} !{la}ke !{at_}!{the} !{so}urce !{of}",!WaitKey,!Scroll
	db "!{the} riv!{er}.!{2_}I !{do}!{nt_}!{know} !{wh}!{at}",!Scroll
	db "!{wi}ll !{ha}pp!{en}, but !{it} m!{ight_}!{be} fun",!Scroll
	db "!{to} throw !{some}!{thin}g !{in}!{to} !{it}!{Dots}",!WaitKey,!Scroll
	db "Heh heh.!{2_}See !{you}!{Dots}",!End
;----------------------------------------
.message_256:
	db "Heh heh.!{2_}I !{se}e.!{2_}I'm !{not}",!Line2
	db "!{in}t!{er}e!{st}!{ed_}!{in} talk!{ing_}!{to} peo!{ple}",!Line3
	db "!{wh}o !{do}!{nt_}!{have} R!{up}ees!{Dots}",!End
;----------------------------------------
.message_257:
	db "Heh heh.!{2_}!{Tha}nk !{you}.!{2_}To tell",!Line2
	db "!{you} !{the} !{tr}uth, I us!{ed_}!{to} !{be} a",!Line3
	db "!{thi}ef !{in} !{the} L!{ight_}W!{or}ld!{Dots}",!WaitKey,!Scroll
	db "!{so}!{me} !{of} my fel!{lo}w !{thi}!{ev}es w!{ent}",!Scroll
	db "!{in}!{to} !{hi}d!{ing_}!{be}cau!{se} !{the}y w!{er}e",!Scroll
	db "afraid !{of} !{be}!{ing_}caught.",!WaitKey,!Scroll
	db "One !{of} !{the}m !{wa}s a m!{ast}!{er}",!Scroll
	db "!{lo}!{ck}sm!{it}h, but now he !{is} !{hi}!{di}ng",!Scroll
	db "!{the} fact th!{at_}he !{wa}s a !{thi}ef!{Dots}",!WaitKey,!Scroll
	db "!{Dots}by p!{re}t!{en}d!{ing_}!{to} !{be} a",!Scroll
	db "!{st}r!{an}ge middle-ag!{ed_}guy!",!Scroll
	db "Ha !{ha} !{ha}!{Dots}",!End
;----------------------------------------
.message_258:
	db "Hah!!{2_}!{Tha}nk !{you}.!{2_}To tell !{you}",!Line2
	db "!{the} !{tr}uth, I f!{ound} !{in}c!{re}!{di}!{ble}",!Line3
	db "!{be}auty !{in}side !{the} pyramid,",!WaitKey,!Scroll
	db "but !{so}!{me}!{on}e !{se}al!{ed_}!{the} !{do}!{or}.",!Scroll
	db "!{You} c!{an}'t !{do} !{an}y!{thin}g w!{it}h a",!Scroll
	db "!{st}!{and}ard !{bo}mb, !{the}y say!{Dots}",!End
;----------------------------------------
.message_259:
	db "Heh heh.!{2_}!{Tha}nk !{you}.!{2_}As a",!Line2
	db "m!{at}t!{er_}!{of} fact, m!{on}!{st}!{er_}!{ma}gic",!Line3
	db "!{is} !{ma}k!{ing_}!{it} r!{ain} !{in} !{the} s!{wa}mp.",!WaitKey,!Scroll
	db "If !{you} !{can_}move !{the} air w!{it}h",!Scroll
	db "m!{or}e !{for}ce !{tha}n !{the} m!{on}!{st}!{er}s,",!Scroll
	db "!{the} r!{ain} !{ma}y !{st}op.",!End
;----------------------------------------
.message_260:
	db "Sniffle!{Dots} Hey broth!{er_}!{Name}!",!Line2
	db "Do !{you} !{have} a !{bo}ttle !{to} keep",!Line3
	db "a bug !{in}?",!WaitKey,!Scroll
	db "!{Dots}",!Scroll
	db "I !{se}e.!{2_}!{You} !{do}!{nt_}!{have} !{on}e!{Dots}",!Scroll
	db "Cough cough!{Dots}",!End
;----------------------------------------
.message_261:
	db "I c!{an}'t !{go} !{out_}'cau!{se} I'm si!{ck}!{Dots}",!Line2
	db "Cough cough!{Dots}",!Line3
	db "Peo!{ple} say I caught !{thi}s cold",!WaitKey,!Scroll
	db "!{fro}m !{the} !{ev}il air th!{at_}!{is} !{com}!{in}g",!Scroll
	db "!{do}wn !{of}f !{the} mount!{ain}!{Dots}",!Scroll
	db "Sniff sniff!{Dots}",!WaitKey,!Scroll
	db "!{Thi}s !{is} my bug-c!{at}c!{hi}ng net.",!Scroll
	db "I'll u!{se} !{it} !{wh}!{en_}I'm !{be}tt!{er}, but",!Scroll
	db "!{for} now, I'll l!{en}d !{it} !{to} !{you}.",!End
;----------------------------------------
.message_262:
	db "Sniffle!{Dots} I hope I !{get} !{we}ll",!Line2
	db "!{so}!{on}!{Dots}",!Line3
	db "Cough cough!{Dots}",!End
;----------------------------------------
.message_263:
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots}!{2_}!{Dots}!{2_}!{Dots}!{2_}!{Dots}",!Line2
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots}",!End
;----------------------------------------
.message_264:
	db "Why !{di}d !{you} take my sign?!{2_}It",!Line2
	db "says pl!{ain} as day !{to} !{just} leave",!Line3
	db "!{me} a!{lo}ne!!{2_}Sheee!{sh}!",!End
;----------------------------------------
.message_265:
	db "I h!{ear}d th!{at_}!{you} !{know} I us!{ed_}!{to}",!Line2
	db "!{be} a !{thi}ef, right?",!Line3
	db !WaitKey,!Scroll
	db "Well, I'll op!{en_}a !{che}!{st} !{for} !{you}.",!Scroll
	db "Will !{you} keep !{it} !{se}c!{re}t !{fro}m",!Scroll
	db "!{ev}!{er}y!{on}e el!{se}?",!WaitKey,!Scroll
	db "Would !{you} !{ple}a!{se} !{pro}m!{is}e?",!Scroll
	db "!{4_}> Prom!{is}e !{not} !{to} tell",!Scroll
	db "!{4_}!{4_}Tell !{it} !{to} !{ev}!{er}y!{on}e",!Choose,!End
;----------------------------------------
.message_266:
	db "OK, if !{tha}t!{s_}!{the} !{wa}y !{you} !{wa}nt",!Line2
	db "!{it}, I hope !{you} drag th!{at_}!{che}!{st}",!Line3
	db "ar!{ound} !{for}!{ev}!{er}!",!End
;----------------------------------------
.message_267:
	db "Re!{me}m!{be}r, !{you} !{pro}m!{is}ed!{Dots}",!Line2
	db "D!{on}'t tell !{an}y!{on}e.",!End
;----------------------------------------
.message_268:
	db "All right, br!{ing_}th!{at_}!{che}!{st} ov!{er}",!Line2
	db "h!{er}e!{Dots}!{2_}S!{er}iously, keep !{thi}s a",!Line3
	db "!{se}c!{re}t !{fro}m !{ev}!{er}y!{on}e.",!End
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
	db "Hold !{up} !{the} M!{ast}!{er_}Sw!{or}d !{and}",!Line2
	db "!{you} !{wi}ll !{get} !{the} !{ma}gic !{of}",!Line3
	db "Eth!{er}.",!End
;----------------------------------------
.message_271:
	db "Hold !{up} !{the} M!{ast}!{er_}Sw!{or}d !{and}",!Line2
	db "!{you} !{wi}ll !{get} !{the} !{ma}gic !{of}",!Line3
	db "Bom!{bo}s.",!End
;----------------------------------------
.message_272:
	db "Hey!!{2_}Bl!{ast} !{you} !{for} !{wa}k!{ing_}!{me}",!Line2
	db "!{fro}m my deep, dark sleep!",!Line3
	db "!{Dots}I !{me}!{an}, !{tha}nks a !{lo}t, sir!",!WaitKey,!Scroll
	db "But now I !{wi}ll !{get} my r!{ev}!{en}ge",!Scroll
	db "!{on} !{you}.!{2_}Get !{re}ady !{for} !{it}!",!Scroll
	db "!{Dots}Err, !{is} th!{at_}OK w!{it}h !{you},",!WaitKey,!Scroll
	db "sir?",!End
;----------------------------------------
.message_273:
	db "Heh heh heh!!{2_}I !{la}ugh !{at_}!{you}r",!Line2
	db "m!{is}!{for}tune!!{2_}Now !{you}r !{ma}gic",!Line3
	db "!{pow}!{er_}!{wi}ll drop by !{on}e !{ha}lf!",!WaitKey,!Scroll
	db "C!{on}gr!{at}ul!{at}i!{on}s!",!Scroll
	db "Now, !{do} !{you}r !{be}!{st}, !{ev}!{en_}though",!Scroll
	db "I'm su!{re_}!{it} wo!{nt_}!{be} !{en}ough!",!WaitKey,!Scroll
	db "Have a nice day!!{2_}See !{you}!",!End
;----------------------------------------
.message_274:	; Intro sequence
	db !ScrollSpd00,!Color07,!Speed03,!Window02,!NextPic
	db "L!{on}g a!{go}, !{in} !{the} !{be}autiful",!Line2
	db "k!{in}g!{do}m !{of} Hyrule surr!{ound}ed",!Line3
	db "by mount!{ain}s !{and_}!{for}e!{st}s!{Dots}",!Wait09,!Scroll
	db "leg!{en}ds !{to}ld !{of} !{an} omnipot!{ent}",!Scroll
	db "!{and_}omn!{is}ci!{ent} Gold!{en_}Pow!{er}",!Scroll
	db "th!{at_}!{re}sid!{ed_}!{in} a !{hi}dd!{en_}l!{and}.",!Wait09,!NextPic,!NextPic,!Scroll
	db "M!{an}y peo!{ple} agg!{re}ssively",!Scroll
	db "!{so}ught !{to} !{ent}!{er_}!{the} !{hi}dd!{en}",!Scroll
	db "Sacr!{ed_}Realm!{Dots}",!Wait07,!Scroll
	db "But no !{on}e !{ev}!{er_}!{re}turned.",!Scroll
	db "One day !{ev}il !{pow}!{er_}!{be}g!{an} !{to}",!Scroll
	db "f!{lo}w !{fro}m !{the} Sacr!{ed_}Realm!{Dots}",!Wait07,!Scroll
	db "So !{the} K!{ing_}!{com}m!{and}!{ed_}s!{ev}!{en}",!Scroll
	db "sages !{to} !{se}al !{the} g!{at}e !{to}",!Scroll
	db "!{the} !{re}alm !{of} !{the} Gold!{en_}Pow!{er}.",!Wait09,!NextPic,!NextPic,!Scroll
	db "Th!{at_}!{se}al !{sh}ould !{have} !{re}m!{ain}ed",!Scroll
	db "!{for} !{all_}ti!{me}!{Dots}",!Scroll
	db !Wait09,!NextPic,!NextPic,!Scroll
	db "!{Dots}!{2_}!{Dots}But, !{wh}!{en_}!{the}!{se} !{ev}!{ent}s",!Scroll
	db "w!{er}e obscur!{ed_}by !{the} m!{is}ts !{of}",!Scroll
	db "ti!{me} !{and_}!{be}ca!{me} leg!{en}d!{Dots}",!End
;----------------------------------------
.message_275:	; Intro sequence (2)
	db !Window02,!Color07
	db !Speed03,!Line1
	db "A my!{st}!{er}ious prie!{st} !{know}n as",!Line2
	db "Agahnim ca!{me} !{to} Hyrule !{to}",!Line3
	db "!{re}lea!{se} !{the} !{se}al.!{2_}He elim!{in}!{at}ed",!Wait05,!Scroll
	db "!{the} !{go}od K!{ing_}!{of} Hyrule!{Dots}",!Wait05,!End
;----------------------------------------
.message_276:	; Intro sequence (3)
	db !Window02,!Color07
	db !Speed03,!Line1
	db "Through !{ev}il !{ma}gic, he !{be}g!{an}",!Line2
	db "!{to} !{ma}ke !{des}c!{en}d!{an}ts !{of} !{the}",!Line3
	db "s!{ev}!{en_}sages v!{an}!{is}h, !{on}e",!Wait05,!Scroll
	db "aft!{er_}!{an}oth!{er}.",!Wait05,!End
;----------------------------------------
.message_277:	; Intro sequence (4)
	db !Window02,!Color07
	db !Speed03,!Line1
	db "And !{the} ti!{me} !{of} !{des}t!{in}y !{for}",!Line2
	db "Pr!{in}cess Zelda !{is} draw!{in}g",!Line3
	db "n!{ear}.",!Wait05,!End
;----------------------------------------
.message_278:
	db "Becau!{se} !{the} key !{is} !{lo}!{ck}ed",!Line2
	db "!{in}side !{thi}s !{che}!{st}, !{you} c!{an}",!Line3
	db "n!{ev}!{er_}op!{en_}!{it}.",!WaitKey,!Scroll
	db "Ju!{st} take !{it} w!{it}h !{you}.",!End
;----------------------------------------
.message_279:
	db "100 R!{up}ees !{for} 30 Bombs!!{2_}30",!Line2
	db "Bombs !{for} !{just} 100 R!{up}ees!",!Line3
	db "Plea!{se} buy 'em, m!{is}t!{er}!",!End
;----------------------------------------
.message_280:
	db "100 R!{up}ees !{for} 30 Bombs!!{2_}I al!{so}",!Line2
	db "!{have} a new S!{up}!{er_}Bomb !{in} !{st}o!{ck}",!Line3
	db "!{for} !{on}!{ly_}100 R!{up}ees!!{2_}Plea!{se}",!WaitKey,!Scroll
	db "buy !{it} !{to}o, m!{is}t!{er}!",!End
;----------------------------------------
.message_281:
	db "!{Tha}nk !{you} v!{er}y !{mu}ch.",!Line2
	db "!{Tha}nk !{you} v!{er}y !{mu}ch.",!End
;----------------------------------------
.message_282:
	db "!{Tha}nk !{you} v!{er}y !{mu}ch.!{2_}!{You} c!{an}",!Line2
	db "drop !{thi}s Bomb !{of}f !{an}y!{wh}!{er}e.",!Line3
	db "(P!{re}ss !{the} A Butt!{on}.)",!WaitKey,!Scroll
	db "Plea!{se} !{do}!{nt_}!{for}!{get} !{it}.",!End
;----------------------------------------
.message_283:
	db "Ki ki ki!!{2_}If !{you} !{give_}!{me} 100",!Line2
	db "R!{up}ees,!{2_}I !{wi}ll op!{en_}!{the}",!Line3
	db "!{en}!{tr}!{an}ce !{for} !{you}.!{2_}Ki ki ki!",!WaitKey,!Scroll
	db "!{3_}Wh!{at_}!{wi}ll !{you} !{do}?",!Scroll
	db "!{4_}> Ask !{hi}m !{to} op!{en_}!{it}",!Scroll
	db "!{4_}!{4_}Try !{to} op!{en_}!{it} !{you}r!{se}lf",!Choose,!End
;----------------------------------------
.message_284:
	db "Ki ki ki!!{2_}Hmph!",!Line2
	db "Do !{it} !{you}r!{se}lf, !{the}n!",!Line3
	db "Kik ki ki!",!End
;----------------------------------------
.message_285:
	db "Ki ki!!{2_}Good choice!!{2_}!{The}n I !{get}",!Line2
	db "100 !{of} !{you}r R!{up}ees.!{2_}Kik ki ki!",!End
;----------------------------------------
.message_286:
	db "I'm Kiki !{the} m!{on}key ki ki!",!Line2
	db "I !{lo}ve R!{up}ees m!{or}e !{tha}n",!Line3
	db "!{an}y!{thin}g.!{2_}C!{an} !{you} sp!{are_}!{me}",!WaitKey,!Scroll
	db "10 R!{up}ees?",!WaitKey,!Scroll
	db "!{2_}Wh!{at_}!{wi}ll !{you} !{do}?",!Scroll
	db "!{4_}> Give !{hi}m 10 R!{up}ees",!Scroll
	db "!{4_}!{4_}N!{ev}!{er_}!{give_}!{hi}m !{an}y!{thin}g",!Choose,!End
;----------------------------------------
.message_287:
	db "Ki ki ki ki!!{2_}Good choice!!{2_}I",!Line2
	db "!{wi}ll ac!{com}p!{an}y !{you} !{for} a w!{hi}le.",!Line3
	db "Kik kiki!",!End
;----------------------------------------
.message_288:
	db "Ki ki!!{2_}Harumph!!{2_}I !{have} no",!Line2
	db "!{re}as!{on} !{to} talk !{to} !{you}, !{the}n.",!Line3
	db "Bye bye!!{2_}Kik ki ki!",!End
;----------------------------------------
.message_289:
	db "Ki ki?!{2_}Wh!{at_}!{are_}!{you} !{do}!{in}g?",!Line2
	db "I !{do}!{nt_}!{wa}nt !{to} !{go} !{the}!{re}!",!End
;----------------------------------------
.message_290:
	db "Ohh, !{tha}nk !{you} v!{er}y !{mu}ch!",!Line2
	db "!{You} sav!{ed_}my life.!{2_}Plea!{se} take",!Line3
	db "!{me} outside.",!End
;----------------------------------------
.message_291:
	db "Gyaaah!",!Line2
	db "Too bright!",!End
;----------------------------------------
.message_292:
	db "Err!{Dots}!{2_}Wa!{it} a m!{in}ute!{Dots}",!Line2
	db "Plea!{se} !{do}!{nt_}!{go} !{thi}s !{wa}y.",!End
;----------------------------------------
.message_293:
	db "I am Ag!{in}ah.!{2_}I s!{en}!{se} !{some}!{thin}g",!Line2
	db "!{is} !{ha}pp!{en}!{ing_}!{in} !{the} Sac!{re}d",!Line3
	db "Realm !{the} s!{ev}!{en_}sages !{se}aled!{Dots}",!WaitKey,!Scroll
	db "!{Thi}s !{mu}!{st} !{be} !{an} om!{en_}!{of} !{the}",!Scroll
	db "G!{re}!{at_}C!{at}aclysm !{for}e!{to}ld by",!Scroll
	db "!{the} peo!{ple} !{of} Hyli!{an} b!{lo}od!{Dots}",!WaitKey,!Scroll
	db "!{Dots} !{Dots} !{Dots}",!Scroll
	db "!{The} !{pro}phecy says, ""!{The} H!{er}o",!Scroll
	db "!{wi}ll !{st}!{and_}!{in} !{the} !{des}!{er}t hol!{di}ng",!WaitKey,!Scroll
	db "!{the} Book Of Mu!{do}ra.""",!Scroll
	db "If !{you} !{have} !{the} Book Of Mu!{do}ra",!Scroll
	db "!{you} !{can_}!{re}ad !{the} l!{an}guage !{of}",!WaitKey,!Scroll
	db "!{the} Hyli!{an} peo!{ple}.",!Scroll
	db "It !{sh}ould !{be} !{in} !{the} hou!{se} !{of}",!Scroll
	db "!{bo}oks !{in} !{the} vil!{la}ge!{Dots}",!WaitKey,!Scroll
	db "!{You} !{mu}!{st} !{get} !{it}!",!Scroll
	db "If !{you} !{are_}!{the} p!{er}s!{on} !{wh}o !{wi}ll",!Scroll
	db "!{be} !{The} H!{er}o!{Dots}",!End
;----------------------------------------
.message_294:
	db "!{You} !{have} collect!{ed_}!{the} th!{re}e",!Line2
	db "P!{en}d!{an}ts.",!Line3
	db "If !{you} !{are_}!{in}de!{ed_}!{the} H!{er}o !{wh}o",!WaitKey,!Scroll
	db "!{has} W!{is}!{do}m, Courage !{and_}Pow!{er},",!Scroll
	db "!{the} M!{ast}!{er_}Sw!{or}d sleep!{ing_}!{in}",!Scroll
	db "!{the} !{for}e!{st} !{wi}ll !{be} !{you}rs.",!End
;----------------------------------------
.message_295:
	db "A!{ha}!!{2_}It !{is} !{the} Book Of Mu!{do}ra.",!Line2
	db "W!{it}h !{it}, !{you} !{can_}!{re}ad !{the}",!Line3
	db "l!{an}guage !{of} !{the} Hyli!{an} peo!{ple}.",!End
;----------------------------------------
.message_296:
	db "!{You} !{are_}!{the} !{tr}ue H!{er}o!{Dots}",!Line2
	db "I !{be}li!{ev}e th!{at_}!{you} !{wi}ll !{re}turn",!Line3
	db "peace !{to} !{thi}s l!{and_}ag!{ain}.",!End
;----------------------------------------
.message_297:
	db "!{You}r !{tr}ial !{in} !{the} !{des}!{er}t !{has}",!Line2
	db "!{ma}de !{you} !{st}r!{on}g!{er}.!{2_}!{The} b!{lo}od",!Line3
	db "!{of} !{the} H!{er}o !{mu}!{st} !{be} !{in} !{you}r",!WaitKey,!Scroll
	db "ve!{in}s!{Dots}",!End
;----------------------------------------
.message_298:
	db "Was !{it} !{you} !{wh}o !{di}!{st}ur!{be}d my",!Line2
	db "peaceful nap?!{2_}I !{wi}ll !{give_}!{thi}s",!Line3
	db "!{to} !{you} if !{you} !{go} a!{wa}y!",!End
;----------------------------------------
.message_299:
	db "I !{do}!{nt_}!{have} !{an}y m!{or}e !{go}od",!Line2
	db "p!{re}s!{ent}s !{for} !{you}.!{2_}Take !{thi}s",!Line3
	db "!{in}!{st}ead, pe!{st}!",!End
;----------------------------------------
.message_300:
	db "Yo !{Name}!!{2_}A my!{st}!{er}ious fog",!Line2
	db "!{has} !{re}c!{ent}!{ly_}fall!{en_}ov!{er_}!{the}",!Line3
	db "!{for}e!{st}.!{2_}We !{have} !{to} !{be} ca!{re}ful!",!End
;----------------------------------------
.message_301:
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
.message_352:
	db "Hi, !{ma}y I help !{you}?!{2_}!{You} c!{an}",!Line2
	db "op!{en_}two !{che}!{st}s !{for} 30 R!{up}ees.",!Line3
	db "Why !{do}!{nt_}!{you} p!{la}y?",!WaitKey,!Scroll
	db "Wh!{at_}!{wi}ll !{you} !{do}?",!Scroll
	db "!{4_}> P!{la}y h!{er}e",!Scroll
	db "!{4_}!{4_}May!{be} next ti!{me}",!Choose,!End
;----------------------------------------
	db !BankEnd
;----------------------------------------
warnpc $1D8000	; 0x0E8000
