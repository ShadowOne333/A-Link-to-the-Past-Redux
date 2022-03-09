SCompress
Sylvain "Skarsnik" Colinet <scolinet@gmail.com>

Scompress is a software to extract and inject graphics composant of a Zelda 3 rom.
It's a command line tool.

Summary : scompress.exe <modes> romfile [extra arguments]

        The <modes> arguments take combinaison of letters that specify the main mode and some options.
        There are 3 main modes :
                l       list    make scompress list the addresses in the pointer table of the rom.
                e       extract Extract the gfx of the rom. if an argument is specified, everything is extracted in one file.
                        inject  the mode to inject the gfx in the rom. take an optionnal starting location (hexa) and the gfx file to inject as arguments

        You can add 2 other 'mode':
                z       zcompress       make scompress emulate zcompress behavior.
                s       simulation      associated with injection, calcuation are done
                                        but nothing will be written to the rom.
                v       verbose make scompress display more information.


Examples:
        scompress e Zelda3.smc                  Extract the 200+ gfx into separate file
        scompress e Zelda3.smc allgfx.bin       Extract the 200+ gfx into the allgfx.bin file
        scompress i Zelda3.smc allgfx.bin       inject the gfx at the default location
        scompress i Zelda3.smc 87000 allgfx.bin inject the gfx starting at $87000 in the rom file.
        scompress izv Zelda3.smc allgfx.bin     inject the gfx in the rom file following zcompress gfx
						file disposition while displaying more informations.


== Different with zcompres ==

Zelda 3 GFx location are specified by a table, this table contains 223 address.
Then you have the text font and Link sprites that are in another location in the rom.
For some reason zcompress only give you the first 221 then add the Font and Link sprite.

scompress give you the 223 gfx then the Font and Link sprite.


== GFX format ==

Compressed here is just an indication, everything is uncompressed by scompress.
If you extract on individual files here are the format:


* 00-70  : 3bpp compressed (converted to 4bpp)
* 71, 72 : 2bpp compressed
* 73-7E  : 3bpp uncompressed (converted to 4bpp)
* 7F-D9  : 3bpp compressed (converted to 4bpp)
* DA-DC  : 2bpp compressed
* DD,DE  : 2bpp compressed, not present in zcompress
Font (DD for zcompress, SGFXFONT.bin for scompress) is  2bpp uncompressed file
Link sprites (DE for zcompress, SGFXLINK.bin for scompress) is  4bpp uncompressed

== Source code ==

You can find the source code of this software:

https://github.com/Skarsnik/sneshacking


== Licence ==

SCompress is under the GPLV3 licence, you should have received a copy of the licence
with this software.