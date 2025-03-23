@echo off
title PuTTY.bat
color 0c
mode con cols=105 lines=30
goto :get_service_sshd
:get_service_sshd
for %%a in (%userprofile%) do (sc query sshd | find /i "sshd" > %%a\sc_query_sshd.tmp) > nul
if exist "%userprofile%\sc_query_sshd.tmp" (goto :read_service_sshd) else (goto :exit)
goto :get_service_sshd
:read_service_sshd
for /f "tokens=2 usebackq" %%b in (%userprofile%\sc_query_sshd.tmp) do (sc start %%b) > nul
goto :call_service_sshd
:call_service_sshd
set /p PuTTY="Host Name (or IP address): "
cls & timeout /t 1 > nul
for %%c in (%PuTTY%) do (call ssh %%c)
cmd /k
goto :exit
:exit
exit
