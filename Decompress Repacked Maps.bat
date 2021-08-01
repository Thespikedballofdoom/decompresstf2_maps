@echo off
TITLE BSPZIP -REPACK (Files can be dragged onto this instead of typing)
set /P gamer=Enter map file location (you can just drag map onto window): 
"C:\Program Files (x86)\Steam\steamapps\common\Team Fortress 2\bin\bspzip.exe" -repack %gamer%
