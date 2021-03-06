#! /bin/bash

# Copy original text file to keep it as backup
cp Retranslation_Finished.txt Retranslation.txt
cp Redux_Script_Finished.txt Redux.txt

# Extra conversion before initial replacements
sed -i 's|\[Window 02\]\[Speed 03\]|\tdb !Window02,!Speed03|g' Retranslation.txt Redux.txt Redux.txt
sed -i 's|\[Window 02\]\[Name\]|\tdb !Window02,"!{Name}|g' Retranslation.txt Redux.txt Redux.txt
sed -i 's|\[A\]|A|g' Retranslation.txt Redux.txt Redux.txt
sed -i 's|\[B\]|B|g' Retranslation.txt Redux.txt Redux.txt
sed -i 's|\[X\]|X|g' Retranslation.txt Redux.txt Redux.txt
sed -i 's|\[Y\]|Y|g' Retranslation.txt Redux.txt Redux.txt

# Control code definitions replacements
sed -i 's|\[...\]|!{Dots}|g' Retranslation.txt Redux.txt
sed -i 's|\[Ankh\]|!{Ankh1}|g' Retranslation.txt Redux.txt
sed -i 's|\[Waves\]|!{Waves1}|g' Retranslation.txt Redux.txt
sed -i 's|\[Snake\]|!{Snake1}|g' Retranslation.txt Redux.txt
sed -i 's|\[LinkL\]|!{LinkL}|g' Retranslation.txt Redux.txt
sed -i 's|\[LinkR\]|!{LinkR}|g' Retranslation.txt Redux.txt
sed -i 's|\[Up\]|!{Up}|g' Retranslation.txt Redux.txt
sed -i 's|\[Down\]|!{Down}|g' Retranslation.txt Redux.txt
sed -i 's|\[Left\]|!{Left}|g' Retranslation.txt Redux.txt
sed -i 's|\[Right\]|!{Right}|g' Retranslation.txt Redux.txt
sed -i 's|\[1HeartL\]|!1HeartL|g' Retranslation.txt Redux.txt
sed -i 's|\[1HeartR\]|!1HeartR|g' Retranslation.txt Redux.txt
sed -i 's|\[2HeartL\]|!2HeartL|g' Retranslation.txt Redux.txt
sed -i 's|\[3HeartL\]|!3HeartL|g' Retranslation.txt Redux.txt
sed -i 's|\[3HeartR\]|!3HeartR|g' Retranslation.txt Redux.txt
sed -i 's|\[4HeartL\]|!4HeartL|g' Retranslation.txt Redux.txt
sed -i 's|\[4HeartR\]|!4HeartR|g' Retranslation.txt Redux.txt
sed -i 's|\[Ankh2\]|!{Ankh2}|g' Retranslation.txt Redux.txt
sed -i 's|\[Waves2\]|!{Waves2}|g' Retranslation.txt Redux.txt
sed -i 's|\[NextPic\]|,!NextPic|g' Retranslation.txt Redux.txt
sed -i 's|\[Choose\]|,!Choose,!End\n|g' Retranslation.txt Redux.txt
sed -i 's|\[Item\]|,!Item|g' Retranslation.txt Redux.txt
sed -i 's|\[Name\]|!{Name}|g' Retranslation.txt Redux.txt
sed -i 's|\[Window 00\]|,!Window00|g' Retranslation.txt Redux.txt
sed -i 's|\[Window 01\]|,!Window01|g' Retranslation.txt Redux.txt
sed -i 's|\[Window 02\]|,!Window02|g' Retranslation.txt Redux.txt
sed -i 's|\[Number 00\]|!{Number00}|g' Retranslation.txt Redux.txt
sed -i 's|\[Number 01\]|!{Number01}|g' Retranslation.txt Redux.txt
sed -i 's|\[Number 02\]|!{Number02}|g' Retranslation.txt Redux.txt
sed -i 's|\[Number 03\]|!{Number03}|g' Retranslation.txt Redux.txt
sed -i 's|\[Position 00\]|,!Position00|g' Retranslation.txt Redux.txt
sed -i 's|\[Position 01\]|,!Position01|g' Retranslation.txt Redux.txt
sed -i 's|\[ScrollSpd 00\]|,!ScrollSpd00|g' Retranslation.txt Redux.txt
sed -i 's|\[Selchg\]|,!SelChng|g' Retranslation.txt Redux.txt
sed -i 's|\[Choose2\]|,!Choose2|g' Retranslation.txt Redux.txt
sed -i 's|\[Choose3\]|,!Choose3|g' Retranslation.txt Redux.txt
sed -i 's|\[Scroll\]|,!Scroll\n\tdb |g' Retranslation.txt Redux.txt
sed -i 's|\[1\]|,!Line1|g' Retranslation.txt Redux.txt
sed -i 's|\[2\]|,!Line2|g' Retranslation.txt Redux.txt
sed -i 's|\[3\]|,!Line3|g' Retranslation.txt Redux.txt
sed -i 's|\[Color 07\]|,!Color07|g' Retranslation.txt Redux.txt
sed -i 's|\[Wait 02\]|,!Wait02|g' Retranslation.txt Redux.txt
sed -i 's|\[Wait 03\]|,!Wait03|g' Retranslation.txt Redux.txt
sed -i 's|\[Wait 04\]|,!Wait04|g' Retranslation.txt Redux.txt
sed -i 's|\[Wait 05\]|,!Wait05|g' Retranslation.txt Redux.txt
sed -i 's|\[Sound 2D\]|,!Sound2D|g' Retranslation.txt Redux.txt
sed -i 's|\[Speed 00\]|\n\tdb !Speed00|g' Retranslation.txt Redux.txt
sed -i 's|\[Speed 01\]|\n\tdb !Speed01|g' Retranslation.txt Redux.txt
sed -i 's|\[Speed 02\]|\n\tdb !Speed02|g' Retranslation.txt Redux.txt
sed -i 's|\[Speed 03\]|\n\tdb !Speed03|g' Retranslation.txt Redux.txt
sed -i 's|\[Waitkey\]|,!WaitKey|g' Retranslation.txt Redux.txt
#sed -i 's|\[Speed 00\]|,!End|g' Retranslation.txt Redux.txt

# Dictionary definitions replacements
sed -i 's|    |!{4_}|g' Retranslation.txt Redux.txt
sed -i 's|   |!{3_}|g' Retranslation.txt Redux.txt
sed -i 's|  |!{2_}|g' Retranslation.txt Redux.txt
sed -i "s|'s |!{s_}|Ig" Retranslation.txt Redux.txt
sed -i 's|and |!{and_}|g' Retranslation.txt Redux.txt
sed -i 's|are |!{are_}|g' Retranslation.txt Redux.txt
sed -i 's|all |!{all_}|g' Retranslation.txt Redux.txt
sed -i 's|ain|!{ain}|g' Retranslation.txt Redux.txt
sed -i 's|and|!{and}|g' Retranslation.txt Redux.txt
sed -i 's|at |!{at_}|g' Retranslation.txt Redux.txt
sed -i 's|ast|!{ast}|g' Retranslation.txt Redux.txt
sed -i 's|an|!{an}|g' Retranslation.txt Redux.txt
sed -i 's|at|!{at}|g' Retranslation.txt Redux.txt
sed -i 's|ble|!{ble}|g' Retranslation.txt Redux.txt
sed -i 's|ba|!{ba}|g' Retranslation.txt Redux.txt
sed -i 's|be|!{be}|g' Retranslation.txt Redux.txt
sed -i 's|bo|!{bo}|g' Retranslation.txt Redux.txt
sed -i 's|can |!{can_}|g' Retranslation.txt Redux.txt
sed -i 's|che|!{che}|g' Retranslation.txt Redux.txt
sed -i 's|com|!{com}|g' Retranslation.txt Redux.txt
sed -i 's|ck|!{ck}|g' Retranslation.txt Redux.txt
sed -i 's|des|!{des}|g' Retranslation.txt Redux.txt
sed -i 's|di|!{di}|g' Retranslation.txt Redux.txt
sed -i 's|do|!{do}|g' Retranslation.txt Redux.txt
sed -i 's|en |!{en_}|g' Retranslation.txt Redux.txt
sed -i 's|er |!{er_}|g' Retranslation.txt Redux.txt
sed -i 's|ear|!{ear}|g' Retranslation.txt Redux.txt
sed -i 's|ent|!{ent|g' Retranslation.txt Redux.txt
sed -i 's|ed |!{ed_}|g' Retranslation.txt Redux.txt
sed -i 's|en|!{en}|g' Retranslation.txt Redux.txt
sed -i 's|er|!{er}|g' Retranslation.txt Redux.txt
sed -i 's|ev|!{ev}|g' Retranslation.txt Redux.txt
sed -i 's|for|!{for}|g' Retranslation.txt Redux.txt
sed -i 's|fro|!{fro}|g' Retranslation.txt Redux.txt
sed -i 's|give |!{give_}|g' Retranslation.txt Redux.txt
sed -i 's|get|!{get}|g' Retranslation.txt Redux.txt
sed -i 's|go|!{go}|g' Retranslation.txt Redux.txt
sed -i 's|have|!{have}|g' Retranslation.txt Redux.txt
sed -i 's|has|!{has}|g' Retranslation.txt Redux.txt
sed -i 's|her|!{her}|g' Retranslation.txt Redux.txt
sed -i 's|hi|!{hi}|g' Retranslation.txt Redux.txt
sed -i 's|ha|!{ha}|g' Retranslation.txt Redux.txt
sed -i 's|ight |!{ight_}|g' Retranslation.txt Redux.txt
sed -i 's|ing |!{ing_}|g' Retranslation.txt Redux.txt
sed -i 's|in|!{in}|g' Retranslation.txt Redux.txt
sed -i 's|is|!{is}|g' Retranslation.txt Redux.txt
sed -i 's|it|!{it}|g' Retranslation.txt Redux.txt
sed -i 's|just|!{just}|g' Retranslation.txt Redux.txt
sed -i 's|know|!{know}|g' Retranslation.txt Redux.txt
sed -i 's|ly |!{ly_}|g' Retranslation.txt Redux.txt
sed -i 's|la|!{la}|g' Retranslation.txt Redux.txt
sed -i 's|lo|!{lo}|g' Retranslation.txt Redux.txt
sed -i 's|man|!{man}|g' Retranslation.txt Redux.txt
sed -i 's|ma|!{ma}|g' Retranslation.txt Redux.txt
sed -i 's|me|!{me}|g' Retranslation.txt Redux.txt
sed -i 's|mu|!{mu}|g' Retranslation.txt Redux.txt
sed -i "s|n't |!{nt_}|Ig" Retranslation.txt Redux.txt
sed -i 's|non |!{non_}|g' Retranslation.txt Redux.txt
sed -i 's|not|!{not}|g' Retranslation.txt Redux.txt
sed -i 's|open|!{open}|g' Retranslation.txt Redux.txt
sed -i 's|ound|!{ound}|g' Retranslation.txt Redux.txt
sed -i 's|out |!{out_}|g' Retranslation.txt Redux.txt
sed -i 's|of|!{of}|g' Retranslation.txt Redux.txt
sed -i 's|on|!{on}|g' Retranslation.txt Redux.txt
sed -i 's|or|!{or}|g' Retranslation.txt Redux.txt
sed -i 's|per|!{per}|g' Retranslation.txt Redux.txt
sed -i 's|ple|!{ple}|g' Retranslation.txt Redux.txt
sed -i 's|pow|!{pow}|g' Retranslation.txt Redux.txt
sed -i 's|pro|!{pro}|g' Retranslation.txt Redux.txt
sed -i 's|re |!{re_}|g' Retranslation.txt Redux.txt
sed -i 's|re|!{re}|g' Retranslation.txt Redux.txt
sed -i 's|some|!{some}|g' Retranslation.txt Redux.txt
sed -i 's|se|!{se}|g' Retranslation.txt Redux.txt
sed -i 's|sh|!{sh}|g' Retranslation.txt Redux.txt
sed -i 's|so|!{so}|g' Retranslation.txt Redux.txt
sed -i 's|st|!{st}|g' Retranslation.txt Redux.txt
sed -i 's|ter |!{ter_}|g' Retranslation.txt Redux.txt
sed -i 's|thin|!{thin}|g' Retranslation.txt Redux.txt
sed -i 's|ter|!{ter}|g' Retranslation.txt Redux.txt
sed -i 's|tha|!{tha}|g' Retranslation.txt Redux.txt
sed -i 's|the|!{the}|g' Retranslation.txt Redux.txt
sed -i 's|thi|!{thi}|g' Retranslation.txt Redux.txt
sed -i 's|to|!{to}|g' Retranslation.txt Redux.txt
sed -i 's|tr|!{tr}|g' Retranslation.txt Redux.txt
sed -i 's|up|!{up}|g' Retranslation.txt Redux.txt
sed -i 's|ver|!{ver}|g' Retranslation.txt Redux.txt
sed -i 's|at |!{with}|g' Retranslation.txt Redux.txt
sed -i 's|wa|!{wa}|g' Retranslation.txt Redux.txt
sed -i 's|we|!{we}|g' Retranslation.txt Redux.txt
sed -i 's|wh|!{wh}|g' Retranslation.txt Redux.txt
sed -i 's|wi|!{wi}|g' Retranslation.txt Redux.txt
sed -i 's|you|!{you}|g' Retranslation.txt Redux.txt
sed -i 's|Her|!{Her}|g' Retranslation.txt Redux.txt
sed -i 's|Tha|!{Tha}|g' Retranslation.txt Redux.txt
sed -i 's|The|!{The}|g' Retranslation.txt Redux.txt
sed -i 's|Thi|!{Thi}|g' Retranslation.txt Redux.txt
sed -i 's|You|!{You}|g' Retranslation.txt Redux.txt

# Manual Fixes
sed -i 's|{!{do}ts}|!{Dots}|g' Retranslation.txt Redux.txt
sed -i 's|!Choo!{se}|!Choose|g' Retranslation.txt Redux.txt
sed -i 's|!{L!{in}kL}|!{LinkL}|g' Retranslation.txt Redux.txt
sed -i 's|!{L!{in}kR}|!{LinkR}|g' Retranslation.txt Redux.txt
sed -i 's|1H!{ear}t|1Heart|g' Retranslation.txt Redux.txt
sed -i 's|2H!{ear}t|2Heart|g' Retranslation.txt Redux.txt
sed -i 's|3H!{ear}t|3Heart|g' Retranslation.txt Redux.txt
sed -i 's|4H!{ear}t|4Heart|g' Retranslation.txt Redux.txt
sed -i 's|!L!{in}e|!Line|g' Retranslation.txt Redux.txt
sed -i 's|Line1|Line1\n\tdb |g' Retranslation.txt Redux.txt
sed -i 's|Line2|Line2\n\tdb |g' Retranslation.txt Redux.txt
sed -i 's|Line3|Line3\n\tdb |g' Retranslation.txt Redux.txt
sed -i 's|!Choose2|!Choose2,!End\n|g' Retranslation.txt Redux.txt
sed -i 's|!Choose3|!Choose3,!End\n|g' Retranslation.txt Redux.txt
sed -i 's|!SelChng|!SelChng,!End\n|g' Retranslation.txt Redux.txt
sed -i 's|!W!{in}!{do}w00|!Window00|g' Retranslation.txt Redux.txt
sed -i 's|!W!{in}!{do}w01|!Window01|g' Retranslation.txt Redux.txt
sed -i 's|!W!{in}!{do}w02|!Window02|g' Retranslation.txt Redux.txt
sed -i 's|!Wa!{it}01|!Wait01|g' Retranslation.txt Redux.txt
sed -i 's|!Wa!{it}02|!Wait02|g' Retranslation.txt Redux.txt
sed -i 's|!Wa!{it}03|!Wait03|g' Retranslation.txt Redux.txt
sed -i 's|!Wa!{it}04|!Wait04|g' Retranslation.txt Redux.txt
sed -i 's|!Wa!{it}05|!Wait05|g' Retranslation.txt Redux.txt
sed -i 's|!Wa!{it}09|!Wait09|g' Retranslation.txt Redux.txt
sed -i 's|!Pos!{it}i!{on}00|!Position00|g' Retranslation.txt Redux.txt
sed -i 's|!Pos!{it}i!{on}01|!Position01|g' Retranslation.txt Redux.txt
sed -i 's|!Scrol!{lo}ut.|!Scroll\nout.|g' Retranslation.txt Redux.txt
sed -i 's|!S!{ound}2D|!Sound2D|g' Retranslation.txt Redux.txt
sed -i 's|!{Num!{be}r|!{Number|g' Retranslation.txt Redux.txt
sed -i 's|!Co!{lo}r07|!Color07|g' Retranslation.txt Redux.txt
sed -i 's|!Wa!{it}Key|!WaitKey|g' Retranslation.txt Redux.txt
sed -i 's|!{Na!{me}}|!{Name}|g' Retranslation.txt Redux.txt
sed -i "s|M!{a!{st}}!{er}|M!{ast}!{er}|g" Retranslation.txt Redux.txt
sed -i "s|m!{a!{st}}!{er}|m!{ast}!{er}|g" Retranslation.txt Redux.txt
sed -i 's|c!{a!{st}}le|c!{ast}le|g' Retranslation.txt Redux.txt
sed -i 's|C!{a!{st}}le|C!{ast}le|g' Retranslation.txt Redux.txt
sed -i 's|!{a!{in}}|!{ain}|g' Retranslation.txt Redux.txt
sed -i 's|!{a!{re}_}|!{are_}|g' Retranslation.txt Redux.txt
sed -i 's|!{!{!{an}d}_}|!{and_}|g' Retranslation.txt Redux.txt
sed -i 's|!{!{an}d}|!{and}|g' Retranslation.txt Redux.txt
sed -i "s|Do!{nt_}|D!{on}'t |g" Retranslation.txt Redux.txt
sed -i 's|!{!{in}g_}|!{ing_}|g' Retranslation.txt Redux.txt
sed -i 's|!{in}g |!{ing_}|g' Retranslation.txt Redux.txt
sed -i 's|!{di}ng |d!{ing_}|g' Retranslation.txt Redux.txt
sed -i 's|!{wi}ng |w!{ing_}|g' Retranslation.txt Redux.txt
sed -i 's|!{f!{or}}|!{for}|g' Retranslation.txt Redux.txt
sed -i "s|c!{an} |!{can_}|g" Retranslation.txt Redux.txt
sed -i 's|!{!{en}t|!{ent}|g' Retranslation.txt Redux.txt
sed -i 's|!{!{en}_}|!{en_}|g' Retranslation.txt Redux.txt
sed -i 's|!{!{en}|!{en}|g' Retranslation.txt Redux.txt
sed -i 's|!{!{er}_}|!{er_}|g' Retranslation.txt Redux.txt
sed -i 's|!{!{er}_}|!{er_}|g' Retranslation.txt Redux.txt
sed -i 's|!{!{re}_}|!{re_}|g' Retranslation.txt Redux.txt
sed -i 's|!{!{at}_}|!{at_}|g' Retranslation.txt Redux.txt
sed -i 's|!{!{ha}s}|!{has}|g' Retranslation.txt Redux.txt
sed -i 's|!{!{ha}ve}|!{have}|g' Retranslation.txt Redux.txt
sed -i 's|!{ju!{st}}|!{just}|g' Retranslation.txt Redux.txt
sed -i 's|!{so}!{me}t!{hi}n|!{some}!{thin}|g' Retranslation.txt Redux.txt
sed -i 's|s!{hi}eld|!{sh}ield|g' Retranslation.txt Redux.txt
sed -i 's|w!{an}t|!{wa}nt|g' Retranslation.txt Redux.txt
#sed -i 's|!{wh}ile|w!{hi}le|g' Retranslation.txt Redux.txt
#sed -i 's|Th!{at_}!{is}|!{Tha}t!{s_}|g' Retranslation.txt Redux.txt
sed -i 's|Th!{an}k|!{Tha}nk|g' Retranslation.txt Redux.txt
sed -i 's|th!{an}k|!{tha}nk|g' Retranslation.txt Redux.txt
sed -i 's|Th!{at}|!{Tha}t|g' Retranslation.txt Redux.txt
sed -i 's|th!{at}|!{tha}t|g' Retranslation.txt Redux.txt
sed -i 's|Th!{an}|!{Tha}n|g' Retranslation.txt Redux.txt
sed -i 's|th!{an}|!{tha}n|g' Retranslation.txt Redux.txt
sed -i 's|Th!{en_}|!{The}n |g' Retranslation.txt Redux.txt
sed -i 's|Th!{er}e|!{The}!{re}|g' Retranslation.txt Redux.txt
sed -i 's|th!{er}e|!{the}!{re}|g' Retranslation.txt Redux.txt
sed -i 's|f!{a!{st}}!{er_}|f!{ast}!{er_}|g' Retranslation.txt Redux.txt
sed -i 's|bl!{a!{st}}s|bl!{ast}s|g' Retranslation.txt Redux.txt
sed -i 's|d!{ev}!{a!{st}}!{at}!{ing_}|d!{ev}!{ast}!{at}!{ing_}|g' Retranslation.txt Redux.txt
sed -i 's|Outc!{a!{st}}|Outc!{ast}|g' Retranslation.txt Redux.txt

sed -i 's|l!{a!{st}}|l!{ast}|g' Retranslation.txt Redux.txt
sed -i 's|E!{a!{st}}|E!{ast}|g' Retranslation.txt Redux.txt
sed -i 's|E!{a!{st}}!{er}n|E!{ast}!{er}n|g' Retranslation.txt Redux.txt
sed -i 's|C!{at}!{a!{st}}rophe|C!{at}!{ast}rophe|g' Retranslation.txt Redux.txt
sed -i 's|!{ent}husi!{a!{st}}ically|!{ent}husi!{ast}ically|g' Retranslation.txt Redux.txt
sed -i 's|p!{a!{st}}|p!{ast}|g' Retranslation.txt Redux.txt
sed -i 's|w!{a!{st}}e|w!{ast}e|g' Retranslation.txt Redux.txt
sed -i 's|b!{a!{st}}ard|b!{ast}ard|g' Retranslation.txt Redux.txt
sed -i 's|l!{a!{st}}|l!{ast}|g' Retranslation.txt Redux.txt
sed -i 's|e!{a!{st}}|e!{ast}|g' Retranslation.txt Redux.txt
sed -i 's|t!{a!{st}}e|t!{ast}e|g' Retranslation.txt Redux.txt
sed -i 's|furth!{er}|fur!{the}r|g' Retranslation.txt Redux.txt
sed -i 's|farth!{er}|far!{the}r|g' Retranslation.txt Redux.txt
sed -i 's|th!{en}|!{the}n|g' Retranslation.txt Redux.txt
sed -i 's|t!{hi}s|!{thi}s|g' Retranslation.txt Redux.txt
sed -i 's|t!{hi}ef|!{thi}ef|g' Retranslation.txt Redux.txt
sed -i 's|t!{hi}!{ev}es|!{thi}!{ev}es|g' Retranslation.txt Redux.txt
sed -i 's|t!{hi}nned|!{thi}nned|g' Retranslation.txt Redux.txt
sed -i 's| t!{hi}nk| !{thin}k|g' Retranslation.txt Redux.txt
sed -i 's|t!{hi}ng|!{thin}g|g' Retranslation.txt Redux.txt
sed -i 's| t!{hi}n | !{thin} |g' Retranslation.txt Redux.txt
sed -i 's|T!{hi}|!{Thi}|g' Retranslation.txt Redux.txt
sed -i "s|M!{a!{st}}!{er_}|M!{ast}!{er_}|g" Retranslation.txt Redux.txt
sed -i "s|m!{a!{st}}!{er_}|m!{ast}!{er_}|g" Retranslation.txt Redux.txt
