@echo off
title Folder lock with PASSWORD.bat
color 0c
mode con cols=70 lines=15
goto :IFs
:IFs
cls
timeout /t 0 > nul
if exist "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" (goto :loop3)
if not exist Lock_or_Unlock (goto :loop6)
goto :loop1
:loop1
cls
timeout /t 0 > nul
set /p Lock_or_Unlock1="Want to lock the folder Lock_or_Unlock ? (Yy/Nn): "
if %Lock_or_Unlock1%==Y goto :loop2
if %Lock_or_Unlock1%==y goto :loop2
if %Lock_or_Unlock1%==N goto :exit
if %Lock_or_Unlock1%==n goto :exit
goto :loop1
:loop2
cls
timeout /t 0 > nul
for %%a in (Lock_or_Unlock) do (ren %%a "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" > nul)
for %%b in ("Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}") do (attrib +h +s %%b > nul)
goto :exit
:loop3
cls
timeout /t 0 > nul
set /p Lock_or_Unlock2="Enter the password: "
if not %Lock_or_Unlock2%==password (goto :loop5)
goto :loop4
:loop4
cls
timeout /t 0 > nul
for %%c in ("Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}") do (attrib -h -s %%c > nul)
for %%d in ("Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}") do (ren %%d Lock_or_Unlock > nul)
goto :exit
:loop5
cls
timeout /t 0 > nul
echo Incorrect password
timeout /t 10 > nul
goto :exit
:loop6
cls
timeout /t 0 > nul
for %%e in (Lock_or_Unlock) do (call mkdir %%e)
goto :exit
:exit
exit
