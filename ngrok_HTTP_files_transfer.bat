@echo off
title ngrok_HTTP_files_transfer.bat
color 0a
mode con lines=20 cols=150
goto :IFs_verify
:IFs_verify
if exist "%userprofile%\directory_HTTP" (goto :ngrok_files_transfer)
if not exist "%userprofile%\directory_HTTP" (goto :create_path)
:create_path
cd %userprofile%
mkdir directory_HTTP
goto :IFs_verify
:ngrok_files_transfer
cd %userprofile%
set file="file:///%userprofile%\directory_HTTP"
for %%a in (%file%) do (call ngrok http %%a)
cmd /k
timeout /t 1 > nul
goto :exit
:exit
exit
