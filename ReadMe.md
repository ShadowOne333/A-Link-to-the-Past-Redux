# THE LEGEND OF ZELDA: A LINK TO THE PAST REDUX

## **Index**

* [**A Link to the Past Redux Info**](#a-link-to-the-past-redux)

* [**Changelog**](#changelog)

* [**Optional Patches**](#optional-patches)

* [**Compilation**](#compilation)

* [**Patch & Use Instructions**](#instructions)

* [**FAQ**](#faq)

* [**Credits**](#credits)

* [**Project Licence**](#license)

-------------------

* _**BEFORE PATCHING**_:

    NOTE: Take into consideration that should ONLY patch either the "Link to the Past Redux.ips" patch OR the "Retranslation Redux.ips" patch.
    **DO NOT** combine them. Retranslation Redux already contains all of the perks and features of normal Redux by default, so you don't need to apply one over the other!

-------------------

## A Link to the Past Redux

“The Legend of Zelda: A Link to the Past Redux” is a fork of Conn & qwertymodo’s [A Link to the Past DX](https://www.romhacking.net/hacks/2234/) hack that further modifies the game to include changes to accommodate the game into the overall franchise, as well as renaming stuff badly translated and making changes for characters with official artwork not matching with the sprites/palettes in-game.

This version aims to keep consistence with the overall franchise, along with converting some of the odd palette/sprite choices that didn’t match the original artwork of the game. 

Follow the GitHub repository for the full source code of the project:
https://github.com/ShadowOne333/A-Link-to-the-Past-Redux


### Retranslation Redux:

Additionally, and thanks to the incredible and in-depth work of the guys at Translation Quest (Chicken Knife, nejimakipiyo and Dattebayo), the entirety of the Zelda 3 script has been reworked to be more in-line with the original Japanese script.

Names, locations, items, religious references, all that is changed to make the script a much richer and refined product.
NOTE: You DO NOT need to patch Redux first in order to apply this hack. You can apply this by its own over a vanilla/clean ALttP ROM, and then whatever optional patches the user might desire.

-------------------

## Changelog

* All of the features found in the "[A Link to the Past DX](https://www.romhacking.net/hacks/2234/)" project by Conn & qwertymodo
* New inventory GFX starting from version 7.0, which gives individual slots to every item, including one per each bottle and the shovel is handled as a separate and permanent item. Ocarina and Golden Bee names have been fixed manually for this too. Additionally, you can even switch between items quickly with the press of the L or R buttons!
* Max consumables for Bombs and Arrows are now 60 for Bombs and 99 for Arrows (v7.0 and onwards)
* Permanent Shovel, as well as being able to dig up items with it in the overworld (by PowerPanda)
* Skip the Title Screen sequence by pressing Start, you no longer have to wait until the Triforce and title screen finish their animation (by PowerPanda)
* Virtual Console's flashing and colour modifications have been disassembled and ported over, so people with photosensitivity can enjoy the game without much risk.
* More bugfixes, additional to those found in A Link to the Past DX (Some SFXs not triggering, Fairy restores 8 hearts, fixed Pendant drop position, Sword beam equal in damage to Master Sword, Dark World spawn fix, Whirl fix, Cane of Somaria fix, etc.)
* MSU-1 playback included
* Change Link’s hair and hat to closely match his original artwork.
* Change Agahnim colours to match the original red robe and blue skin artwork.
* Changed Uncle’s sprite to match official artwork.
* Change the Flute’s name to Ocarina (I don’t know in what world that instrument is a flute). This includes in-game text and Credits name changed too.
* Change the Good Bee’s name to Golden Bee.
* Change Faerie to Fairy. This includes in-game text too.
* Change Pegasus Shoes to Pegasus Boots. This includes in-game text too.
* Tunics order will always remain as Blue Tunic first, and Red Tunic second, despite if you get them out of order.
* Change all the references of the “Wise Men” to “Sages”, Medicines to "Potions", Blue Pendant is now Wisdom while Red one is Power, and many other text and graphical changes to fit in line with the rest of the series.
* King of Hyrule now has a red outfit instead of green to match the rest of the franchise’s Kings of Hyrule (Like Daphnes Nohansen Hyrule from WW). For v5.0, the palette being shared between green soldiers and King of Hyrule has been fixed. Thanks to Conn for this! 

* Ice Palace now resembles the GBA version with a new layout. In v2.0 this room layout was fixed to have 3 movable blocks in the new section. There was one movable block unused in one other Dungeon layout found in Room 240. (Why was it there?)

* Uncensored changes have been included too, as well as restoring some unused content. These changes focus on restoring censored content from A Link to the Past (J) and unused content for both ROMs (U and J). Some of the new content includes:

	* Star of David for the Eastern Palace restored (From the Japanese ROM)
	* New custom hieroglyphs to mimic those of the Japanese release.
	* Sanctuary doorway restored
	* Skull Statues restored. They appear in the Skull Woods Dungeon.
	* Unused Zora sign near Zora’s Domain entrance restored.
	* First warp point has been relocated, it no longer drops you at the very beginning of the Death Mountain, but rather at the left side of the Heart Container you obtain after your first travel to the Dark World for convenience sake.

* A shortcut northwest of Link's house and southwest of Hyrule Castle has been added (courtesy of PowerPanda) that adds a lift-able rock that grants rapid access to Kakariko Village once the player obtains the Titan's Mitt. This shortcut is inspired by the same shortcut/change that was implemented in "A Link Between Worlds".

Please refer to the [A Link to the Past DX](https://www.romhacking.net/hacks/2234/) hack page by qwertymodo and Conn for more information on additional ASM changes over the original A Link to the Past (including L/R Item Switch). 


-------------------

## Optional patches

1. **Disable Dash Turning:**
	One of the features of the main Redux hack is a port of the "Ancient Stone Tablets" code of being able to turn while using the Pegasus Boots' dash.
	However, some people might not like this, as using the dash effectively makes you invincible while running straight with the sword at front, and being able to turn makes it even more of an overpowered feature to some.
	With this patch, you can now easily disable said feature, and use the Pegasus Boots like they worked originally in A Link to the Past.

2. **Enable FMV for MSU:**
	This patch will enable the loading of the special FMV (Track 35) from the MSU files.

	Please note that the hack itself ALREADY includes MSU-1 track loading, this patch simply enables the loading of that specific track #35 to avoid an issue with the game trying to always load the FMV, despite if the FMV itself exists or not in the same folder, which ends up in a 1~ minute black screen upon loading a new game.
	
	Please use this patch ONLY if you will add the FMV video in your MSU files. If you don't want the FMV video but still want to use MSU-1 audio, simply IGNORE this patch.

	You can get the FMV files from these links by Qwertymodo and Conn, respectively:
	
	* The Legend of Zelda: A Link to the Past [Optional Video] (-21dB, normalized):
	http://www.mediafire.com/?k9zz4wa7i9ka3ov

	* MSU Opening Intro and Audio (Track 35 FMV not normalized):
	http://dl.dropbox.com/s/9tfg549to1cpbrn/MSU%20Zelda%20Opening%20Intro%20and%20Audio.rar?dl=0


3. **Green Agahnim:**
	Using this will revert the color of Agahnim from Red+Blue to his original Green robe.

4. **Green Agahnim+Triforce Subtitle:**
	Using this will revert the color of Agahnim from Red+Blue to his original Green robe, and also adds the new "TRIFORCE OF THE GODS" subtitle alongside it.

5. **Max Bomb-Arrows Amounts:**
	This patch changes Link default Bombs & Arrows minimum and maximum amounts to be 20 to 99 for Bombs, and 30 to 99 for Arrows. 

6. **Mirror Works in Both Worlds:**
	This patch allows the Mirror to travel from both the Light and Dark Worlds (Light - Dark & Dark - Light), making it so that Link can travel between them at will, instead of only being able to use the Mirror to travel from Dark - Light World. 

7. **Move Blocks Indefinitely:**
	Gives Link the ability to move blocks (that can be moved) several times. 

8. **Original Bomb-Arrows Amounts:**
	This patch reverts Link default Bombs & Arrows minimum and maximum amounts to be those of the original ALttP, those being 10 to 50 for Bombs, and 30 to 70 for Arrows. 

9. **Original Pink Hair Link:**
	These patches revert Link's new blonde hair to the original pink hair he had.

10. **Remove Low Health Beep:**
	Completely remove the constant beeping that plays when you’re low on hearts. 

11. **Start at Full Hearts (by PowerPanda):**
	Applying this patch will make you start your game at full hearts every time you load your game.

12. **Triforce of the Gods Subtitle):**
	Using this will change the subtitle in the title screen from "A LINK TO THE PAST" to match the original Japanese subtitle of "TRIFORCE OF THE GODS".


-------------------

## Compilation


### Windows

For compilation on Windows, you need to download and install [CygWin](https://www.cygwin.com/).

When installing Cygwin, be sure to also install `git` from the list of packages available, or you won't be able to clone the repository from the source.

Once you have it installed, browse to the directory where you downloaded the source code, and start the same steps as the Linux compilation.

(I recompiled the scompress Windows EXE in Cygwin so it works properly with the Windows compilation)


### Linux

The source code was developed entirely on Linux, using scompress and flips as sources for compiling both the graphics and the assembly code, respectively. I have compiled both scompress and flips as 32bit binaries and included them into the repository so the user can directly use these without worrying about compiling and creating the executable binaries for each one.

* Compiling the ROM:

1. Either download the source code as ZIP, or clone the repository by opening terminal and running `git clone https://github.com/ShadowOne333/A-Link-to-the-Past-Redux`. Put the downloaded files anywhere in your PC.
2. Grab your ALttP ROM with the name "Legend of Zelda, The - A Link to the Past (USA).sfc" under the "/rom/" folder.
3. Open terminal in your Linux distribution, browse to the same folder as the "make.sh" file, and modify its permissions to be an executable script file by doing the following:
	`sudo chmod +x make.sh`
4. Next, execute the script with the following argument if you want to compile _only_ Redux:
	`./make.sh -r
5. If you want to compile a custom version of ALttP Redux, you have to choose from a variety of arguments, here's the list of options so far:

	`./make.sh -r` 	Compiles standalone ALttP Redux
	
	`./make.sh -g` 	Compiles Redux with the Green Agahnim graphics
	
	`./make.sh -s` 	Compiles Redux with the "TRIFORCE OF THE GODS" Title Screen Subtitle
	
	`./make.sh -c` 	Compiles Redux with both the Title Screen Subtitle & Green Agahnim graphics

	`./make.sh -t -r` 	Compiles Redux with the Retranslation script
	
	`./make.sh -t -g` 	Compiles Redux with the Green Agahnim graphics & Retranslation script
	
	`./make.sh -t -s` 	Compiles Redux with the Subtitle graphics & Retranslation script
	
	`./make.sh -t -c` 	Compiles Redux with the combined Green Agahnim & Subtitle graphics, and Retranslation script

	`./make.sh -o -r` 	Compiles Redux with the Original menu and HUD graphics

	`./make.sh -o -g` 	Compiles Redux with the Original menu/HUD & Green Agahnim graphics

	`./make.sh -o -s` 	Compiles Redux with the Original menu/HUD & Title Screen Subtitle graphics

	`./make.sh -o -c` 	Compiles Redux with the Original menu/HUD & both the Subtitle + Green Agahnim graphics

	`./make.sh -o -t -r` 	Compiles Redux with the Original menu/HUD graphics and Retranslation script
	
	`./make.sh -o -t -g` 	Compiles Redux with the Original menu/HUD & Green Agahnim graphics, and Retranslation script
	
	`./make.sh -o -t -s` 	Compiles Redux with the Original menu/HUD & Subtitle graphics, and Retranslation script
	
	`./make.sh -o -t -c` 	Compiles Redux with the Original menu/HUD, Green Agahnim & Subtitle graphics, and Retranslation script

6. If you want specific optional patches to be applied in your complation, open the `optional.asm` file inside /code/ and uncomment the `incsrc xxxx` file of the optional patch you desire to include during compilation.

7. Enjoy the hack!


----

## Instructions

To play The Legend of Zelda: A Link to the Past Redux, the following is required:

* Snes9x 1.54.1 or above (any version which allows MSU-1 of Snes9x)
* A Link to the Past SNES Unheadered/No-Intro ROM:

	Legend of Zelda, The - A Link to the Past (USA)
	No-Intro: Super Nintendo Entertainment System (v. 20210222-050638)
	File/ROM SHA-1: 6D4F10A8B10E10DBE624CB23CF03B88BB8252973
	File/ROM MD5: 608C22B8FF930C62DC2DE54BCD6EBA72
	File/ROM CRC32: 777AAC2F

* Lunar IPS
* A Link to the Past Redux.ips patch

Grab the patches from inside the /patches/ folder from the GitHub page, or alternatively, download the .zip file from the Releases page (once a proper release is out) and apply the patch over your Zelda A Link to the Past ROM with Lunar IPS.
If you want to apply any of the optional patches, you can use each Optional patch individually from inside the /patches/optional folder depending on your liking over your already patched Zelda A Link to the Past Redux ROM, or you can either compile them manually from the source code, although this is not recommended if you are not familiar with compilations or 65816 assembly.


### How to get MSU-1 working with ALttP Redux

Here's an example of how they should be.
Let's say your ROM is named "redux.sfc", this how everything else should go (all files should go WITHIN the same folder):

	redux.msu
	redux.sfc
	redux-1.pcm
	redux-2.pcm
	...
	redux-34.pcm

If you change the name of the ROM to anything else, you have to change each instance of "redux" in EACH file to whatever you choose the name to be. The track names should be the EXACT same name of the ROM, and you add a dash and the number for each track accordingly. "loz-redux-1.pcm, loz-redux-2.pcm",etc. For example, I always name my ROM like "The Legend of Zelda - A Link to the Past.sfc"

	The Legend of Zelda - A Link to the Past.msu
	The Legend of Zelda - A Link to the Past.sfc     <<------Should be an SFC extension for better compatibility with other emulators.
	The Legend of Zelda - A Link to the Past-1.pcm
	The Legend of Zelda - A Link to the Past-2.pcm
	...
	The Legend of Zelda - A Link to the Past-34.pcm
	The Legend of Zelda - A Link to the Past-35.pcm

One thing you have to take into consideration is that the ROM should be in the same folder as the .msu and all the .pcm files.

NOTE: As mentioned with the "Enable FMV" optional patch, track #35 is the one which contains the FMV, if you are going to patch Redux to enable the FMV, be sure that you have the 35.pcm file in there!

-------------------

## FAQ

* **Why are both the Map Layouts and the "TRIFORCE OF THE GODS" Subtitle Tilemapping handled through IPS patches instead of a proper ASM disassembly?**

A Link to the Past is well known for using compression for almost everything in the game, and also a great number of assets in the game quite limited and almost at the top of their maximum limit.

The entirety of the graphics are compressed in the game, and the map, dungeon and room data have very strict limits when it comes to adding new objects or items in any of them. Heck, even the text format itself is compressed, it uses some sort of "dictionary" that detects certain combination of letters and outputs a single  byte that corresponds to 2 or 3 charaters at a time.

Adding to this, the FastROM hack was giving some really iffy problems when attempting a map modification through assembly with a lot of rooms being broken with blocks of random stuff (possibly badly repointed data).

Due to all of these points, it was decided to create diff patches for both the Map Layouts and the Subtitle tilemap.

The way these were created was by compiling a fresh Redux ROM without any of the map or tilemap changes, with all of the coding and graphics injected, and then using that ROM as a base for editing the maps and tilemaps through [ZScream](https://github.com/Zarby89/ZScreamDungeon). 
Then, applying the patches first before any other changes, and then patching in the Redux code and injecting the graphics last would output a correct and fully functional Redux ROM with all of the map and subtitle changes working. Thi exact order of compilation was needed, or else, any other combination would give a borked ROM on output.

-------------------

## Credits

* **Conn & qwertymodo** - For their incredible work on the original project "A Link to the Past DX" which was used as a base with their permission, and additionally, for their bugfixes past the initial release and their permission to also use the source code of theirs for this GitHub repository.
* **Zarby89 & Jared Brian** - For their work on [ZScream](https://github.com/Zarby89/ZScreamDungeon), which has far outdone Hyrule Magic for Zelda 3 hacking in a full open-source project, and without having to worry about your ROM getting corrupted all of the sudden.
* **SCD** - For his uncensoring and localization changes contribution, to bring back portions of the game previously removed in the Japanese-US conversion.
* **PuzzleDude** - For his 24 item menu and additional hacks (keep Shovel and Flute fix)
* **Kasuto** - For his Zelda 3 Max Consumables Fix Hack
* **rainponcho** - For his help towards fixing the bug with the Bunny palette and also the glitch with the LR Item switch for New GFX.
* **RPGHacker**'s repository for the [Asar](https://github.com/RPGHacker/asar) project which was used for the compilation of the source code in this repository.
* **Skarsnik** - For his "scompress" project, which helped as a good tool for an open source solution to "zcompress": https://github.com/Skarsnik/sneshacking/tree/master/scompress
* **PowerPanda** - For his individual patches (Kakariko Shortcut, Start with Full Hearts, Title Screen Skip and Reworked Shovel treasures hacks) which can be used as optional patches for Redux. 
* **Translation Quest**	For their incredible work on the New Retranslation based on the original Japanese script


-------------------


## License

A Link to the Past Redux is a project licensed under the terms of the GPLv3, which means that you are given legal permission to copy, distribute and/or modify this project, as long as:

1. The source for the available modified project is shared and also available to the public without exception.
2. The modified project subjects itself different naming convention, to differentiate it from the main and licensed A Link to the Past Redux project.

You can find a copy of the license in the LICENSE file.
