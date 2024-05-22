@echo off
title Screen Logger.bat
color 0c
mode con cols=41 lines=1
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
if exist %screenshots% (
:verification
set screenshot=%random%
if exist %screenshots%\%screenshot%.png (goto :verification)
cd %userprofile%\nircmd-x64 & nircmd.exe savescreenshot %screenshots%\%random%.png & timeout /t 10 > nul & goto :screenshots) else (
if not exist %userprofile%\nircmd-x64\screenshots (mkdir %screenshots% & goto :screenshots)
)
goto :exit
:exit
exit
