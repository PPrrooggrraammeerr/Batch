@echo off
title open_file_in_browser.bat
color 0a
chcp 65001 > nul
start chrome.exe /d "%userprofile%\file.pdf" > nul
timeout /t 10 > nul
exit