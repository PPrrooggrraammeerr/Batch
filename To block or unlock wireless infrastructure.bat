@echo off
title To block or unlock wireless infrastructure
mode con cols=41 lines=11
color 0a
goto :menu
:menu
echo.
echo     ================================
echo    *                                *
echo    *    1 - Block infrastructure    *
echo    *                                *
echo    *    2 - Unlock infrastructure   *
echo    *                                *
echo     ================================
echo.
goto :type_the_options
:type_the_options
set /p type_the_options="Type the option: "
goto :IFs
:IFs
if %type_the_options% == 1 goto :block_infrastructure
if %type_the_options% == 2 goto :unlock_infrastructure
goto :exit
:block_infrastructure
netsh wlan add filter permission="denyall" networktype=infrastructure > nul
timeout /t 1 > nul
cls
echo Locked down wireless infrastructure
timeout /t 10 > nul
goto :exit
:unlock_infrastructure
netsh wlan delete filter permission="denyall" networktype=infrastructure > nul
timeout /t 1 > nul
cls
echo Unlocked wireless infrastructure
timeout /t 10 > nul
goto :exit
:exit
exit