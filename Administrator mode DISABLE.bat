@echo off
title Administrator mode DISABLE.bat
color 0a
mode con lines=19 cols=69
goto :IFs
:IFs
cls
timeout /t 0 > nul
set Disable_Administrator="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
for %%b in (%Disable_Administrator%) do (reg add %%b /v EnableLUA /t REG_DWORD /d 0x0)
timeout /t 10 > nul
cls
goto :exit
:exit
exit
