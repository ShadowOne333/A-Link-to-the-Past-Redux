@echo off
::-------------------------------------------------------------
set dopause=0
set asar=bin\asar-win\asar-standalone.exe
set scompress=bin\scompress\scompress.exe
set file_base=Zelda3_Redux
set out_folder=%~dp0out
set patches_folder=%~dp0\patches
set clean_rom=rom\Legend of Zelda, The - A Link to the Past (USA).sfc
set patched_rom="%out_folder%"\"%file_base%".sfc
set asm_file=code\main.asm
set checksum=6d4f10a8b10e10dbe624cb23cf03b88bb8252973
::-------------------------------------------------------------
:help
	echo Compile 'A Link to the Past Redux' with one of the following arguments:
	echo.
	echo Syntax: make.sh [option]
	echo Options:
	echo    -h, --help	Prints this menu.
	echo    -o, --original	Original GFX menu (requires -r, -g, -s or -c as additional argument).
	echo    -r, --redux	Compiles default Redux (New GFX).
	echo    -g, --green	Compiles Redux with Green Agahnim GFX.
	echo    -s, --subtitle	Compiles Redux with 'Triforce of the Gods' subtitle.
	echo    -c, --combine	Compiles Redux with the combined Green Agahnim and Subtitle.
	echo.
	echo * To compile normal Redux (New GFX) with one of the graphical patches, use only one of the standalone syntaxes.
	echo    Normal Redux:	Redux+Green Agahnim:	Redux+Subtitle:	Redux+Green Agahnim+Subtitle
	echo    ./make.sh -r	./make.sh -g		./make.sh -s		./make.sh -c
	echo * For Original GFX with one of the graphical patches, use the '-o' argument before the graphics you want
	echo    Original GFX Redux:	OG GFX Redux+Green Agahnim:	OG GFX Redux+Subtitle:	OG GFX Redux+Green Agahnim+Subtitle:
	echo    ./make.sh -o -r		./make.sh -o -g			./make.sh -o -s			./make.sh -o -c
::-------------------------------------------------------------
set /P ENTRY="Select your option (o,r,g,s,c): "
2>NUL call :CASE_%ENTRY%		:: Jump to :CASE_red, :CASE_blue, etc.
if ERRORLEVEL 1 call :DEFAULT_CASE	:: if label doesn't exist
echo Done.
exit /B

:CASE_h
	goto help
:CASE_o
	set org=original/Original-
:CASE_r
	set graphics=Redux
	goto begin
:CASE_g
	set graphics=GreenAgahnim
	goto begin
:CASE_s
	set graphics=Subtitle
	goto begin
:CASE_c
	set graphics=AgahnimSubtitle
	goto begin
:DEFAULT_CASE
	echo Unknown option "%ENTRY%".
	goto END_CASE
:END_CASE
	ver > NUL	:: Reset ERRORLEVEL
	goto theend	:: Return from CALL
::-------------------------------------------------------------
:begin
echo Compressing Redux graphics from %graphics%.bin using scompress...
:: Check if the base ROM exists
if not exist "%clean_rom%" (
	set errormessage=Base ROM not found. Place the "%clean_rom%" ROM inside the 'rom' folder, or name your Base ROM accordingly.&goto error
)	else (
	echo Base ROM detected.&echo.Verifying SHA-1 cheksum hash...
)
::-------------------------------------------------------------
:: Verification for the SHA-1 hash of the base ROM
setlocal enabledelayedexpansion
set /a count=1 
for /f "skip=1 delims=:" %%a in ('certutil.exe -hashfile "%clean_rom%" sha1') do (
	if !count! equ 1 set "sha1=%%a"
	set/a count+=1
)
set "sha1=%sha1: =%

if "%sha1%"=="%checksum%" (
	echo Base ROM SHA-1 checksum verified. Patching...
)	else (
	set errormessage=Base ROM checksum is incorrect. Use a Zelda 3 ROM with the proper SHA-1 checksum for patching.&goto error
)

endlocal
::-------------------------------------------------------------
:: Check if out folder exists and delete any remnant patched ROMs
if not exist "%out_folder%" mkdir "%out_folder%"
if exist "%patched_rom%" del "%patched_rom%"
::-------------------------------------------------------------
:: Copy clean ROM into a base used for patching to keep clean ROM intact
copy "%clean_rom%" "%patched_rom%" >NUL
if %errorlevel% NEQ 0 set errormessage=Could not copy file.&goto error
::-------------------------------------------------------------
:: Compress the graphics back into the base patch ROM
echo Compressing Redux graphics from "%org%""%graphics%" using scompress...
"%scompress%" i out/"$file_base".sfc code/gfx/"%org%""%graphics%".bin
echo Graphics compression finalized.
::-------------------------------------------------------------
:: Patch the Base ROM and create an IPS alongside the patched ROM
"%asar%" code/gfx/palettes/"%graphics%".asm "%patched_rom%"
echo Graphics & palettes compiled.
echo Beginning main assembly code compilation with Asar...
"%asar%" "%asm_file%" "%patched_rom%"
::-------------------------------------------------------------
:: Error messages for Asar in case it fails
if %errorlevel% NEQ 0 set errormessage=Could not patch rom.&goto error
bin\flips.exe --create --ips "%clean_rom%" "%patched_rom%" "%patches_folder%\%file_base%.ips">NUL
if %errorlevel% NEQ 0 set errormessage=Could not create ips.&goto error
::-------------------------------------------------------------
:: Finish script and jump to the "End" function
echo Redux compilation finished!
goto theend
::-------------------------------------------------------------
:: Error message
:error
echo.
echo Redux compilation exited with errors!
echo.ERROR: %errormessage%
echo.
pause
exit
::-------------------------------------------------------------
:: Finish script
:theend
echo Done.
del %clean_rom%
if %dopause% NEQ 0 pause
::-------------------------------------------------------------
