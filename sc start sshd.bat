@echo off
title sc start sshd.bat
color 0c
mode con cols=65 lines=20
goto :sc_start_sshd
:sc_start_sshd
cls
timeout /t 1 > nul
for %%a in (sshd) do (sc start %%a)
timeout /t 1 > nul
cls
goto :Exit
:Exit
exit

