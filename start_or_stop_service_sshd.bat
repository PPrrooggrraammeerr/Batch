@echo off
title start_or_stop_service_sshd.bat
color 0a
mode con lines=20 cols=65
goto :start_or_stop_service_sshd
:start_or_stop_service_sshd
cmd /c "PowerShell.exe -Command $service_sshd = Get-Service -Name sshd; if ($service_sshd.Status -eq 'Running') {Stop-Process -Name cmd -Force -Verbose -ErrorAction SilentlyContinue} elseif ($service_sshd.Status -eq 'Stopped') {Start-Service -Name sshd -Verbose -ErrorAction SilentlyContinue}"
timeout /t 1 > nul
:exit
exit
