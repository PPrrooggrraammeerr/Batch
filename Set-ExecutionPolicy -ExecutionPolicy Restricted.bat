@echo off
title Set-ExecutionPolicy -ExecutionPolicy Restricted.bat
color 0a
mode con lines=20 cols=65
goto :Type_the_option1
:Type_the_option1
echo.
echo.
echo         ===============================================
echo        [                                               ]
echo        [        1) Checkr Get-ExecutionPolicy          ]
echo        [                                               ]
echo        [        2) Set-ExecutionPolicy_Restricted      ]
echo        [                                               ]
echo        [        3) Set-ExecutionPolicy_Unrestricted    ]
echo        [                                               ]
echo        [        4) Program finished                    ]
echo        [                                               ]
echo         ===============================================
echo.
echo.
goto :Type_the_option2
:Type_the_option2
set /p Type_the_option="Type the option: "
goto :IFs
:IFs
if %Type_the_option% equ 1 goto :Get-ExecutionPolicy
if %Type_the_option% equ 2 goto :Set-ExecutionPolicy_Restricted
if %Type_the_option% equ 3 goto :Set-ExecutionPolicy_Unrestricted
if %Type_the_option% equ 4 goto :Exit
goto :Type_the_option1
:Get-ExecutionPolicy
cls
timeout /t 1 > nul
Cmd.exe /c "PowerShell.exe -Command Get-ExecutionPolicy" 
timeout /t 10 > nul
cls
goto :Type_the_option1
:Set-ExecutionPolicy_Restricted
cls
timeout /t 1 > nul
Cmd.exe /c "PowerShell.exe -Command Set-ExecutionPolicy -ExecutionPolicy Restricted"
timeout /t 1 > nul
cls
goto :Exit
:Set-ExecutionPolicy_Unrestricted
cls
timeout /t 1 > nul
Cmd.exe /c "PowerShell.exe -Command Set-ExecutionPolicy -ExecutionPolicy Unrestricted"
timeout /t 1 > nul
cls
goto :Exit
:Exit
exit