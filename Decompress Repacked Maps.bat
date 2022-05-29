@echo off
TITLE BSPZIP -REPACK (Files can be dragged onto this instead of typing)
set /P gamer=Enter map file location (you can just drag map onto window): 
echo Ready to crash.
set filepath=%gamer%
for /F "delims=" %%i in (%filepath%) do set dirname="%%~dpi" 
for /F "delims=" %%i in (%filepath%) do set filename="%%~nxi"
echo %dirname%
echo %filename%
move %gamer% "C:\Program Files (x86)\Steam\steamapps\common\Team Fortress 2\bin"
"C:\Program Files (x86)\Steam\steamapps\common\Team Fortress 2\bin\bspzip.exe" -game "C:\Program Files (x86)\Steam\steamapps\common\Team Fortress 2\tf" -repack %filename%
move %filename% %dirname%
pause
