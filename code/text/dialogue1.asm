;****************************************************************
; 	Zelda 3 Redux - Dialogue 1 data
;****************************************************************

;****************************************
;    Include Table & Dictionary files
;****************************************
incsrc "code/text/main_font.txt"

;****************************************
; 	Definitions
;****************************************
; Definitions for the Dictionary
incsrc "code/text/dictionary.txt"

; Control codes definitions
incsrc "code/text/control_codes.txt"

;****************************************
;	Text pointers
;****************************************
; Text pointer for dialogue table 1
org $0ED3EE	; 0x0753EE
	lda.b #(dialogue_table1)>>16	; lda #$1C	; A9 1C
	sta $02
	rep #$30		; C2 30	
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
	db "Uhhh!{Dots} Th!{at_}voice!{Dots} !{Name}?",!Line2
	db "Is !{it} !{you}?!{2_}I !{to}ld !{you}",!Line3
	db "!{to} !{wa}!{it} !{at_}ho!{me}{Dots}",!WaitKey,!Scroll
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
	db "!{4_} > Yes",!Scroll
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
	db "!{Name}!!{2_}!{You} !!{are_}a !{se}c!{on}d !{to}o",!Line2
	db "l!{at}e.!{2_}I !{have} failed!{Dots} Zelda!{Dots}",!Line3
	db "!{The} !{so}l!{di}!{er}s !{have}",!WaitKey,!Scroll
	db "abduct!{ed_}h!{er}.",!Scroll
	db "!{The}y !{have} tak!{en_}h!{er_}!{to}",!Scroll
	db "!{the} c!{ast}le.",!WaitKey,!Scroll
	db "!{You} !{mu}!{st} f!{in}d h!{er_}!{be}!{for}e !{the}",!Scroll
	db "prie!{st} w!{or}ks !{hi}s !{ma}gic.",!WaitKey,!Scroll
	db "Plea!{se}!{Dots}!{You} !!{are_}our !{on}ly",!Scroll
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
	db "!{4_} > Yes",!Scroll
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
	db "!{Name}, !{you} !!{are_}w!{on}d!{er}ful!",!Line2
	db "As I thought, !{you} !{have} !{the}",!Line3
	db "!{pow}!{er_}!{of} !{the} H!{er}o !{in}side !{you}!",!WaitKey,!Scroll
	db "Now, !{you} !{sh}ould !{get} !{the} M!{ast}!{er}",!Scroll
	db "Sw!{or}d.!{2_}I am c!{on}fid!{ent} th!{at_}!{you}",!Scroll
	db "!{can_}defe!{at_}!{the} !{ev}il prie!{st}!",!End
;----------------------------------------
.message_040:
	db "!Window02,!Speed03!{Name}!!{2_}Help!!{2_}!{The} !{so}l!{di}!{er}s",!Line2
	db "!!{are_}!{com}!{ing_}!{to} !{the} S!{an}ctuary!",!Line3
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
	db "!{4_} > Yes",!Scroll
	db "!{4_}!{4_}Not !{at_}all",!Choose,!End
;----------------------------------------
.message_045:
	db "Any!{wa}y, !{lo}ok !{for} !{the} eld!{er}.",!Line2
	db "!{The}!{re} !{mu}!{st} !{be} !{so}!{me}!{on}e !{in} !{the}",!Line3
	db "vil!{la}ge !{wh}o !{know}s !{wh}!{er}e he !{is}.",!WaitKey,!Scroll
	db "!{You} take c!!{are_}now, !{Name}!{Dots}",!End
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
	db "If !{you} !!{are_}!{the} !{tr}ue H!{er}o, !{the}",!Scroll
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
	db "!{4_} > Yeah!",!Scroll
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
	db "!!{are_}!{hi}d!{ing_}!{fro}m !{the} !{ev}il",!Line3
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
	db "!{The} !{ma}id!{en}s !!{are_}!{lo}!{ck}!{ed_}!{in}",!WaitKey,!Scroll
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
	db "!{You} !!{are_}c!{or}!{re}ct, !{you}ng m!{an}!",!Line2
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
	db "Bew!!{are_}!{of} deep w!{at}!{er_}!{and_}Z!{or}a!",!End
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
	db "!{Thi}s !{wa}y !{Left} Hyrule C!{ast}le",!Line2
	db "!{4_}!{4_}Lake Hylia",!End
;----------------------------------------
.message_070:
	db "Pay no !{at}t!{ent}i!{on} !{to} !{the}",!Line2
	db "av!{er}age middle-ag!{ed_}m!{an}",!Line3
	db "!{st}!{and}!{ing_}by !{thi}s sign.",!WaitKey,!Scroll
	db "Leave !{hi}m a!{lo}ne!",!End
;----------------------------------------
.message_071:
	db !Line2
	db "!{The} Hou!{se} Of Lum!{be}rja!{ck}s",!Line3
	db "A. Bumpk!{in} !{and_}B. Bumpk!{in}",!End
;----------------------------------------
.message_072:
	db "!{Thi}s !{wa}y !{Down}",!Line2
	db "!{4_}!{3_}Kakariko Vil!{la}ge",!End
;----------------------------------------
.message_073:
	db "Dou!{ble}, !{do}u!{ble} !{to}il !{and_}!{tr}ou!{ble},",!Line2
	db "fi!{re_}burn !{and_}cauldr!{on} bub!{ble}!{Dots}",!Line3
	db "Mak!{ing_}!{mu}!{sh}room b!{re}w, I am!{Dots}",!End
;----------------------------------------
.message_074:
	db "Heh heh!{Dots}!{2_}!{Tha}nk !{you}, !{you}ng",!Line2
	db "m!{an}!{Dots}!{2_}Co!{me} !{ba}!{ck} !{to} !{the} !{sh}op",!Line3
	db "l!{at}!{er_}!{for} !{some}!{thin}g !{go}od!{Dots}",!WaitKey,!Scroll
	db "Heh heh!{Dots}",!End
;----------------------------------------
.message_075:
	db "Mmmmm!{Dots}!{2_}!{The} s!{me}ll !{of} rott!{en}",!Line2
	db "fru!{it}!{Dots}!{2_}If !{you} !{give_}!{me} !{tha}t",!Line3
	db "Mu!{sh}room, I !{can_}f!{in}!{is}h my b!{re}w.",!WaitKey,!Scroll
	db "Heh heh!{Dots}",!End
;----------------------------------------
.message_076:
	db "If !{you} !{wa}nt !{to} buy !{the} poti!{on},",!Line2
	db "!{you} !{sh}ould br!{ing_}a !{bo}ttle !{to}",!Line3
	db "put !{it} !{in}!{Dots}!{2_}He he he!",!End
;----------------------------------------
.message_077:
	db "R!{ed_}!{is} !{the} poti!{on} !{of} life.",!Line2
	db "G!{re}!{en_}!{is} !{the} poti!{on} !{of} !{ma}gic.",!Line3
	db "Blue r!{en}ews !{bo}th life !{and}",!WaitKey,!Scroll
	db "!{ma}gic.",!Scroll
	db "H!{er}e, t!{ast}e a sam!{ple} !{of} !{the}",!Scroll
	db "R!{ed_}Poti!{on}!{Dots}!{2_}He he!",!End
;----------------------------------------
.message_078:
	db "W!{it}h!{out_}a !{ma}gic !{bo}ttle, !{you} c!{an}",!Line2
	db "!{not} buy !{an}y poti!{on}s.",!Line3
	db "He he he!",!End
;----------------------------------------
.message_079:
	db "No,!{2_}no,!{2_}no!{Dots}!{2_}I c!{an}'t put",!Line2
	db "!{an}y!{thin}g !{in}!{to} a full !{bo}ttle.",!Line3
	db "He he he!",!End
;----------------------------------------
.message_080:
	db "!{You} !{go}t !{the} L!{an}t!{er}n!",!Line2
	db "Now !{you} !{can_}l!{ight_}t!{or}!{che}s !{and}",!Line3
	db "!{se}e !{you}r !{wa}y !{in} darkness.",!End
;----------------------------------------
.message_081:
	db "!{You} !{go}t !{the} Boom!{er}!{an}g!",!Line2
	db "Give !{it} a !{tr}y!!{2_}(To !{se}lect !{an}",!Line3
	db "!{it}em, p!{re}ss !{the} Start Butt!{on}.)",!End
;----------------------------------------
.message_082:
	db "!{You} f!{ound} !{the} Bow!",!Line2
	db "!{You} !{can_}!{sh}oot arrows until !{you}",!Line3
	db "run out!",!End
;----------------------------------------
.message_083:
	db "!{You} !{bo}rrow!{ed_}a !{sh}ovel!",!Line2
	db "!{You} !{can_}!{di}g !{in} m!{an}y p!{la}ces.",!Line3
	db "!{You} n!{ev}!{er_}!{know} !{wh}!{at_}!{you}'ll",!WaitKey,!Scroll
	db "f!{in}d!",!End
;----------------------------------------
.message_084:
	db "!{Thi}s !{is} !{the} Magic Cape!",!Line2
	db "!{You} !!{are_}!{in}v!{is}i!{ble} !{wh}!{en_}!{you} w!{ear}",!Line3
	db "!{it}! W!{at}ch !{you}r Magic Met!{er}!"
;----------------------------------------
.message_085:
	db "!{Thi}s !{is} Magic Powd!{er}!",!Line2
	db "Try !{to} spr!{in}kle !{it} !{on} !{en}emies",!Line3
	db "!{and_}m!{an}y oth!{er_}!{thin}gs!",!End
;----------------------------------------
.message_086:
	db "!{You} !{bo}ught Z!{or}a!{s_}Flipp!{er}s!",!Line2
	db "W!{it}h !{the}!{se} !{you} !{sh}ould !{be} a!{ble}",!Line3
	db "!{to} s!{wi}m !{ev}!{en_}!{in} deep w!{at}!{er}!"
;----------------------------------------
.message_087:
	db "!{You} !{go}t !{the} Pow!{er_}G!{lo}ve!",!Line2
	db "!{You} !{can_}feel !{st}r!{en}gth !{in} !{bo}th",!Line3
	db "h!{and}s!!{2_}!{You} !{can_}pi!{ck} !{up} !{and}",!WaitKey,!Scroll
	db "carry !{st}!{on}es now!",!End
;----------------------------------------
.message_088:
	db "!{You} w!{on} !{the} P!{en}d!{an}t Of",!Line2
	db "Courage!!{2_}Take !{it} !{to}",!Line3
	db "Sa!{has}rah!{la}!",!WaitKey,!Scroll
	db "Two P!{en}d!{an}ts !{re}m!{ain}!",!End
;----------------------------------------
.message_089:
	db "!{You} w!{on} !{the} P!{en}d!{an}t Of W!{is}!{do}m!",!Line2
	db "!{You}r !{go}al !{of} f!{in}d!{ing_}th!{re}e",!Line3
	db "P!{en}d!{an}ts !{is} !{in} sight!",!WaitKey,!Scroll
	db "Go !{for} !{the} l!{ast} !{on}e!",!End
;----------------------------------------
.message_090:
	db "!{You} w!{on} !{the} P!{en}d!{an}t Of Pow!{er}!",!Line2
	db "W!{it}h !{thi}s, !{you} !{have} collected",!Line3
	db "!{all_}th!{re}e P!{en}d!{an}ts!!{2_}Go now !{to}",!WaitKey,!Scroll
	db "!{the} Lo!{st} Woods !{to} !{get}",!Scroll
	db "!{the} M!{ast}!{er_}Sw!{or}d!",!End
;----------------------------------------
.message_091:
	db "!{Thi}s Mu!{sh}room s!{me}lls like s!{we}et",!Line2
	db "rott!{en_}fru!{it}!{Dots}",!Line3
	db "!{You} !{can_}!{give_}!{thi}s !{to} !{an}y!{on}e",!WaitKey,!Scroll
	db "!{wh}o !{wa}nts !{it} (Select !{it} !{and}",!Scroll
	db "p!{re}ss !{the} Y Butt!{on}).",!End
;----------------------------------------
.message_092:
	db "!{You} f!{ound} !{the} Tome !{of} Mu!{do}ra!",!Line2
	db "!{You} !{can_}u!{se} !{it} !{to} !{re}ad !{the}",!Line3
	db "!{an}ci!{ent} l!{an}guage !{of} !{the}",!WaitKey,!Scroll
	db "Hyli!{an}s!",!End
;----------------------------------------
.message_093:
	db "!{You} f!{ound} !{the} Mo!{on} P!{ear}l!",!Line2
	db "!{Thi}s !{pro}tects !{The} H!{er}o !{fro}m",!Line3
	db "!{the} ch!{an}g!{ing_}effects !{of} !{the}",!WaitKey,!Scroll
	db "Gold!{en_}Pow!{er}.",!End
;----------------------------------------
.message_094:
	db "!{You} f!{ound} !{the} Compass!",!Line2
	db "Now !{you} !{can_}p!{in}po!{in}t !{the}",!Line3
	db "!{la}ir !{of} !{the} dunge!{on}!{s_}!{ev}il",!WaitKey,!Scroll
	db "m!{ast}!{er}!"
;----------------------------------------
.message_095:
	db "!{You} !{go}t !{the} Map!",!Line2
	db "!{You} !{can_}u!{se} !{it} !{to} !{se}e !{you}r",!Line3
	db "curr!{ent} pos!{it}i!{on} !{and_}!{the} !{re}!{st}",!WaitKey,!Scroll
	db "!{of} !{the} dunge!{on} (P!{re}ss X).",!End
;----------------------------------------
.message_096:
	db "!{You} f!{ound} !{the} Ice Rod!",!Line2
	db "Its c!{hi}ll !{ma}gic bl!{ast}s !{the} air!",!Line3
	db "But w!{at}ch !{you}r Magic Met!{er}!",!End
;----------------------------------------
.message_097:
	db "!{You} f!{ound} !{the} Fi!{re_}Rod!",!Line2
	db "!{Thi}s rod !{com}m!{and}s !{the} r!{ed_}fi!{re}!",!Line3
	db "But w!{at}ch !{you}r Magic Met!{er}!",!End
;----------------------------------------
.message_098:
	db "!{Thi}s !{is} !{the} Eth!{er_}Medalli!{on}!",!Line2
	db "Its !{ma}gic c!{on}!{tr}ols !{the} !{up}p!{er}",!Line3
	db "!{at}mosph!{er}e !{and_}po!{la}r w!{in}d!",!WaitKey,!Scroll
	db "W!{at}ch !{you}r Magic Met!{er}!",!End
;----------------------------------------
.message_099:
	db "!{Thi}s !{is} !{the} Bom!{bo}s Medalli!{on}!",!Line2
	db "Its !{ma}gic !{ma}kes !{the} gr!{ound}",!Line3
	db "exp!{lo}de w!{it}h !{pow}!{er}!",!WaitKey,!Scroll
	db "W!{at}ch !{you}r Magic Met!{er}!",!End
;----------------------------------------
.message_100:
	db "!{Thi}s !{is} !{the} Quake Medalli!{on}!",!Line2
	db "Its !{ma}gic cau!{se}s !{the} gr!{ound}",!Line3
	db "!{to} s!{ha}ke !{and_}defe!{at}s",!WaitKey,!Scroll
	db "n!{ear}by !{en}emies!",!Scroll
	db "W!{at}ch !{you}r Magic Met!{er}!",!End
;----------------------------------------
.message_101:
	db "!{You} !{go}t !{the} Magic Hamm!{er}!",!Line2
	db "!{You} !{can_}drive !{the} wood!{en}",!Line3
	db "!{st}akes !{do}wn !{in}!{to} !{the} gr!{ound}!",!WaitKey,!Scroll
	db "!{You} !{can_}u!{se} !{it} !{to} p!{ound} !{on}",!Scroll
	db "oth!{er_}!{thin}gs !{to}o!",!End
;----------------------------------------
.message_102:
	db "Oh!!{2_}H!{er}e !{is} !{the} Ocar!{in}a!",!Line2
	db "Its !{mu}sic su!{re}!{ly_}!{has} !{so}!{me}",!Line3
	db "my!{st}!{er}ious !{pow}!{er}!",!End
;----------------------------------------
.message_103:
	db "!{You} !{go}t !{the} C!{an}e Of So!{ma}ria!",!Line2
	db "It !{wi}ll !{be} v!{er}y helpful if !{you}",!Line3
	db "!{ma}ke !{pro}p!{er_}u!{se} !{of} !{it}!",!WaitKey,!Scroll
	db "Wh!{at_}a my!{st}!{er}ious c!{an}e!",!End
;----------------------------------------
.message_104:
	db "BOING!!{2_}!{Thi}s !{is} !{the} Hookshot!",!Line2
	db "It ext!{en}ds !{and_}c!{on}!{tr}acts !{and}!{Dots}",!Line3
	db "BOING!!{2_}It !{can_}grap!{ple} m!{an}y",!WaitKey,!Scroll
	db "!{thin}gs!",!End
;----------------------------------------
.message_105:
	db "!{You} !{go}t !{so}!{me} Bombs!",!Line2
	db "!{You} !{can_}pi!{ck} !{up} !{and_}throw",!Line3
	db "a Bomb !{you} p!{la}ced",!WaitKey,!Scroll
	db "(P!{re}ss !{the} A Butt!{on})!",!End
;----------------------------------------
.message_106:
	db "!{Thi}s !{is} a Magic Bottle!",!Line2
	db "!{You} !{can_}!{st}!{or}e !{an} !{it}em",!Line3
	db "!{in}side !{and_}th!{en_}u!{se} !{it} l!{at}!{er}!",!End
;----------------------------------------
.message_107:
	db "!{You} !{go}t !{the} Big Key!",!Line2
	db "!{Thi}s !{is} !{the} m!{ast}!{er_}key !{of} !{the}",!Line3
	db "dunge!{on}.!{2_}It !{can_}op!{en_}m!{an}y",!WaitKey,!Scroll
	db "!{lo}!{ck}s th!{at_}sm!{all_}keys c!{an}!{not}.",!End
;----------------------------------------
.message_108:
	db "!{You} !{go}t !{the} T!{it}!{an}!{s_}M!{it}t!",!Line2
	db "Now !{you} !{can_}lift !{the} heavie!{st}",!Line3
	db "!{st}!{on}es th!{at_}w!{er}e !{on}ce",!WaitKey,!Scroll
	db "impossi!{ble} !{to} budge.",!End
;----------------------------------------
.message_109:
	db "He gave !{you} !{the} Magic Mirr!{or}!",!Line2
	db "!{Thi}s mirr!{or} !{is} blue, cl!{ear} !{and}",!Line3
	db "!{be}autiful!{Dots}",!WaitKey,!Scroll
	db "!{You} feel like !{it} !{is} !{go}!{ing_}!{to}",!Scroll
	db "abs!{or}b !{you} !{in}!{to} !{an}oth!{er_}w!{or}ld!{Dots}",!End
;----------------------------------------
.message_110:
	db "!{Thi}s !{is} !{it}!!{2_}!{The} M!{ast}!{er_}Sw!{or}d!",!Line2
	db "!{Dots}!{2_}!{Dots}!{2_}!{Dots}",!Line3
	db "No, !{thi}s c!{an}'t !{be} !{it}!{Dots} Too !{ba}d.",!End
;----------------------------------------
.message_111:
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
.message_112:
	db "Heh heh heh!{Dots}!{2_}!{Tha}nk !{you}!",!Line2
	db "!{Thi}s !{is} !{the} Me!{di}c!{in}e !{of} Life.",!Line3
	db "U!{se} !{it} !{to} !{re}g!{ain} !{you}r Life",!WaitKey,!Scroll
	db "!{pow}!{er}.",!End
;----------------------------------------
.message_113:
	db "Heh heh heh!{Dots}!{2_}!{Tha}nk !{you}!",!Line2
	db "!{Thi}s !{is} !{the} Me!{di}c!{in}e !{of} Magic.",!Line3
	db "!{You} !{can_}!{re}c!{ha}rge !{you}r my!{st}ic",!WaitKey,!Scroll
	db "!{en}!{er}gy w!{it}h !{it}.",!End
;----------------------------------------
.message_114:
	db "Heh heh heh!{Dots}!{2_}!{Tha}nk !{you}!",!Line2
	db "!{Thi}s !{is} !{the} Me!{di}c!{in}e !{of} Life !{and}",!Line3
	db "Magic!!{2_}!{You} !{can_}!{re}cov!{er_}!{bo}th!",!End
;----------------------------------------
.message_115:
	db "!{You} !{bo}rrow!{ed_}!{the} Bug C!{at}c!{hi}ng",!Line2
	db "Net!!{2_}!{The}!{re} !{ma}y !{be} !{so}!{me} oth!{er}",!Line3
	db "!{thin}gs !{you} !{can_}c!{at}ch w!{it}h !{it},",!WaitKey,!Scroll
	db "!{to}o.",!End
;----------------------------------------
.message_116:
	db "!{You} f!{ound} !{the} Blue Mail!",!Line2
	db "!{Thi}s arm!{or} !{re}duces !{the} da!{ma}ge",!Line3
	db "th!{at_}!{you} take !{fro}m !{en}emies!",!End
;----------------------------------------
.message_117:
	db "!{You} f!{ound} !{the} R!{ed_}Mail!",!Line2
	db "!{Thi}s !{pro}vi!{des} !{ev}!{en_}!{be}tt!{er}",!Line3
	db "!{pro}tecti!{on} !{tha}n !{the} Blue Mail!",!End
;----------------------------------------
.message_118:
	db "G!{re}!{at}!!{2_}!{You}r sw!{or}d !{is} !{st}r!{on}g!{er}!",!Line2
	db "!{You} !{can_}feel !{the} !{sh}e!{er_}!{pow}!{er}",!Line3
	db "f!{lo}w!{ing_}through !{you}r !{bo}dy!",!End
;----------------------------------------
.message_119:
	db "!{You} f!{ound} !{the} Mirr!{or} S!{hi}eld!",!Line2
	db "!{You} !{can_}now !{re}flect !{be}ams",!Line3
	db "th!{at_}!{you}r old !{sh}ield",!WaitKey,!Scroll
	db "could!{nt_}b!{lo}!{ck}!",!End
;----------------------------------------
.message_120:
	db "!{You} !{go}t !{the} C!{an}e Of Byrna!",!Line2
	db "If !{you} sw!{ing_}!{it} !{on}ce, a r!{ing_}!{of}",!Line3
	db "l!{ight_}!{wi}ll !{pro}tect !{you}!",!End
;----------------------------------------
.message_121:
	db "Eh?!{2_}It!{s_}!{lo}!{ck}ed!",!Line2
	db "If !{you} !{ha}d !{the} Big Key, !{you}",!Line3
	db "m!{ight_}!{be} a!{ble} !{to} op!{en_}!{it}!",!End
;----------------------------------------
.message_122:
	db "!{You} !!{are_}!{sh}!{or}t !{on} Magic Pow!{er}!",!Line2
	db "!{You} c!{an}'t u!{se} !{thi}s !{it}em now.",!Line3
	db "W!{at}ch !{you}r Magic Met!{er}!",!End
;----------------------------------------
.message_123:
	db "He gives !{you} !{the} Pegasus",!Line2
	db "Boots!!{2_}Now !{you} !{can_}execute a",!Line3
	db "d!{ev}!{ast}!{at}!{ing_}da!{sh} !{at}ta!{ck}!",!WaitKey,!Scroll
	db "(Hold !{the} A Butt!{on}",!Scroll
	db "!{for} a !{sh}!{or}t ti!{me}.)",!End
;----------------------------------------
.message_124:
	db "Wow!!{2_}I !{ha}v!{en}'t !{se}!{en_}a n!{or}!{ma}l",!Line2
	db "p!{er}s!{on} !{in} a few hundr!{ed_}y!{ear}s!",!Line3
	db "Let !{me} talk !{to} !{you} !{for} a w!{hi}le.",!End
;----------------------------------------
.message_125:
	db "Do !{you} !{know} a!{bo}ut !{the}",!Line2
	db "Gar!{go}yle !{st}!{at}ue !{in} !{the} vil!{la}ge?",!Line3
	db "Peo!{ple} say !{the}y !{can_}h!{ear} a girl",!WaitKey,!Scroll
	db "call!{ing_}!{for} help !{fro}m und!{er_}!{the}",!Scroll
	db "!{st}!{at}ue.!{2_}Is!{nt_}th!{at_}a !{st}r!{an}ge",!Scroll
	db "!{st}!{or}y!{Dots}",!End
;----------------------------------------
.message_126:

;----------------------------------------
.message_127:

;----------------------------------------
.message_128:

;----------------------------------------
.message_129:

;----------------------------------------
.message_130:

;----------------------------------------
.message_131:

;----------------------------------------
.message_132:

;----------------------------------------
.message_133:

;----------------------------------------
.message_134:

;----------------------------------------
.message_135:

;----------------------------------------
.message_136:

;----------------------------------------
.message_137:

;----------------------------------------
.message_138:

;----------------------------------------
.message_139:

;----------------------------------------
.message_140:

;----------------------------------------
.message_141:

;----------------------------------------
.message_142:

;----------------------------------------
.message_143:

;----------------------------------------
.message_144:

;----------------------------------------
.message_145:

;----------------------------------------
.message_146:

;----------------------------------------
.message_147:

;----------------------------------------
.message_148:

;----------------------------------------
.message_149:

;----------------------------------------
.message_150:

;----------------------------------------
.message_151:

;----------------------------------------
.message_152:

;----------------------------------------
.message_153:

;----------------------------------------
.message_154:

;----------------------------------------
.message_155:

;----------------------------------------
.message_156:

;----------------------------------------
.message_157:

;----------------------------------------
.message_158:

;----------------------------------------
.message_159:

;----------------------------------------
.message_160:

;----------------------------------------
.message_161:

;----------------------------------------
.message_162:

;----------------------------------------
.message_163:

;----------------------------------------
.message_164:

;----------------------------------------
.message_165:

;----------------------------------------
.message_166:

;----------------------------------------
.message_167:

;----------------------------------------
.message_168:

;----------------------------------------
.message_169:

;----------------------------------------
.message_170:

;----------------------------------------
.message_171:

;----------------------------------------
.message_172:

;----------------------------------------
.message_173:

;----------------------------------------
.message_174:

;----------------------------------------
.message_175:

;----------------------------------------
.message_176:

;----------------------------------------
.message_177:

;----------------------------------------
.message_178:

;----------------------------------------
.message_179:

;----------------------------------------
.message_180:

;----------------------------------------
.message_181:

;----------------------------------------
.message_182:

;----------------------------------------
.message_183:

;----------------------------------------
.message_184:

;----------------------------------------
.message_185:

;----------------------------------------
.message_186:

;----------------------------------------
.message_187:

;----------------------------------------
.message_188:

;----------------------------------------
.message_189:

;----------------------------------------
.message_190:

;----------------------------------------
.message_191:

;----------------------------------------
.message_192:

;----------------------------------------
.message_193:

;----------------------------------------
.message_194:

;----------------------------------------
.message_195:

;----------------------------------------
.message_196:

;----------------------------------------
.message_197:

;----------------------------------------
.message_198:

;----------------------------------------
.message_199:

;----------------------------------------
.message_200:

;----------------------------------------
.message_201:

;----------------------------------------
.message_202:

;----------------------------------------
.message_203:

;----------------------------------------
.message_204:

;----------------------------------------
.message_205:

;----------------------------------------
.message_206:

;----------------------------------------
.message_207:

;----------------------------------------
.message_208:

;----------------------------------------
.message_209:

;----------------------------------------
.message_210:

;----------------------------------------
.message_211:

;----------------------------------------
.message_212:

;----------------------------------------
.message_213:

;----------------------------------------
.message_214:

;----------------------------------------
.message_215:

;----------------------------------------
.message_216:

;----------------------------------------
.message_217:

;----------------------------------------
.message_218:

;----------------------------------------
.message_219:

;----------------------------------------
.message_220:

;----------------------------------------
.message_221:

;----------------------------------------
.message_222:

;----------------------------------------
.message_223:

;----------------------------------------
.message_224:

;----------------------------------------
.message_225:

;----------------------------------------
.message_226:

;----------------------------------------
.message_227:

;----------------------------------------
.message_228:

;----------------------------------------
.message_229:

;----------------------------------------
.message_230:

;----------------------------------------
.message_231:

;----------------------------------------
.message_232:

;----------------------------------------
.message_233:

;----------------------------------------
.message_234:

;----------------------------------------
.message_235:

;----------------------------------------
.message_236:

;----------------------------------------
.message_237:

;----------------------------------------
.message_238:

;----------------------------------------
.message_239:

;----------------------------------------
.message_240:

;----------------------------------------
.message_241:

;----------------------------------------
.message_242:

;----------------------------------------
.message_243:

;----------------------------------------
.message_244:

;----------------------------------------
.message_245:

;----------------------------------------
.message_246:

;----------------------------------------
.message_247:

;----------------------------------------
.message_248:

;----------------------------------------
.message_249:

;----------------------------------------
.message_250:

;----------------------------------------
.message_251:

;----------------------------------------
.message_252:

;----------------------------------------
.message_253:

;----------------------------------------
.message_254:

;----------------------------------------
.message_255:

;----------------------------------------
.message_256:

;----------------------------------------
.message_257:

;----------------------------------------
.message_258:

;----------------------------------------
.message_259:

;----------------------------------------
.message_260:

;----------------------------------------
.message_261:

;----------------------------------------
.message_262:

;----------------------------------------
.message_263:

;----------------------------------------
.message_264:

;----------------------------------------
.message_265:

;----------------------------------------
.message_266:

;----------------------------------------
.message_267:

;----------------------------------------
.message_268:

;----------------------------------------
.message_269:

;----------------------------------------
.message_270:

;----------------------------------------
.message_271:

;----------------------------------------
.message_272:

;----------------------------------------
.message_273:

;----------------------------------------
.message_274:

;----------------------------------------
.message_275:

;----------------------------------------
.message_276:

;----------------------------------------
.message_277:

;----------------------------------------
.message_278:

;----------------------------------------
.message_279:

;----------------------------------------
.message_280:

;----------------------------------------
.message_281:

;----------------------------------------
.message_282:

;----------------------------------------
.message_283:

;----------------------------------------
.message_284:

;----------------------------------------
.message_285:

;----------------------------------------
.message_286:

;----------------------------------------
.message_287:

;----------------------------------------
.message_288:

;----------------------------------------
.message_289:

;----------------------------------------
.message_290:

;----------------------------------------
.message_291:

;----------------------------------------
.message_292:

;----------------------------------------
.message_293:

;----------------------------------------
.message_294:

;----------------------------------------
.message_295:

;----------------------------------------
.message_296:

;----------------------------------------
.message_297:

;----------------------------------------
.message_298:

;----------------------------------------
.message_299:

;----------------------------------------
.message_300:

;----------------------------------------
.message_301:

;----------------------------------------
.message_302:

;----------------------------------------
.message_303:

;----------------------------------------
.message_304:

;----------------------------------------
.message_305:

;----------------------------------------
.message_306:

;----------------------------------------
.message_307:

;----------------------------------------
.message_308:

;----------------------------------------
.message_309:

;----------------------------------------
.message_310:

;----------------------------------------
.message_311:

;----------------------------------------
.message_312:

;----------------------------------------
.message_313:

;----------------------------------------
.message_314:

;----------------------------------------
.message_315:

;----------------------------------------
.message_316:

;----------------------------------------
.message_317:

;----------------------------------------
.message_318:

;----------------------------------------
.message_319:

;----------------------------------------
.message_320:

;----------------------------------------
.message_321:

;----------------------------------------
.message_322:

;----------------------------------------
.message_323:

;----------------------------------------
.message_324:

;----------------------------------------
.message_325:

;----------------------------------------
.message_326:

;----------------------------------------
.message_327:

;----------------------------------------
.message_328:

;----------------------------------------
.message_329:

;----------------------------------------
.message_330:

;----------------------------------------
.message_331:

;----------------------------------------
.message_332:

;----------------------------------------
.message_333:

;----------------------------------------
.message_334:

;----------------------------------------
.message_335:

;----------------------------------------
.message_336:

;----------------------------------------
.message_337:

;----------------------------------------
.message_338:

;----------------------------------------
.message_339:

;----------------------------------------
.message_340:

;----------------------------------------
.message_341:

;----------------------------------------
.message_342:

;----------------------------------------
.message_343:

;----------------------------------------
.message_344:

;----------------------------------------
.message_345:

;----------------------------------------
.message_346:

;----------------------------------------
.message_347:

;----------------------------------------
.message_348:

;----------------------------------------
.message_349:

;----------------------------------------
.message_350:

;----------------------------------------
.message_351:

;----------------------------------------
.message_352:

;----------------------------------------
.message_353:

;----------------------------------------
.message_354:

;----------------------------------------
.message_355:

;----------------------------------------
.message_356:

;----------------------------------------
.message_357:

;----------------------------------------
.message_358:

;----------------------------------------
.message_359:

;----------------------------------------
.message_360:

;----------------------------------------
.message_361:

;----------------------------------------
.message_362:

;----------------------------------------
.message_363:

;----------------------------------------
.message_364:

;----------------------------------------
.message_365:

;----------------------------------------
.message_366:

;----------------------------------------
.message_367:

;----------------------------------------
.message_368:

;----------------------------------------
.message_369:

;----------------------------------------
.message_370:

;----------------------------------------
.message_371:

;----------------------------------------
.message_372:

;----------------------------------------
.message_373:

;----------------------------------------
.message_374:

;----------------------------------------
.message_375:

;----------------------------------------
.message_376:

;----------------------------------------
.message_377:

;----------------------------------------
.message_378:

;----------------------------------------
.message_379:

;----------------------------------------
.message_380:

;----------------------------------------
.message_381:

;----------------------------------------
.message_382:

;----------------------------------------
.message_383:

;----------------------------------------
.message_384:

;----------------------------------------
.message_385:

;----------------------------------------
.message_386:

;----------------------------------------
.message_387:

;----------------------------------------
.message_388:

;----------------------------------------
.message_389:

;----------------------------------------
.message_390:

;----------------------------------------
.message_391:

;----------------------------------------
.message_392:

;----------------------------------------
.message_393:

;----------------------------------------
.message_394:

;----------------------------------------
.message_395:

;----------------------------------------
.message_396:

;----------------------------------------


warnpc $1D8000	; 0xE80000
