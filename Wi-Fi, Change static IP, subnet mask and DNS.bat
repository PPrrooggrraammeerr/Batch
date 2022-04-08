@echo off
title Change static IP, subnet mask and DNS.bat
color 0c
mode con cols=105 lines=30
goto :loop1
:loop1
cls
set /p Type_the_static_IP="Type the static IP: "
timeout /t 1 > nul
cls
set /p Type_the_subnet_mask="Type the subnet mask: "
timeout /t 1 > nul
cls
set /p Type_the_Default_Gateway="Type the Default Gateway: "
timeout /t 1 > nul
cls
set /p Type_the_DNS="Type the DNS: "
timeout /t 1 > nul
cls
goto :loop3
:loop3
cls
for %%a in (%Type_the_static_IP%) do (netsh interface ipv4 set address name=Wi-Fi static %%a %Type_the_subnet_mask% %Type_the_Default_Gateway%) > nul
timeout /t 1 > nul
cls
for %%b in (%Type_the_DNS%) do (netsh interface ipv4 add dnsservers name=Wi-Fi %%b) > nul
timeout /t 1 > nul
cls
goto :loop4
:loop4
exit
