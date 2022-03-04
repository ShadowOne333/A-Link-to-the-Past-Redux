#! /bin/bash

export	file_base=Zelda3_Redux
export  out_folder=out
export	patches_folder=patches
export  clean_rom=rom/Zelda3.sfc
export  patched_rom=$out_folder/$file_base.sfc
export  asm_file=code/main.asm
export	checksum=6d4f10a8b10e10dbe624cb23cf03b88bb8252973

function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}

start=${1:-"start"}
jumpto $start

start:

if [ -e rom/Legend\ of\ Zelda\,\ The\ -\ A\ Link\ to\ the\ Past\ \(USA\).sfc ]; then
	echo "ROM detected. Verifying name..."; else
	export error="ROM name is incorrect. Please, rename the ROM to 'Legend\ of\ Zelda\,\ The\ -\ A\ Link\ to\ the\ Past\ \(USA\).sfc' for the patching process to begin." && jumpto ERROR; fi

cd rom/ && cp Legend\ of\ Zelda\,\ The\ -\ A\ Link\ to\ the\ Past\ \(USA\).sfc Zelda3.sfc && cd ..
test ! -d "$out_folder" && mkdir "$out_folder"
test -f "$patched_rom" && rm "$patched_rom"

if [ -f "$clean_rom" ]; then
	echo "Base ROM detected with proper name. Checking SHA-1..."; else
	export error="Base ROM was not found. Place the 'Legend\ of\ Zelda\,\ The\ -\ A\ Link\ to\ the\ Past\ \(USA\).sfc' ROM inside the 'rom' folder." && jumpto ERROR; fi

export	sha1=$(sha1sum "$clean_rom" | awk '{ print $1 }')

if [ "$sha1" == "$checksum" ]; then
	echo "Base ROM SHA-1 checksum verified. Patching..."; else
	export error="Base ROM checksum is incorrect. Use a Zelda 2 ROM with the proper SHA-1 checksum for patching." && jumpto ERROR; fi

cp "$clean_rom" "$patched_rom"
bin/asar-linux/asar-standalone "$asm_file" "$patched_rom"
bin/flips --create --ips "$clean_rom" "$patched_rom" "$patches_folder/Zelda3_Redux.ips"

jumpto END

ERROR:
echo "ERROR: $error"

END:
rm $clean_rom
sleep 1
exit
