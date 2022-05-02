#! /bin/bash -e

#-------------------------------------------------------------
# Variables used for the script
export	time=$(date +'%T %a %d/%b/%Y')
export	asar=bin/asar-linux/asar-standalone
export	file_base=Zelda3-Redux
export  out_folder=out
export	patches_folder=patches
export  clean_rom=rom/Zelda3.sfc
export  patched_rom=$out_folder/$file_base.sfc
export  asm_file=code/main.asm
export	checksum=6d4f10a8b10e10dbe624cb23cf03b88bb8252973

#-------------------------------------------------------------
# Help section
Help()
{
   # Display Help
   echo "Compile 'A Link to the Past Redux' with one of the following arguments:"
   echo
   echo "Syntax: make.sh [option]"
   echo "Options:"
   echo "	-h, --help	Prints this menu."
   echo "	-o, --original	Original GFX menu (requires -r, -g, -s or -c as additional argument)."
   echo "	-r, --redux	Compiles default Redux (New GFX)."
   echo "	-g, --green	Compiles Redux with Green Agahnim GFX."
   echo "	-s, --subtitle	Compiles Redux with 'Triforce of the Gods' subtitle."
   echo "	-c, --combine	Compiles Redux with the combined Green Agahnim and Subtitle."
   echo
   echo	"* To compile normal Redux (New GFX) with one of the graphical patches, use only one of the standalone syntaxes."
   echo	"	Normal Redux:	Redux+Green Agahnim:	Redux+Subtitle:	Redux+Green Agahnim+Subtitle
	./make.sh -r	./make.sh -g		./make.sh -s		./make.sh -c"
   echo "* For Original GFX with one of the graphical patches, use the '-o' argument before the graphics you want"
   echo	"	Original GFX Redux:	OG GFX Redux+Green Agahnim:	OG GFX Redux+Subtitle:	OG GFX Redux+Green Agahnim+Subtitle:
	./make.sh -o -r		./make.sh -o -g			./make.sh -o -s			./make.sh -o -c"
}

#-------------------------------------------------------------
# Begin compilation
Start()
{
# Check base ROM name
	if [ -e rom/Legend\ of\ Zelda\,\ The\ -\ A\ Link\ to\ the\ Past\ \(USA\).sfc ]; then
		echo "ROM detected. Verifying name..."
	else
		export error="Incorrect ROM name."
		Error;	
		echo "Please, rename the ROM to 'Legend of Zelda, The - A Link to the Past (USA).sfc' to begin the patching process."
		End;
	fi

#-------------------------------------------------------------
# Copy base ROM into the /out/ folder
	cd rom/ && cp Legend\ of\ Zelda\,\ The\ -\ A\ Link\ to\ the\ Past\ \(USA\).sfc Zelda3.sfc && cd ..
	test ! -d "$out_folder" && mkdir "$out_folder"
	test -f "$patched_rom" && rm "$patched_rom"

#-------------------------------------------------------------
# SHA-1 sum verification
	if [ -f "$clean_rom" ]; then
		echo; echo "Base ROM detected with proper name."
		echo "Verifying SHA-1 checksum hash..."
	else
		export error="Base ROM not found."
		Error;
		echo "Place the 'Legend of Zelda, The - A Link to the Past (USA).sfc' ROM inside the 'rom' folder."
		End;
	fi

	export	sha1=$(sha1sum "$clean_rom" | awk '{ print $1 }')

#-------------------------------------------------------------
# SHA-1 sum verified, begin patching...
	if [ "$sha1" == "$checksum" ]; then
		echo; echo "Base ROM SHA-1 checksum verified."
		echo "Commencing patching process..."
	else
		export error="Base ROM checksum is incorrect."
		Error;
		echo "Use a Zelda 3 ROM with the proper SHA-1 checksum for patching."
		End;
	fi

#-------------------------------------------------------------
# Copy clean ROM into a base used for patching to keep clean ROM intact
	cp "$clean_rom" "$patched_rom"

#-------------------------------------------------------------
# Compress the graphics back into the base patch ROM
	echo; echo "Compressing Redux graphics from $org$graphics.bin using zcompress..."

	# Force a button press so zcompress exits on its own when using Wine+zcompress
	#xdotool key $(xdotool search --name "zcompress.exe") KP_Space
	#WINEDEBUG=-all wine bin/zcompress/zcompress.exe 1 87000 out/"$file_base".sfc code/gfx/$org$graphics.bin

	# Using scompress
	bin/scompress/scompress i out/"$file_base".sfc code/gfx/$org$graphics.bin
	echo "Graphics compression finalized."

#-------------------------------------------------------------
# Start patching of the main.asm file and create IPS
	$asar code/gfx/palettes/$graphics.asm $patched_rom	# Graphics changes
	echo "Graphics & palettes compiled."; echo

	echo "Beginning main assembly code compilation with Asar..."
	$asar $asm_file $patched_rom		# Main code
	bin/flips --create --ips "$clean_rom" "$patched_rom" "$patches_folder/$file_base.ips"

#-------------------------------------------------------------
# Finish script and jump to the "End" function
	echo "Redux compilation finished at $time!"
	End
}

#-------------------------------------------------------------
# Error message
Error()
{
	echo; echo "Redux compilation exited with errors!"
	echo "ERROR: $error"
}

#-------------------------------------------------------------
# Finish script
End()
{
	rm $clean_rom
	sleep 1
	exit
}

#-------------------------------------------------------------
# Get the options
if [[ "$1" == "" ]];then
    Help;
    exit;
else
	#while getopts "horgsc" option; do
	#case $option in
	while [ ! -z "$1" ]; do
		case "$1" in
		--help|-h) # Display Help
			Help
			exit;;
		--original|-o) # Default Redux with Original GFX
			export org='original/Original-'	;;
		--redux|-r) # Default Redux with New GFX
			shift
			export graphics='Redux'
			Start;;
		--green|-g) # Redux with Green Agahnim
			shift
			export graphics='GreenAgahnim'
			Start;;
		--subtitle|-s) # Redux with Triforce of the Gods subtitle
			shift
			export graphics='Subtitle'
			Start;;
		--combine|-c) # Redux with Green Agahnim and Subtitle
			shift
			export graphics='AgahnimSubtitle'
			Start;;
		#\?) # Invalid option
		*) # Invalid option
			echo "Error: Invalid option '$1'"
			Help
			exit;;
		esac
	shift
	done

	#shift $(($OPTIND - 1))
	#echo "$@"
fi


