@echo off
title Show all Wi-Fi PASSWORDS.bat
color 0c
mode con cols=65 lines=20
goto :loop1
:loop1
cls
timeout /t 1 > nul
setlocal enabledelayedexpansion
for /f "tokens=2delims=:" %%# in ('netsh wlan show profile ^|findstr ":"') do (
set "SSID=%%~#" 
call :loop2 "%%SSID:~1%%"
)
:loop2
set "SSID=%*"
for /f "tokens=2delims=:" %%$ in ('netsh wlan show profile name^="%SSID:"=%" key^=clear ^| findstr /C:"Key Content"') do echo SSID: %SSID% PASSWORD: %%$
timeout /t 1 > nul
goto :loop3
:loop3
timeout /t 1 > nul
