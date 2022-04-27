#! /bin/bash -e

export	time=$(date +'%T %a %d/%b/%Y')
export	asar=bin/asar-linux/asar-standalone
export	file_base=Zelda3-Redux
export  out_folder=out
export	patches_folder=patches
export  clean_rom=rom/Zelda3.sfc
export  patched_rom=$out_folder/$file_base.sfc
export  asm_file=code/main.asm
export	checksum=6d4f10a8b10e10dbe624cb23cf03b88bb8252973

# Help section
Help()
{
   # Display Help
   echo "Compile 'A Link to the Past Redux' with one of the following arguments:"
   echo
   echo "Syntax: make.sh [-h|r|g|s|c]"
   echo "Options:"
   echo "	-h     Prints this menu."
   echo "	-r     Compiles default Redux."
   echo "	-g     Compiles Redux with Green Agahnim GFX."
   echo "	-s     Compiles Redux with 'Triforce of the Gods' subtitle."
   echo "	-c     Compiles Redux with Green Agahnim and Subtitle."
   echo
}


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

# Copy base ROM into the /out/ folder
	cd rom/ && cp Legend\ of\ Zelda\,\ The\ -\ A\ Link\ to\ the\ Past\ \(USA\).sfc Zelda3.sfc && cd ..
	test ! -d "$out_folder" && mkdir "$out_folder"
	test -f "$patched_rom" && rm "$patched_rom"

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

# Copy clean ROM into a base used for patching to keep clean ROM intact
	cp "$clean_rom" "$patched_rom"

# Compress the graphics back into the base patch ROM
	echo; echo "Compressing Redux graphics from $graphics.bin using zcompress..."
	# Force a button press so zcompress exits on its own
	xdotool key $(xdotool search --name "zcompress.exe") KP_Space
	WINEDEBUG=-all wine bin/zcompress/zcompress.exe 1 87000 out/"$file_base".sfc code/gfx/$graphics.bin
# Sadly, scompress doesn't work properly with New GFX, as it doesn't put the 2bpp graphics into the game properly
	#bin/scompress/scompress iz out/"$file_base".sfc code/gfx/$graphics.bin
	echo "Graphics compression finalized."

# Start patching of the main.asm file and create IPS
	$asar code/gfx/palettes/$graphics.asm $patched_rom	# Graphics changes
	echo "Graphics & palettes compiled."; echo

	echo "Beginning main assembly code compilation with Asar..."
	$asar $asm_file $patched_rom		# Main code
	bin/flips --create --ips "$clean_rom" "$patched_rom" "$patches_folder/$file_base.ips"

# Finish script and jump to the "End" function
	echo "Redux compilation finished at $time!"
	End
}

# Error message
Error()
{
	echo; echo "Redux compilation exited with errors!"
	echo "ERROR: $error"
}

# Finish script
End()
{
	rm $clean_rom
	sleep 1
	exit
}


# Get the options
if [[ $1 == "" ]]; then
    Help;
    exit;
else
	while getopts "hrgsc" option; do
	case $option in
		h) # Display Help
			Help
			exit;;
		r) # Default Redux
			export graphics=Redux
			Start;;
		g) # Redux with Green Agahnim
			export graphics=GreenAgahnim
			Start;;
		s) # Redux with Triforce of the Gods subtitle
			export graphics=Subtitle
			Start;;
		c) # Redux with Green Agahnim and Subtitle
			export graphics=AgahnimSubtitle
			Start;;
		\?) # Invalid option
			#echo "Error: Invalid option '$option'"
			Help
			exit;;
	esac
	done
fi


