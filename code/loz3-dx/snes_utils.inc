;****************************************************************
; snes_utils.inc
; (c) 2016 qwertymodo
;----------------------------------------------------------------
; Some basic SNES utility macros.
; Currently only supports standard Hi/LoROM.
;
;	seek: Sets PC to the input address and moves the write pointer according to defined Hi/LoROM mapping.
;
;	sseek: Sets PC to the SlowROM equivalent of the input address, regardless of FastROM definition and sets the write pointer according to defined HiROM/LoROM mapping.
;
;	fseek: Sets PC to the FastROM equivalent of the input address if FastROM is defined, otherwise directly to the given address, and sets the write
;        pointer according to defined Hi/LoROM mapping.
;
;	org:   xkas compatibility macro. Simple alias for seek.
;
;	jmf:   Jump Long FastROM.
;
;	jsf:   Jump to Subroutine Long FastROM.
;****************************************************************

includeonce

;if not(defined("_snes_utils_inc"))
;	!_snes_utils_inc = 1

	if !fastrom = 1
	    !rombank = $800000
	else
	    !rombank = $000000
	endif

	macro seek(address)
		;origin ((<address>&$7F0000)>>1)|(<address>&$7FFF)
		org <address>
	endmacro

	macro sseek(address)
		;origin ((<address>&$7F0000)>>1)|(<address>&$7FFF)
		org <address>&~!rombank
	endmacro

	macro fseek(address)
		;origin ((address&$7F0000)>>1)|(address&$7FFF)
		org <address>|!rombank
	endmacro

	macro origin(address)
		org <address>+$8000
	endmacro

	macro jmf(address)
		jml <address>|!rombank
	endmacro

	macro jsf(address)
		jsl <address>|!rombank
	endmacro

	; checksum, save_state, load_state and assert_end macros from the original snes_utils were removed, given asar has built-in support for those already in the form of proper checksum calculation, pullpc, pushpc and warnpc

	; input=loz3.sfc
	;if !input
	;	org 0
	;	insert "!input"
	;	org 0
	;endif

;endif	; _snes_utils_inc
