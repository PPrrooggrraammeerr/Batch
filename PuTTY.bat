@echo off
title PuTTY.bat
color 0c
mode con cols=105 lines=30
goto :PuTTY1.bat
:PuTTY1.bat
cls
timeout /t 0 > nul
for %%a in (%userprofile%) do (sc query sshd | find /i "sshd" >> %%a\sc_query_sshd.txt) > nul
if exist "%userprofile%\sc_query_sshd.txt" (
goto :PuTTY2.bat
) else (goto :PuTTY4.bat)
timeout /t 0 > nul
cls
goto :PuTTY2.bat
:PuTTY2.bat
cls
timeout /t 0 > nul
for /f "tokens=2 usebackq" %%b in (%userprofile%\sc_query_sshd.txt) do (sc start %%b) > nul
timeout /t 0 > nul
cls
goto :PuTTY3.bat
:PuTTY3.bat
cls
timeout /t 0 > nul
set /p PuTTY1.bat="Host Name (or IP address): "
timeout /t 1 > nul
cls
for %%c in (%PuTTY1.bat%) do (call ssh %%c)
cmd /k
timeout /t 0 > nul
cls
goto :PuTTY4.bat
:PuTTY4.bat
exit