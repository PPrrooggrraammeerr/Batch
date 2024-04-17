@echo off
title Administrator mode ENABLE or DESABLE.bat
mode con cols=46 lines=11
color 0a
goto :menu
:menu
echo.
echo     =====================================
echo    *                                     *
echo    *    1 - Administrator mode ENABLE    *
echo    *                                     *
echo    *    2 - Administrator mode DISABLE   *
echo    *                                     *
echo     =====================================
echo.
goto :type_the_options
:type_the_options
set /p type_the_options="Type the option: "
goto :IFs
:IFs
if %type_the_options% == 1 goto :Administrator_mode_ENABLE
if %type_the_options% == 2 goto :Administrator_mode_DISABLE
goto :exit
:Administrator_mode_ENABLE
cls
timeout /t 1 > nul
set Enable_Administrator="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
for %%b in (%Enable_Administrator%) do (reg add %%b /v EnableLUA /t REG_DWORD /d 0x1)
timeout /t 1 > nul
cls
goto :exit
:Administrator_mode_DISABLE
cls
timeout /t 1 > nul
set Disable_Administrator="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
for %%b in (%Disable_Administrator%) do (reg add %%b /v EnableLUA /t REG_DWORD /d 0x0)
timeout /t 1 > nul
cls
goto :exit
:exit
exit