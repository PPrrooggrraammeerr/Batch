@echo off
title enable_or_disable_net_adapter.bat
color 0a
mode con lines=20 cols=65
goto :enable_or_disable_net_adapter
:enable_or_disable_net_adapter
cmd /c "PowerShell.exe -Command $enable_or_disable_net_adapter = Get-NetAdapter -Name Ethernet; if ($enable_or_disable_net_adapter.Status -eq 'Up') {Stop-Process -Name cmd -Force -Verbose -ErrorAction SilentlyContinue} elseif ($enable_or_disable_net_adapter.Status -eq 'Disabled') {Enable-NetAdapter -Name Ethernet -Verbose -ErrorAction SilentlyContinue}"
timeout /t 1 > nul
:exit
exit