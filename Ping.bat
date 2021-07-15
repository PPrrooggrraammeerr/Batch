@echo off
title Ping.bat
color 0a
mode con cols=80 lines=20
goto :Ping1.bat
:Ping1.bat
cls
timeout /t 0 > nul
set /p Ping.bat="Type IP or host or e / E to exit: "
timeout /t 0 > nul
cls
goto :IFs
:IFs
cls
timeout /t 0 > nul
if %Ping.bat% == e (
goto :Ping3.bat
)
if %Ping.bat% == E (
goto :Ping3.bat
)
timeout /t 0 > nul
cls
goto :Ping2.bat
:Ping2.bat
cls
timeout /t 0 > nul
for %%# in (%Ping.bat%) do (ping %%# -n 10)
timeout /t 10 > nul
cls
goto :Ping1.bat
:Ping3.bat
exit
