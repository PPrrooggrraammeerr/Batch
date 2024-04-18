@echo off
title Screen Logger.bat
color 0c
goto :IFs
:IFs
if exist %userprofile%\nircmd-x64 (goto :screenshots)
if not exist %userprofile%\nircmd-x64 (goto :nircmd)
goto :IFs
:nircmd
if exist %userprofile%\nircmd-x64.zip (cmd /k "powershell.exe -command Expand-Archive -Path \"$env:USERPROFILE\nircmd-x64.zip\" -DestinationPath \"$env:USERPROFILE\nircmd-x64\" & exit" > nul)
if not exist %userprofile%\nircmd-x64.zip (cmd /k "powershell.exe -command Invoke-WebRequest -UseBasicParsing -Uri https://www.nirsoft.net/utils/nircmd-x64.zip -OutFile \"$env:USERPROFILE\nircmd-x64.zip\" & exit" & cmd /k "powershell.exe -command Expand-Archive -Path \"$env:USERPROFILE\nircmd-x64.zip\" -DestinationPath \"$env:USERPROFILE\nircmd-x64\" & exit" > nul)
goto :screenshots
:screenshots
set screenshots=%userprofile%\nircmd-x64\screenshots
if exist %userprofile%\nircmd-x64\screenshots (
cd %userprofile%\nircmd-x64 & nircmd.exe savescreenshot %screenshots%\%random%.png & timeout /t 10 > nul & goto :screenshots) else (
if not exist %userprofile%\nircmd-x64\screenshots (mkdir %screenshots% & goto :screenshots)
)
