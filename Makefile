# ================================================================
# Makefile for "A Link to the Past Redux"
# ================================================================
#
# This Makefile replaces make.sh and provides the same functionality:
#   - Multi-option build system (e.g., "make retranslation redux")
#   - Automatic tool checking (asar, flips, scompress)
#   - Optional auto-build of scompress using CMake (and Ninja if present)
#   - Strict exit-on-error behavior
#   - Linux / MSYS2 / Termux compatible (no macOS logic)
#
# For detailed project information, see README.md
# ================================================================

SHELL=/bin/bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c

# ------------------------------------------------
# Project variables
# ------------------------------------------------
ASM_FILE        := code/main.asm
FILE_BASE       := Zelda3-Redux
OUT_FOLDER      := out
PATCHES_FOLDER  := patches
CLEAN_ROM_NAME  := Legend of Zelda, The - A Link to the Past (USA).sfc
CLEAN_ROM       := rom/$(CLEAN_ROM_NAME)
PATCHED_ROM     := $(OUT_FOLDER)/$(FILE_BASE).sfc
MAP_LAYOUTS     := code/layouts/map_layouts
SUBTITLE_LAYOUTS:= code/layouts/subtitle_layouts
CHECKSUM        := 6d4f10a8b10e10dbe624cb23cf03b88bb8252973

# ------------------------------------------------
# Default tool locations (for fallback)
# ------------------------------------------------
FALLBACK_ASAR        := bin/asar-linux/asar-standalone
FALLBACK_FLIPS       := bin/flips
FALLBACK_SCOMPRESS   := bin/scompress/scompress
SCOMPRESS_SRC_DIR    := bin/scompress/scompress-master/scompress

# ------------------------------------------------
# Internal variables (populated during build)
# ------------------------------------------------
GRAPHICS :=
FLAG_RETRANS :=
FLAG_ORIGINAL :=

# ------------------------------------------------
# Known build flags for filtering
# ------------------------------------------------
KNOWN_FLAGS := retranslation original redux green subtitle combine

# ------------------------------------------------
# Phony flag targets
# ------------------------------------------------
.PHONY: retranslation original redux green subtitle combine tools-check clean _build dispatch help

.DEFAULT_GOAL := dispatch

# @$(MAKE) _build GOALS="$(MAKECMDGOALS)"
retranslation: dispatch
original: dispatch
redux: dispatch
green: dispatch
subtitle: dispatch
combine: dispatch

# ------------------------------------------------
# Help target
# ------------------------------------------------
help:
	@printf "\nZelda 3 Redux Makefile Help\n"
	@printf "" "------------------------------------------------------------\n"
	@printf "Available targets:\n"
	@printf "  redux          Build default Redux (new GFX)\n"
	@printf "  green          Redux with Green Agahnim GFX\n"
	@printf "  subtitle       Redux with Triforce of the Gods subtitle\n"
	@printf "  combine        Redux + Green Agahnim + Subtitle\n"
	@printf "  original       Use original SNES graphics instead of Redux GFX\n"
	@printf "  retranslation  Enable script retranslation variant\n"
	@printf "  tools-check    Verify all required tools (asar, flips, scompress, cmake)\n"
	@printf "  clean          Remove temporary ROM and layout files (keep patches)\n"
	@printf "\nExamples:\n"
	@printf "  make redux\n"
	@printf "  make retranslation redux\n"
	@printf "  make original subtitle\n"
	@printf "  make retranslation original combine\n"
	@printf "\nNotes:\n"
	@printf "  - combine = Redux + Green Agahnim + Subtitle\n"
	@printf "  - Subtitle is compatible with retranslation and original modes.\n"
	@printf "  - Invalid combinations (e.g., green subtitle) will fail with an error.\n"
	@printf "  - Works on Linux, MSYS2, and Termux.\n\n"

# ------------------------------------------------
# Dispatch: handle multi-flag invocations like "make retranslation redux"
# ------------------------------------------------
dispatch:
	@set -euo pipefail
	GOALS="$(filter $(KNOWN_FLAGS),$(MAKECMDGOALS))"
	if [ -z "$$GOALS" ]; then
		$(MAKE) help
		exit 0
	fi
	$(MAKE) tools-check
	$(MAKE) _build GOALS="$$GOALS"

# ------------------------------------------------
# Tool detection and validation
# ------------------------------------------------
tools-check:
	@set -euo pipefail
	printf "Running tools-check...\n"

	ASAR_PATH="$(shell command -v asar $(FALLBACK_ASAR) || true)"
	FLIPS_PATH="$(shell command -v flips $(FALLBACK_FLIPS) || true)"
	SCOMP_PATH="$(shell command -v scompress 2>/dev/null || true)"
	if [ -n "$$SCOMP_PATH" ]; then
		printf "  scompress: %s\n" "$$SCOMP_PATH"
	elif [ -x "$(FALLBACK_SCOMPRESS)" ]; then
		printf "  scompress: %s (repo fallback)\n" "$(FALLBACK_SCOMPRESS)"
	else
		printf "  scompress: not found (will attempt to build automatically)\n"
	fi

	CMAKE_PATH="$(shell command -v cmake 2>/dev/null || true)"
	if [ -n "$$CMAKE_PATH" ]; then
		printf "  cmake: %s\n" "$$CMAKE_PATH"
	else
		printf "  cmake: not found (required for scompress build)\n"
	fi

	NINJA_PATH="$(shell command -v ninja 2>/dev/null || true)"
	if [ -n "$$NINJA_PATH" ]; then
		printf "  ninja: %s\n" "$$NINJA_PATH"
	else
		printf "  ninja: not found (optional)\n"
	fi

	if [ -z "$$ASAR_PATH" ]; then
		printf "ERROR: asar is required. Install or place at %s\n" "$(FALLBACK_ASAR)" >&2
		exit 1
	fi

	if [ -z "$$FLIPS_PATH" ]; then
		printf "ERROR: flips is required. Install or place at %s\n" "$(FALLBACK_FLIPS)" >&2
		exit 1
	fi

	printf "Tools validated.\n\n"

	$(eval ASAR := $(shell command -v asar 2>/dev/null || echo $(FALLBACK_ASAR)))
	$(eval FLIPS := $(shell command -v flips 2>/dev/null || echo $(FALLBACK_FLIPS)))
	$(eval SCOMPRESS := $(shell command -v scompress 2>/dev/null || echo $(if $(wildcard $(FALLBACK_SCOMPRESS)),$(FALLBACK_SCOMPRESS),)))
	$(eval CMAKE := $(shell command -v cmake 2>/dev/null || true))
	$(eval NINJA := $(shell command -v ninja 2>/dev/null || true))

# ------------------------------------------------
# _build: main build logic (unchanged from previous version)
# ------------------------------------------------
_build:
	@set -euo pipefail
	GOALS="$(GOALS)"
	printf "Build goals: %s\n" "$$GOALS"

	case "$$GOALS" in *retranslation*) FLAG_RETRANS=1 ;; *) FLAG_RETRANS=0 ;; esac
	case "$$GOALS" in *original*) FLAG_ORIGINAL=1 ;; *) FLAG_ORIGINAL=0 ;; esac

	if echo "$$GOALS" | grep -q '\bcombine\b'; then
		GRAPHICS=AgahnimSubtitle
	elif echo "$$GOALS" | grep -q '\bgreen\b'; then
		GRAPHICS=GreenAgahnim
	elif echo "$$GOALS" | grep -q '\bsubtitle\b'; then
		GRAPHICS=Subtitle
	elif echo "$$GOALS" | grep -q '\bredux\b'; then
		GRAPHICS=Redux
	else
		printf "ERROR: No graphics mode selected.\n" >&2
		exit 1
	fi

	GRAPHICS_COUNT=0
	echo "$$GOALS" | grep -q '\bredux\b' && GRAPHICS_COUNT=$$((GRAPHICS_COUNT+1)) || true
	echo "$$GOALS" | grep -q '\bgreen\b' && GRAPHICS_COUNT=$$((GRAPHICS_COUNT+1)) || true
	echo "$$GOALS" | grep -q '\bsubtitle\b' && GRAPHICS_COUNT=$$((GRAPHICS_COUNT+1)) || true
	echo "$$GOALS" | grep -q '\bcombine\b' && GRAPHICS_COUNT=$$((GRAPHICS_COUNT+1)) || true
	if [ "$$GRAPHICS_COUNT" -gt 1 ]; then
		printf "\nERROR: Multiple graphics modes specified. Use only one of redux, green, subtitle, combine.\n" >&2
		exit 1
	fi

	printf "Configuration:\n"
	[ "$$FLAG_RETRANS" -eq 1 ] && printf "  Retranslation: ON\n" || printf "  Retranslation: OFF\n"
	[ "$$FLAG_ORIGINAL" -eq 1 ] && printf "  Original GFX: ON\n" || printf "  Original GFX: OFF\n"
	printf "  Graphics: %s\n\n" "$$GRAPHICS"

	mkdir -p "$(OUT_FOLDER)" "$(PATCHES_FOLDER)"

	$(eval ASAR := $(shell command -v asar 2>/dev/null || echo $(FALLBACK_ASAR)))
	$(eval FLIPS := $(shell command -v flips 2>/dev/null || echo $(FALLBACK_FLIPS)))
	$(eval SCOMPRESS := $(shell command -v scompress 2>/dev/null || echo $(if $(wildcard $(FALLBACK_SCOMPRESS)),$(FALLBACK_SCOMPRESS),)))
	$(eval CMAKE := $(shell command -v cmake 2>/dev/null || true))
	$(eval NINJA := $(shell command -v ninja 2>/dev/null || true))

	ASAR="$(ASAR)"
	FLIPS="$(FLIPS)"
	SCOMPRESS="$(SCOMPRESS)"
	CMAKE="$(CMAKE)"
	NINJA="$(NINJA)"

	if [ -z "$$SCOMPRESS" ]; then
		printf "scompress missing, building from %s\n" "$(SCOMPRESS_SRC_DIR)"
		if [ -z "$$CMAKE" ]; then
			printf "ERROR: cmake not found, cannot build scompress.\n" >&2
			exit 1
		fi
		if [ -n "$$NINJA" ]; then
			cd "$(SCOMPRESS_SRC_DIR)"
			$$CMAKE -S . -B build -G "Ninja" -DCMAKE_POLICY_VERSION_MINIMUM=3.5
			ninja -C build
			cd - >/dev/null
		else
			cd "$(SCOMPRESS_SRC_DIR)"
			$$CMAKE -S . -B build -DCMAKE_POLICY_VERSION_MINIMUM=3.5
			$(MAKE) -C build
			cd - >/dev/null
		fi
		if [ -x "$(SCOMPRESS_SRC_DIR)/build/scompress" ]; then
			mkdir -p $(dir $(FALLBACK_SCOMPRESS))
			cp "$(SCOMPRESS_SRC_DIR)/build/scompress" "$(FALLBACK_SCOMPRESS)"
			SCOMPRESS="$(FALLBACK_SCOMPRESS)"
		else
			printf "ERROR: scompress build failed.\n" >&2
			exit 1
		fi
	fi

	if [ ! -f "$(CLEAN_ROM)" ]; then
		printf "ERROR: Missing ROM '%s'.\n" "$(CLEAN_ROM)" >&2
		exit 1
	else
		printf "ROM detected with proper name.\n"
	fi

	printf "\nVerifying ROM SHA-1 checksum...\n"
	sha1="$(shell sha1sum "$(CLEAN_ROM)" | awk '{print $$1}')"
	if [ "$$sha1" != "$(CHECKSUM)" ]; then
		printf "ERROR: Incorrect ROM checksum.\n" >&2
		exit 1
	fi

	cp "$(CLEAN_ROM)" "$(PATCHED_ROM)"
	printf "\nBase ROM checksum verified.\n"
	printf "Starting patching process...\n"

	printf "Applying map layout changes...\n"
	$$FLIPS "$(MAP_LAYOUTS).ips" "$(PATCHED_ROM)"
	[ -f "$(MAP_LAYOUTS).sfc" ] && mv "$(MAP_LAYOUTS).sfc" "$(PATCHED_ROM)"

	if [ "$$GRAPHICS" = "Subtitle" ] || [ "$$GRAPHICS" = "AgahnimSubtitle" ]; then
		printf "Applying subtitle map layout changes...\n"
		$$FLIPS "$(SUBTITLE_LAYOUTS).ips" "$(PATCHED_ROM)"
		[ -f "$(SUBTITLE_LAYOUTS).sfc" ] && mv "$(SUBTITLE_LAYOUTS).sfc" "$(PATCHED_ROM)"
	fi

	if [ "$$FLAG_ORIGINAL" -eq 1 ]; then
		org="original/Original-"
		sed -i 's/!newgfx = 1/!newgfx = 0/g' "$(ASM_FILE)"
	else
		org=""
		sed -i 's/!newgfx = 0/!newgfx = 1/g' "$(ASM_FILE)"
	fi

	if [ "$$GRAPHICS" = "Subtitle" ] || [ "$$GRAPHICS" = "AgahnimSubtitle" ]; then
		sed -i 's/!subtitle = 0/!subtitle = 1/g' "$(ASM_FILE)"
	else
		sed -i 's/!subtitle = 1/!subtitle = 0/g' "$(ASM_FILE)"
	fi

	if [ "$$FLAG_RETRANS" -eq 1 ]; then
		sed -i 's/!retranslation = 0/!retranslation = 1/g' "$(ASM_FILE)"
	else
		sed -i 's/!retranslation = 1/!retranslation = 0/g' "$(ASM_FILE)"
	fi

	printf "\nMain assembly code compilation with Asar...\n"
	$$ASAR "$(ASM_FILE)" "$(PATCHED_ROM)"

	printf "\nCompressing $$GRAPHICS graphics...\n"
	$$SCOMPRESS i "$(OUT_FOLDER)/$(FILE_BASE).sfc" "code/gfx/$$org$$GRAPHICS.bin"

	printf "Applying palette changes...\n"
	$$ASAR code/gfx/palettes/"$$GRAPHICS".asm "$(PATCHED_ROM)"

	printf "\nMain assembly code compilation succeded!\n"

	printf "\nCreating IPS patch...\n"
	$$FLIPS --create --ips "$(CLEAN_ROM)" "$(PATCHED_ROM)" "$(PATCHES_FOLDER)/$(FILE_BASE).ips"
	printf "Creating BPS patch...\n"
	$$FLIPS --create --ips "$(CLEAN_ROM)" "$(PATCHED_ROM)" "$(PATCHES_FOLDER)/$(FILE_BASE).bps"

	if [ "$$FLAG_RETRANS" -eq 1 ]; then
		mv "$(PATCHES_FOLDER)/$(FILE_BASE).ips" "$(PATCHES_FOLDER)/Retranslation Redux.ips"
		mv "$(PATCHES_FOLDER)/$(FILE_BASE).bps" "$(PATCHES_FOLDER)/Retranslation Redux.bps"
	else
		mv "$(PATCHES_FOLDER)/$(FILE_BASE).ips" "$(PATCHES_FOLDER)/Link to the Past Redux.ips"
		mv "$(PATCHES_FOLDER)/$(FILE_BASE).bps" "$(PATCHES_FOLDER)/Link to the Past Redux.bps"
	fi
	rm -f "$(PATCHES_FOLDER)/$(FILE_BASE).ips"
	rm -f "$(MAP_LAYOUTS).sfc" "$(SUBTITLE_LAYOUTS).sfc" || true

	printf "\nBuild finished successfully.\n"
	printf "\n"

# ------------------------------------------------
# Clean
# ------------------------------------------------
clean:
	@set -euo pipefail
	rm -f "$(OUT_FOLDER)/$(FILE_BASE).sfc"
	rm -f code/layouts/*.sfc || true
	printf "Clean complete (patches retained).\n"
