@echo off
title start program.bat
color 0c
mode con cols=65 lines=20
goto :start_program
:start_program
cls
timeout /t 0 > nul
set /p start_program="start program: "
timeout /t 0 > nul
start %start_program%
timeout /t 0 > nul
cls
goto: exit
:exit
exit
