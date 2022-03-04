@ECHO OFF

SET dopause=0
SET file_base=Zelda2_Redux
SET "out_folder=%~dp0out"
SET "patches_folder=%~dp0\patches"
SET "clean_rom=rom\Zelda II - The Adventure of Link (USA).nes"
SET "patched_rom=%out_folder%\%file_base%.nes"
SET "asm_file=code\main.asm"
SET "checksum=353489a57f24a429572e76bd455bc51d821f7036"

:: Check if the base ROM exists
IF NOT EXIST "%clean_rom%" (
	set errormessage=Base ROM was not found. Place the "%clean_rom%" ROM inside the 'rom' folder, or name your Base ROM accordingly.&goto error
)	ELSE (
	echo Base ROM detected. Checking SHA-1 hash...
)

:: Verification for the SHA-1 hash of the base ROM
setlocal enabledelayedexpansion
set /a count=1 
for /f "skip=1 delims=:" %%a in ('certutil -hashfile "%clean_rom%" SHA1') do (
  if !count! equ 1 set "sha1=%%a"
  set/a count+=1
)
set "sha1=%sha1: =%

IF "%sha1%"=="%checksum%" (
	echo Base ROM SHA-1 checksum verified. Patching...
)	ELSE (
	set errormessage=Base ROM checksum is incorrect. Use a Zelda 2 ROM with the proper SHA-1 checksum for patching.&goto error
)

endlocal

:: Check if out folder exists and delete any remnant patched ROMs
IF NOT EXIST "%out_folder%" MKDIR "%out_folder%"
IF EXIST "%patched_rom%" DEL "%patched_rom%"

COPY "%clean_rom%" "%patched_rom%" >NUL
if %errorlevel% NEQ 0 set errormessage=Could not copy file.&goto error

:: Patch the Base ROM and create an IPS alongside the patched ROM
bin\xkas.exe -o "%patched_rom%" "%asm_file%"
if %errorlevel% NEQ 0 set errormessage=Could not patch rom.&goto error
bin\flips.exe --create --ips "%clean_rom%" "%patched_rom%" "%patches_folder%\%file_base%.ips">NUL
if %errorlevel% NEQ 0 set errormessage=Could not create ips.&goto error

goto theend

:error
echo.
echo.ERROR: %errormessage%
echo.
pause
exit

:theend
echo Done.
if %dopause% NEQ 0 pause
