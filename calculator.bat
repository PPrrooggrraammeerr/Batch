@echo off
title calculator.bat
color 0a
mode con cols=100 lines=25
goto :Type_the_OPERATION
:Type_the_OPERATION
cls
timeout /t 1 > nul
set /p Type_the_OPERATION="Type the operation (+, -, *, /) you want to perform or e/E to exit: "
timeout /t 1 > nul
cls
goto :IFs_OPERATIONS
:IFs_OPERATIONS
cls
timeout /t 1 > nul
if %Type_the_OPERATION% == + goto :OPERATION_adição
if %Type_the_OPERATION% == - goto :OPERATION_subtração
if %Type_the_OPERATION% == * goto :OPERATION_multiplicação
if %Type_the_OPERATION% == / goto :OPERATION_divisão
if %Type_the_OPERATION% == e goto :exit
if %Type_the_OPERATION% == E goto :exit
timeout /t 1 > nul
cls
goto :Type_the_OPERATION
:OPERATION_adição
cls
timeout /t 1 > nul
set /p Type_the_OPERATION1="Type first number: "
timeout /t 1 > nul
cls
timeout /t 1 > nul
set /p Type_the_OPERATION2="Type second number: "
timeout /t 1 > nul
cls
goto :result_adição
:result_adição
cls
timeout /t 1 > nul
set /a result_adição=%Type_the_OPERATION1% + %Type_the_OPERATION2%
echo %result_adição%
timeout /t 10 > nul
cls
goto :Type_the_OPERATION
:OPERATION_subtração
cls
timeout /t 1 > nul
set /p Type_the_OPERATION1="Type first number: "
timeout /t 1 > nul
cls
timeout /t 1 > nul
set /p Type_the_OPERATION2="Type second number: "
timeout /t 1 > nul
cls
goto :result_subtração
:result_subtração
cls
timeout /t 1 > nul
set /a result_subtração=%Type_the_OPERATION1% - %Type_the_OPERATION2%
echo %result_subtração%
timeout /t 10 > nul
cls
goto :Type_the_OPERATION
:OPERATION_multiplicação
cls
timeout /t 1 > nul
set /p Type_the_OPERATION1="Type first number: "
timeout /t 1 > nul
cls
timeout /t 1 > nul
set /p Type_the_OPERATION2="Type second number: "
timeout /t 1 > nul
cls
goto :result_multiplicação
:result_multiplicação
cls
timeout /t 1 > nul
set /a result_multiplicação=%Type_the_OPERATION1% * %Type_the_OPERATION2%
echo %result_multiplicação%
timeout /t 10 > nul
cls
goto :Type_the_OPERATION
:OPERATION_divisão
cls
timeout /t 1 > nul
set /p Type_the_OPERATION1="Type first number: "
timeout /t 1 > nul
cls
timeout /t 1 > nul
set /p Type_the_OPERATION2="Type second number: "
timeout /t 1 > nul
cls
goto :result_divisão
:result_divisão
cls
timeout /t 1 > nul
set /a result_divisão=%Type_the_OPERATION1% / %Type_the_OPERATION2%
echo %result_divisão%
timeout /t 10 > nul
cls
goto :Type_the_OPERATION
:exit
exit
