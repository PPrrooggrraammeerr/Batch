@echo off
title separating bytes to decode.bat
color 0a
mode con cols=65 lines=25
goto :IFs
:IFs
if exist "%userprofile%\Desktop\messy_bytes.txt" (goto :separating_bytes_to_decode)
if not exist "%userprofile%\Desktop\messy_bytes.txt" (goto :messy_bytes)
goto :messy_bytes
:messy_bytes
cls
timeout /t 1 > nul
for %%# in ("48 65 6C 6C 6F 2C 20 57 6F 72 6C 64 21") do (echo %%#) >> "%userprofile%\Desktop\messy_bytes.txt"
timeout /t 1 > nul
cls
goto :exit
goto :separating_bytes_to_decode
:separating_bytes_to_decode
cls
timeout /t 1 > nul
for /f "tokens=2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17 usebackq" %%a in ("%userprofile%\Desktop\messy_bytes.txt") do (echo %%a %%b %%c %%d %%e %%f %%g %%h %%i %%j %%k %%l %%m %%n %%o %%p) >> "%userprofile%\Desktop\separated_bytes.txt"
echo separating bytes to decode...
timeout /t 10 > nul
goto :exit
:exit
exit