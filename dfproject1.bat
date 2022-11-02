@echo off
title https://dfproject1.000webhostapp.com/
color 0c
mode con cols=65 lines=25
goto :dfproject1
:dfproject1
cls
timeout /t 0 > nul
for %%a in (https://dfproject1.000webhostapp.com/) do (start %%a) > nul
timeout /t 0 > nul
cls
goto :exit
:exit
exit