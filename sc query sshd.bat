@echo off
title sc query sshd.bat
color 0c
mode con cols=65 lines=20
goto :loop1
:loop1
cls
timeout /t 1 > nul
set loop1="%userprofile%\sc query sshd.txt"
for %%a in (%loop1%) do (sc query sshd | findstr "STATE" >> %%a)
timeout /t 1 > nul
cls
goto :loop2
:loop2
if exist %loop1% (
goto :loop3
) else (
goto :loop1
)
:loop3
cls
timeout /t 1 > nul
for /f "tokens=* usebackq" %%b in (%loop1%) do (echo %%b)
timeout /t 10 > nul
cls
goto :loop4
:loop4
del /f %loop1%
timeout /t 1 > nul
exit
