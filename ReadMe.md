
# THE LEGEND OF ZELDA: A LINK TO THE PAST REDUX

----------------------------------------------------------------------------------

# **Index**

* [**A Link to the Past Redux Info**](#a-link-to-the-past-redux)

* [**Changelog**](#changelog)

* [**Optional Patches**](#optional-patches)

* [**Patching and Usage Instructions**](#instructions)

* [**Credits**](#credits)

* [**Project Licence**](#license)

-------------------

## A Link to the Past Redux

“The Legend of Zelda: A Link to the Past Redux” is a fork of Conn & qwertymodo’s [A Link to the Past DX](https://www.romhacking.net/hacks/2234/) hack that further modifies the game to include changes to accommodate the game into the overall franchise, as well as renaming stuff badly translated and making changes for characters with official artwork not matching with the sprites/palettes in-game.

This version aims to keep consistence with the overall franchise, along with converting some of the odd palette/sprite choices that didn’t match the original artwork of the game. 

Follow the GitHub repository for the full source code of the project:
https://github.com/ShadowOne333/A-Link-to-the-Past-Redux


-------------------

## Changelog

* All of the features found in the "[A Link to the Past DX](https://www.romhacking.net/hacks/2234/)" project by Conn & qwertymodo
* Change Link’s hair and hat to closely match his original artwork.
* Change Agahnim colours to match the original red robe and blue skin artwork.
* Changed Uncle’s sprite to match official artwork.
* Change the Flute’s name to Ocarina (I don’t know in what world that instrument is a flute). This includes in-game text and Credits name changed too.
* Change the Good Bee’s name to Golden Bee.
* Change Faerie to Fairy. This includes in-game text too.
* Change Pegasus Shoes to Pegasus Boots. This includes in-game text too.
* Change all the references of the “Wise Men” to “Sages”.
* Change the layout of the Ice Palace to that of the GBA port. No more going around the entire palace just to get to the next room!
* King of Hyrule now has a red outfit instead of green to match the rest of the franchise’s Kings of Hyrule (Like Daphnes Nohansen Hyrule from WW). For v5.0, the palette being shared between green soldiers and King of Hyrule has been fixed. Thanks to Conn for this! 
* Ice Palace now resembles the GBA version with a new layout. In v2.0 this room layout was fixed to have 3 movable blocks in the new section. There was one movable block unused in one other Dungeon layout found in Room 240. (Why was it there?) 
* Star of David for the Eastern Palace restored (From the Japanese ROM)
* New custom hieroglyphs to mimic those of the Japanese release.
* Sanctuary doorway restored
* Skull Statues restored. They appear in the Skull Woods Dungeon.
* Unused Zora sign near Zora’s Domain entrance restored.
* First warp point has been relocated, it no longer drops you at the very beginning of the Death Mountain, but rather at the left side of the Heart Container you obtain after your first travel to the Dark World for convenience sake.
* Max consumables for Bombs and Arrows are now 99.
* New inventory GFX (Optional patch), which gives individual slots to every item, including one per bottle and the shovel is handled as a separate item. Ocarina and Golden Bee names have been fixed manually for this release too.


Please refer to the A Link to the Past DX hack page by qwertymodo and Conn for more information on additional ASM changes over the original A Link to the Past (including L/R Item Switch). 


-------------------

## Optional patches

1. **Disable Dash Turning:**
	One of the features of the main Redux hack is a port of the "Ancient Stone Tablets" code of being able to turn while using the Pegasus Boots' dash.
	However, some people might not like this, as using the dash effectively makes you invincible while running straight with the sword at front, and being able to turn makes it even more of an overpowered feature to some.
	With this patch, you can now easily disable said feature, and use the Pegasus Boots like they worked originally in A Link to the Past.


2. **Enable FMV for MSU:**
	These patches will enable the loading of the special FMV (Track 35) from the MSU files.

	Please note that the hack itself ALREADY includes MSU-1 track loading, this patch simply enables the loading
	of that specific track #35 to avoid an issue with the game trying to always load the FMV, despite if the FMV 
	itself exists or not in the same folder, which ends up in a 1~ minute black screen upon loading a new game.
	
	Please use this patch ONLY if you will add the FMV video in your MSU files. If you don't want the FMV video
	but still want to use MSU-1 audio, simply IGNORE this patch.

	You can get the FMV files from these links by Qwertymodo and Conn, respectively:

		*The Legend of Zelda: A Link to the Past [Optional Video] (-21dB):
		http://www.mediafire.com/?k9zz4wa7i9ka3ov

		*MSU Opening Intro and Audio:
		http://dl.dropbox.com/s/9tfg549to1cpbrn/MSU%20Zelda%20Opening%20Intro%20and%20Audio.rar?dl=0

3. **Redux (Original Menu GFX):**
	These patches include all of the bonuses from Redux, with the default item screen and HUD from vanilla ALttP.
	* Additionally inside this folder, you'll find optional patches EXCLUSIVE for the original GFX hack:

	a) Green Agahnim (Original GFX):
		This set of patches are for use EXCLUSIVELY with Original GFX!
		Using this will revert the color of Agahnim from Red+Blue to his original Green robe.

	b) Green Agahnim+Triforce Subtitle (Original GFX):
		This set of patches are for use EXCLUSIVELY with Original GFX!
		Using this will revert the color of Agahnim from Red+Blue to his original Green robe, and also adds the new "TRIFORCE OF THE GODS" subtitle alongside it.

	c) Triforce of the Gods Subtitle (Original GFX):
		This set of patches are for use EXCLUSIVELY with Original GFX!
		Using this will change the subtitle in the title screen from "A LINK TO THE PAST" to match the original Japanese subtitle of "TRIFORCE OF THE GODS".


4. **Green Agahnim (New GFX):**
	This set of patches are for use EXCLUSIVELY with New GFX!
	Using this will revert the color of Agahnim from Red+Blue to his original Green robe.


5. **Green Agahnim+Triforce Subtitle (New GFX):**
	This set of patches are for use EXCLUSIVELY with New GFX!
	Using this will revert the color of Agahnim from Red+Blue to his original Green robe, and also adds the new "TRIFORCE OF THE GODS" subtitle alongside it.


6. **Kakariko Shortcut (by PowerPanda):**
	Adds a shortcut to the northwest of Link's house and southwest of Hyrule Castle that adds a lift-able rock that grants rapid access to Kakariko Village once the player obtains the Titan's Mitt. This shortcut is inspired by the same shortcut/change that was implemented in "A Link Between Worlds". (Both patches are compatible with either Original GFX or New GFX).


7. **Original Pink Hair Link:**
	These patches revert Link's new blonde hair to the original pink hair he had.


8. **Skip Title Screen (by PowerPanda):**
	Applying this patch makes it so you can skip the title screen sequence with the press of a button, so you don't have to wait until it is finished to advance to the main File Select screen.


9. **Start at Full Hearts (by PowerPanda):**
	Applying this patch will make you start your game at full hearts every time you load your game.


10. **Triforce of the Gods Subtitle (New GFX):**
	This set of patches are for use EXCLUSIVELY with New GFX!
	Using this will change the subtitle in the title screen from "A LINK TO THE PAST" to match the original Japanese subtitle of "TRIFORCE OF THE GODS".


-------------------

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

If you change the name of the ROM to anything else, you have to change each instance of "redux" in EACH file to whatever you choose the name to be. The track names should be the EXACT same name of the ROM, and you add a dash and the number for each track accordingly. "loz-redux-1.pcm, loz-redux-2.pcm",etc. For example, I always name my ROM like "The Legend of Zelda - A Link to the Past.smc"

	The Legend of Zelda - A Link to the Past.msu
	The Legend of Zelda - A Link to the Past.smc     <<------This one can be .sfc or .smc, doesn't matter.
	The Legend of Zelda - A Link to the Past-1.pcm
	The Legend of Zelda - A Link to the Past-2.pcm
	...
	The Legend of Zelda - A Link to the Past-34.pcm
	The Legend of Zelda - A Link to the Past-35.pcm

One thing you have to take into consideration is that the ROM should be in the same folder as the .msu and all the .pcm files.

NOTE: As mentioned with the "Enable FMV" optional patch, track #35 is the one which contains the FMV, if you are going to patch Redux to enable the FMV, be sure that you have the 35.pcm file in there!


-------------------

## Credits

* **Conn & qwertymodo** - For their incredible work on the original project "A Link to the Past DX" which was used as a base with their permission, and additionally, for their bugfixes past the initial release and their permission to also use the source code of theirs for this GitHub repository.
* **SCD** - For his uncensoring and localization changes contribution, to bring back portions of the game previously removed in the Japanese-US conversion.
* **PuzzleDude** - For his 24 item menu and additional hacks (keep Shovel and Flute fix)
* **Kasuto** - For his Zelda 3 Max Consumables Fix Hack
* **rainponcho** - For his help towards fixing the bug with the Bunny palette and also the glitch with the LR Item switch for New GFX.
* **PowerPanda** - For his individual patches (Skip title, Start at Full Hearts and Kakariko Shortcut) which can be used as optional patches for Redux. 
* **RPGHacker** repository for the [Asar](https://github.com/RPGHacker/asar) project which was used for the compilation of the source code in this repository.


-------------------


## License

A Link to the Past Redux is a project licensed under the terms of the GPLv3, which means that you are given legal permission to copy, distribute and/or modify this project, as long as:

1. The source for the available modified project is shared and also available to the public without exception.
2. The modified project subjects itself different naming convention, to differentiate it from the main and licensed Zelda 2 Redux project.

You can find a copy of the license in the LICENSE file.
