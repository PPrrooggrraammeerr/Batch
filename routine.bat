@echo off
title routine.py
color 0a
mode con cols=65 lines=17
setlocal enabledelayedexpansion
goto :loop_routine
:loop_routine
set "ProcessId="
start cmd /c "python3 routine.py" > nul
timeout /t 3600 /nobreak > nul
wmic process where "CommandLine like '%%routine.py%%'" get CommandLine, ProcessId /format:list > "%cd%\routine.txt"
for /f "tokens=1* delims==" %%r in (
'type routine.txt ^| findstr "ProcessId="') do (
set "ProcessId=%%s"
goto :break
)
:break
taskkill /fi "PID eq !ProcessId!" /t /f > nul
timeout /t 10 /nobreak > nul
goto :loop_routine
:exit
exit