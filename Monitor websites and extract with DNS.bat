@echo off
title Monitor websites and extract with DNS.bat
mode con cols=79 lines=19
color 0a
goto :get_log_the_display_dns
:get_log_the_display_dns
set displaydns=%cd%\displaydns.tmp
ipconfig /displaydns | findstr /i "\.com" > %displaydns%
for /f "tokens=*" %%@ in (%displaydns%) do (
setlocal enabledelayedexpansion
set domains=
for %%# in (%%@) do (
set domains=%%#
)
for %%d in (%cd%\domains.tmp) do (echo !domains! | findstr /i "\.com") >> %%d
)
endlocal
)
del /q %displaydns%
if exist %cd%\domains.tmp (cmd /c powershell.exe -command "Get-Content %cd%\domains.tmp | Select-Object -Unique | ForEach-Object {Write-Host $_}")
if not exist %cd%\domains.tmp (goto :exit)
del /q %cd%\domains.tmp
pause > nul
:exit
exit