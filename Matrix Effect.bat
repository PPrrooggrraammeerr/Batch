@echo off
title Matrix Effect.bat
color 0a
mode con cols=122 lines=38
cls
goto :Matrix_Effect
:Matrix_effect
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
goto :Matrix_Effect
cls
goto :exit
:exit
exit
