@echo off
title wsl.bat
color 0c
mode con cols=89 lines=29
goto :loop
:loop
cls
echo.
echo  ----------------------
echo *      1 - list        *
echo *      2 - install     *
echo  ----------------------
echo.
set /p option="Type the option: "
if %option% == 1 (
goto :list
) else (
if %option% == 2 (goto :install)
)
::
cls
echo Invalid option!
timeout /t 10 > nul
goto :loop
:list
cls
call powershell.exe -Command "wsl --list --online"
timeout /t 10 > nul
goto :loop
:install
cls
set /p distribution="Distro: "
echo .
for %%i in (%distribution%) do (call powershell.exe -Command "wsl --install -d %%i")
timeout /t 10 > nul
goto :loop
:exit
exit