@echo off
title Matrix effect.bat
color 0a
mode con cols=122 lines=38
cls
goto :Matrix_effect
:Matrix_effect
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
goto :Matrix_effect
cls
goto :exit
:exit
exit
