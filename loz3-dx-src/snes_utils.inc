//******************************************************************************
//* snes_utils.inc
//* (c) 2016 qwertymodo
//* 
//* Some basic SNES utility macros.  Currently only supports standard Hi/LoROM.
//*
//* seek: Sets PC to the input address and moves the write pointer according to
//*       defined Hi/LoROM mapping.
//*
//* sseek: Sets PC to the SlowROM equivalent of the input address, regardless
//*        of FastROM definition and sets the write pointer according to
//*        defined HiROM/LoROM mapping.
//*
//* fseek: Sets PC to the FastROM equivalent of the input address if FastROM is
//*        defined, otherwise directly to the given address, and sets the write
//*        pointer according to defined Hi/LoROM mapping.
//*
//* org:   xkas compatibility macro.  Simple alias for seek.
//*
//* jmf:   Jump Long FastROM.
//*
//* jsf:   Jump to Subroutine Long FastROM.
//******************************************************************************

if !{defined _snes_utils_inc} {
define _snes_utils_inc()


architecture wdc65816


if {defined fastrom} {
    define rombank = $800000
} else {
    define rombank = $000000)
}


macro seek(variable address) {
    if {defined hirom} {
        origin (address) & $3FFFFF
        base address
    } else if {defined exhirom} {
        origin (address & 0x3fffff) | ((~address >> 1) & 0x400000)
        base address
    } else { // default to lorom
        origin ((address & $7F0000) >> 1) | (address & $7FFF)
        base address
    }
}


macro sseek(variable address) {
    if {defined hirom} {
        origin (address) & $3FFFFF
        base address & ~{rombank}
    } else if {defined exhirom} {
        origin (address & 0x3fffff) | ((~address >> 1) & 0x400000)
        base address & ~{rombank}
    } else {
        origin ((address & $7F0000) >> 1) | (address & $7FFF)
        base address & ~{rombank}
    }
}


macro fseek(variable address) {
    if {defined hirom} {
        origin (address) & $3FFFFF
        base address | {rombank}
    } else if {defined exhirom} {
        origin (address & 0x3fffff) | ((~address >> 1) & 0x400000)
        base address | {rombank}
    } else {
        origin ((address & $7F0000) >> 1) | (address & $7FFF)
        base address | {rombank}
    }
}


macro org(variable address) {
    seek(address)
}


macro jmf(variable address) {
    jml address | {rombank}
}


macro jsf(variable address) {
    jsl address | {rombank}
}


macro store_state() {
    enqueue origin, base, pc
}


macro load_state() {
    dequeue pc, base, origin
}


macro assert_end(variable address) {
    if pc() & ~{rombank} > (address & ~{rombank}) {
        evaluate size((pc() & ~{rombank}) - (address & ~{rombank}))
        seek(address)
        evaluate offset(origin())
        error "{size} byte overrun occurred at file offset {offset}"
    }
}


macro checksum(variable sum) {
    store_state()
    seek($FFDC)
    dw sum^$FFFF, sum
    load_state()
}


if {defined input} {
    origin 0
    insert "{input}"
    origin 0
}


} // _snes_utils_inc
