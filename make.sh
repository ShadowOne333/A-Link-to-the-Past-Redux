#! /bin/bash -e

#-------------------------------------------------------------
# Variables used for the script
export	time=$(date +'%T %a %d/%b/%Y')
export	asar=bin/asar-linux/asar-standalone
export	flips=bin/flips
export	scompress=bin/scompress/scompress
export	file_base=Zelda3-Redux
export  out_folder=out
export	patches_folder=patches
export  clean_rom=rom/Zelda3.sfc
export  patched_rom=$out_folder/$file_base.sfc
export  asm_file=code/main.asm
export	checksum=6d4f10a8b10e10dbe624cb23cf03b88bb8252973
export	subtitle_layout=code/layouts/subtitle_layout.ips
export	map_layouts=code/layouts/map_layouts.ips

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
   echo "	-o, --original	Original GFX menu (requires -r, -t, -g, -s or -c as additional argument)."
   echo "	-t, --retrans	Retranslation scrit (requires -r, -o, -g, -s or -c as additional argument)."
   echo "	-r, --redux	Compiles default Redux (New GFX)."
   echo "	-g, --green	Compiles Redux with Green Agahnim GFX."
   echo "	-s, --subtitle	Compiles Redux with 'Triforce of the Gods' subtitle."
   echo "	-c, --combine	Compiles Redux with the combined Green Agahnim and Subtitle."
   echo
   echo	"* To compile normal Redux (New GFX) with one of the graphical patches, use only one of the standalone syntaxes."
   echo	"	Normal Redux:	Redux+Green Agahnim:	Redux+Subtitle:	Redux+Green Agahnim+Subtitle
	./make.sh -r	./make.sh -g		./make.sh -s		./make.sh -c"
   echo	"* For Retranslation Redux (New GFX) with graphical patches, use only one of the standalone syntaxes."
   echo	"	Retranslation Redux:	Retran.+Green Agahnim:	Retran.+Subtitle:	Retran.+Green Agahnim+Subtitle
	./make.sh -t -r		./make.sh -t -g		./make.sh -t -s		./make.sh -t -c"
   echo "* For Original GFX with one of the graphical patches, use '-o' argument before the graphics you want (and '-o -t' if you want it with Retranslation)"
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
		echo "Starting patching process..."
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
# Apply IPS patches for subtitle tilemaps and map layouts

# Apply map layout changes if specified through IPS
	echo "Applying Map layout changes...";
	$flips $map_layouts $patched_rom; echo

# Apply subtitle layout changes if specified through IPS
	if [ "$graphics" == "Subtitle" ] || [ "$graphics" == "AgahnimSubtitle" ]; then
		echo "Patching subtitle tilemapping...";
		$flips $subtitle_layout $patched_rom; echo
	fi

#-------------------------------------------------------------
# Compile the main assembly code
	echo "Beginning main assembly code compilation with Asar..."; echo
	$asar $asm_file $patched_rom		# Main code

# Compress the graphics back into the base patch ROM
	echo "Compressing Redux graphics from $org$graphics.bin using scompress..."

	# Force a button press so zcompress exits on its own when using Wine+zcompress
	#xdotool key $(xdotool search --name "zcompress.exe") KP_Space
	#WINEDEBUG=-all wine bin/zcompress/zcompress.exe 1 87000 out/"$file_base".sfc code/gfx/$org$graphics.bin

	# Using scompress
	$scompress i out/"$file_base".sfc code/gfx/$org$graphics.bin
	echo "Graphics compression finalized."

# Start patching of the main.asm file and create IPS
	$asar code/gfx/palettes/$graphics.asm $patched_rom	# Graphics changes
	echo "Graphics & palettes compiled.";echo

	echo "Main assembly code compilation succeded!"; echo

	# Create IPS
	echo "Creating $file_base.ips patch...";
	$flips --create --ips "$clean_rom" "$patched_rom" "$patches_folder/$file_base.ips"

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
	if [ -f "$clean_rom" ]; then
		rm $clean_rom
	fi
	
	if [ -f "code/layouts/map_layouts.sfc" ]; then
		rm code/layouts/map_layouts.sfc
	fi

	if [ "$script" == "Retranslation" ]; then
		cp "patches/$file_base.ips" "patches/Retranslation Redux.ips"
		rm "patches/$file_base.ips"
	else
		cp "patches/$file_base.ips" "patches/Link to the Past Redux.ips"
		rm "patches/$file_base.ips"
	fi

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

	# Force default settings at startup
	sed -i 's/!newgfx = 0/!newgfx = 1/g' $asm_file
	sed -i 's/!subtitle = 1/!subtitle = 0/g' $asm_file
	sed -i 's/!retranslation = 1/!retranslation = 0/g' $asm_file

	while [ ! -z "$1" ]; do

		# Check if Redux is used alongside Green, Subtitle or Combined
		if [[ ( "$@" == *[r]* ) && ( "$@" == *[g]* || "$@" == *[s]* || "$@" == *[c]* ) ]]; then
			export error="Don't combine -r with -g/-s/-c!"
			Error;
			echo "Use -g, -s or -c by themselves, and/or with either -o or -t instead."; echo
			End;
		fi

		# Check if Green or Subtitle is used alongside Combined
		if [[ (( "$@" == *[g]* || "$@" == *[s]* ) && ( "$@" == *[c]* )) || ("$@" == *[g]* && "$@" == *[s]*)]]; then
			export error="Don't combine -g/-s with themselves, nor with -c!"
			Error;
			echo "If you want Green Agahnim + Subtitle, use -c alone instead."; echo
			End;
		fi

		# Check each argument do determine action
		case "$1" in
		--help|-h) # Display Help
			Help
			exit;;
		--retrans|-t) # Retranslation Redux script
			export script='Retranslation'
			sed -i 's/!retranslation = 0/!retranslation = 1/g' $asm_file ;;
		--original|-o) # Default Redux with Original GFX
			export org='original/Original-'	
			sed -i 's/!newgfx = 1/!newgfx = 0/g' $asm_file ;;
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
			sed -i 's/!subtitle = 0/!subtitle = 1/g' $asm_file
			Start;;
		--combine|-c) # Redux with Green Agahnim and Subtitle
			shift
			export graphics='AgahnimSubtitle'
			sed -i 's/!subtitle = 0/!subtitle = 1/g' $asm_file
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


