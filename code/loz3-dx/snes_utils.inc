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

;if !{defined _snes_utils_inc} {
	;define _snes_utils_inc()

if !{defined(_snes_utils_inc)}

	!_snes_utils_inc()

	;architecture wdc65816

	if !fastrom = 1
	    !rombank = $800000
	else
	    !rombank = $000000
	endif

	macro seek(variable address)
		if !hirom
			org (address) & $3FFFFF
			base address
		elseif !exhirom
			org (address & 0x3FFFFF) | ((~address >> 1) & 0x400000)
			base address
		else	; default to lorom
			org ((address & $7F0000) >> 1) | (address & $7FFF)
			base address
		endif
	endmacro

	macro sseek(variable address)
		if !hirom
			org (address) & $3FFFFF
			base address & ~{rombank}
		elseif !exhirom
			org (address & 0x3FFFFF) | ((~address >> 1) & 0x400000)
			base address & ~{rombank}
		else
			org ((address & $7F0000) >> 1) | (address & $7FFF)
			base address & ~{rombank}
		endif
	endmacro

	macro fseek(variable address)
		if !hirom
			org (address) & $3FFFFF
			base address | {rombank}
		elseif !exhirom
			org (address & 0x3FFFFF) | ((~address >> 1) & 0x400000)
			base address | {rombank}
		else
			org ((address & $7F0000) >> 1) | (address & $7FFF)
			base address | {rombank}
		endif
	endmacro

	macro org(variable address)
	    seek(address)
	endmacro

	macro jmf(variable address)
	    jml address | {rombank}
	endmacro

	macro jsf(variable address)
	    jsl address | {rombank}
	endmacro

	macro store_state()
	    enqueue org, base, pc
	endmacro

	macro load_state()
	    dequeue pc, base, org
	endmacro

	macro assert_end(variable address)
		if pc() & ~{rombank} > (address & ~{rombank})
			evaluate size((pc() & ~{rombank}) - (address & ~{rombank}))
			seek(address)
			evaluate offset(org())
			error "{size} byte overrun occurred at file offset {offset}"
		endif 
	endmacro

	macro checksum(variable sum)
		store_state()
		seek($FFDC)
		dw sum^$FFFF, sum
		load_state()
	endmacro

	if input
	    org 0
	    insert "{input}"
	    org 0
	endif

endif	; _snes_utils_inc
