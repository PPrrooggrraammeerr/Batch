@echo off
title ngrok_files_transfer.bat
color 0a
mode con lines=20 cols=150
goto :ngrok_files_transfer
:ngrok_files_transfer
cd %userprofile%
timeout /t 1 > nul
set file="file:///%userprofile%\Desktop\ngrok"
for %%a in (%file%) do (call ngrok http %%a)
cmd /k
timeout /t 1 > nul
goto :exit
:exit
exit
