@echo off
title Top 10 information basics about your PC.bat
color 0a
mode con cols=100 lines=25
goto :Top_10_information_basics_about_your_PC
:Top_10_information_basics_about_your_PC
cls
timeout /t 0 > nul
echo Top 10 information basics about your PC
timeout /t 10 > nul
cls
goto :top1
:top1
cls
timeout /t 0 > nul
echo Mainboard informations:
echo.
wmic baseboard list brief
timeout /t 10 > nul
goto :top2
:top2
cls
timeout /t 0 > nul
echo CPU informations:
echo.
wmic cpu get name
timeout /t 10 > nul
cls
goto :top3
:top3
cls
timeout /t 0 > nul
echo RAM memory informations:
echo.
wmic memorychip get banklabel, devicelocator, capacity, speed
timeout /t 10 > nul
cls
goto :top4
:top4
cls
timeout /t 0 > nul
echo OS informations:
echo.
wmic os get caption, osarchitecture
timeout /t 10 > nul
cls
goto :top5
:top5
cls
timeout /t 0 > nul
echo HDD first informations:
echo.
wmic diskdrive get model, size
timeout /t 10 > nul
cls
goto :top6
:top6
cls
timeout /t 0 > nul
echo HDD secundary informations:
echo.
wmic logicaldisk get name, size
timeout /t 10 > nul
cls
goto :top7
:top7
cls
timeout /t 0 > nul
echo Sound informations:
echo.
wmic sounddev get Caption
timeout /t 10 > nul
cls
goto :top8
:top8
cls
timeout /t 0 > nul
echo Software informations:
echo.
wmic product get name, version
timeout /t 10 > nul
cls
goto :top9
:top9
cls
timeout /t 0 > nul
echo Video informations:
echo.
wmic path win32_VideoController get name 
timeout /t 10 > nul
cls
goto :top10
:top10
cls
timeout /t 0 > nul
echo NIC informations:
echo.
wmic nic get caption
timeout /t 10 > nul
cls
goto :exit
:exit
exit

