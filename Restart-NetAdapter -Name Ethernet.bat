@echo off
title Restart -NetAdapter -Name Ethernet.bat
color 0a
mode con cols=130 lines=30
goto :Restart-NetAdapter
:Restart-NetAdapter
Cmd.exe /c "PowerShell.exe -Command Restart-NetAdapter -Name Ethernet"
goto :Exit
:Exit
exit
