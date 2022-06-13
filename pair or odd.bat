@echo off
title pair or odd.bat
color 0a
mode con lines=19 cols=69
goto :pair_or_odd
:pair_or_odd
cls
timeout /t 1 > nul
set /p Type_the_number="Type the number: "
timeout /t 1 > nul
set /a pair_or_odd=%Type_the_number% %%2
if %pair_or_odd% == 0 (
goto :number_is_pair
) else (
goto :number_is_odd
)
timeout /t 1 > nul
cls
goto :pair_or_odd
:number_is_pair
cls
timeout /t 1 > nul
echo Number %Type_the_number% is pair
timeout /t 10 > nul
goto :exit
:number_is_odd
cls
timeout /t 1 > nul
echo Number %Type_the_number% is odd
timeout /t 10 > nul
goto :exit
:exit
exit
