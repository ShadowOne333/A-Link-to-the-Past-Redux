@ECHO OFF

SET dopause=0
SET asar=bin\asar-win\asar.exe
SET scompress=bin\scompress\scompress.exe
SET file_base=Zelda3_Redux
SET out_folder=%~dp0out
SET patches_folder=%~dp0\patches
SET clean_rom=rom\Legend of Zelda, The - A Link to the Past (USA).sfc
SET patched_rom="%out_folder%"\"%file_base%".sfc
SET asm_file=code\main.asm
SET checksum=6d4f10a8b10e10dbe624cb23cf03b88bb8252973

:help
	ECHO Compile 'A Link to the Past Redux' with one of the following arguments:
	ECHO.
	ECHO Options:
	ECHO 	r     Compiles default Redux.
	ECHO 	g     Compiles Redux with Green Agahnim GFX.
	ECHO 	s     Compiles Redux with "Triforce of the Gods" subtitle.
	ECHO 	c     Compiles Redux with Green Agahnim and Subtitle.
	ECHO.
	
SET /P ENTRY="Select your option (r,g,s,c): "
2>NUL CALL :CASE_%ENTRY%	:: Jump to :CASE_red, :CASE_blue, etc.
IF ERRORLEVEL 1 CALL :DEFAULT_CASE	:: If label doesn't exist
ECHO Done.
EXIT /B

:CASE_h
	GOTO help
:CASE_r
	SET graphics=Redux
	GOTO begin
:CASE_g
	SET graphics=GreenAgahnim
	GOTO begin
:CASE_s
	SET graphics=Subtitle
	GOTO begin
:CASE_c
	SET graphics=AgahnimSubtitle
	GOTO begin
:DEFAULT_CASE
	ECHO Unknown option "%ENTRY%".
	GOTO END_CASE
:END_CASE
	VER > NUL	:: Reset ERRORLEVEL
	GOTO theend	:: Return from CALL

:begin
echo Compressing Redux graphics from %graphics%.bin using scompress...
:: Check if the base ROM exists
IF NOT EXIST "%clean_rom%" (
	set errormessage=Base ROM not found. Place the "%clean_rom%" ROM inside the 'rom' folder, or name your Base ROM accordingly.&goto error
)	ELSE (
	echo Base ROM detected.&echo.Verifying SHA-1 cheksum hash...
)

:: Verification for the SHA-1 hash of the base ROM
setlocal enabledelayedexpansion
set /a count=1 
for /f "skip=1 delims=:" %%a in ('certutil.exe -hashfile "%clean_rom%" sha1') do (
	if !count! equ 1 set "sha1=%%a"
	set/a count+=1
)
set "sha1=%sha1: =%

IF "%sha1%"=="%checksum%" (
	echo Base ROM SHA-1 checksum verified. Patching...
)	ELSE (
	set errormessage=Base ROM checksum is incorrect. Use a Zelda 3 ROM with the proper SHA-1 checksum for patching.&goto error
)

endlocal

:: Check if out folder exists and delete any remnant patched ROMs
IF NOT EXIST "%out_folder%" MKDIR "%out_folder%"
IF EXIST "%patched_rom%" DEL "%patched_rom%"

:: Copy clean ROM into a base used for patching to keep clean ROM intact
COPY "%clean_rom%" "%patched_rom%" >NUL
if %errorlevel% NEQ 0 set errormessage=Could not copy file.&goto error

:: Compress the graphics back into the base patch ROM
echo Compressing Redux graphics from $graphics.bin using scompress...
"%scompress%" iz out/"$file_base".sfc code/gfx/"%graphics%".bin
echo Graphics compression finalized.

:: Patch the Base ROM and create an IPS alongside the patched ROM
"%asar%" code/gfx/palettes/"%graphics%".asm "%patched_rom%"
echo Graphics & palettes compiled.
echo Beginning main assembly code compilation with Asar...
"%asar%" "%asm_file%" "%patched_rom%"

:: Error messages for Asar in case it fails
if %errorlevel% NEQ 0 set errormessage=Could not patch rom.&goto error
bin\flips.exe --create --ips "%clean_rom%" "%patched_rom%" "%patches_folder%\%file_base%.ips">NUL
if %errorlevel% NEQ 0 set errormessage=Could not create ips.&goto error

:: Finish script and jump to the "End" function
echo Redux compilation finished!
goto theend

:: Error message
:error
echo.
echo Redux compilation exited with errors!
echo.ERROR: %errormessage%
echo.
pause
exit

:: Finish script
:theend
echo Done.
del %clean_rom%
if %dopause% NEQ 0 pause
