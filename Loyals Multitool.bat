@echo off
title TURN ON ADMIN - Loyal
chcp 65001 >nul
color 5
:start
call :banner

:menu
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
echo.
echo MAKE SURE ADMINISTRATOR IS ON
echo [38;2;255;255;0m        ╔═(1) Lag Fix - MAKE SURE TO RESTART PC AFTER RUNNING COMMAND
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠══(2) FPS - Scans all protected system files, and replace corrupted files with a cached copy
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╠═══(3) Comming soon  
echo [38;2;255;255;0m        ║[0m  
echo [38;2;255;255;0m        ╚╦═══(4) Comming soon
echo [38;2;255;255;0m         ║[0m  
set /p input=.%BS% [38;2;255;255;0m        ╚══════^>[0m
if /I %input% EQU 1 goto :LagFix
if /I %input% EQU LagFix goto :LagFix
if /I %input% EQU FPS goto :FPS
if /I %input% EQU 2 goto :FPS
cls
goto start

:FPS
cls
echo Please note this may take a while
pause
cls
sfc /scannow
goto :menu

:LagFix
color 5
cls
echo Make sure to restart PC after running Lag Fixer Command
timeout 5
cls
ipconfig /flushdns
color 2
cls
echo Task complete!
pause
cls
call :banner
goto :menu


:banner
echo.
echo.
echo                     [38;2;255;0;0m███╗   ███╗██╗   ██╗██╗  ████████╗██╗    ████████╗ ██████╗  ██████╗ ██╗[0m     
echo                     [38;2;255;51;0m████╗ ████║██║   ██║██║  ╚══██╔══╝██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     [0m
echo                     [38;2;255;102;0m██╔████╔██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║    [0m 
echo                     [38;2;255;153;0m██║╚██╔╝██║██║   ██║██║     ██║   ██║       ██║   ██║   ██║██║   ██║██║     [0m
echo                     [38;2;255;204;0m██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║       ██║   ╚██████╔╝╚██████╔╝███████╗[0m
echo                     [38;2;255;255;0m╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝[0m
echo.