@echo off
title SSID_and_BSSID.bat
color 0a
mode con cols=100 lines=35
goto :IFs
:IFs
cls
timeout /t 1 > nul
if exist "%userprofile%\SSID_and_BSSID.txt" (
goto :SSID_and_BSSID2
) 
if not exist "%userprofile%\SSID_and_BSSID.txt" (
goto :SSID_and_BSSID1
)
goto :IFs
:SSID_and_BSSID1
cls
timeout /t 1 > nul
set SSID_and_BSSID1="%userprofile%"
for %%a in (%SSID_and_BSSID1%) do (netsh wlan show networks MODE=BSSID | find /i "SSID" >> %%a\SSID_and_BSSID.txt) 
timeout /t 1 > nul
cls
goto :SSID_and_BSSID2
:SSID_and_BSSID2
cls
timeout /t 1 > nul
set SSID_and_BSSID2="%userprofile%\SSID_and_BSSID.txt"
for /f "tokens=* usebackq" %%b in (%SSID_and_BSSID2%) do (echo %%b)
timeout /t 60 > nul
cls
goto :Exit
:Exit
exit