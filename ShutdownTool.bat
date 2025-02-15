cls
@echo off
chcp 65001 >nul
title Shutdown-Tool Made by @theejacob101 on GitHub
color a

echo.
echo ███████╗██╗  ██╗██╗   ██╗████████╗     ██████╗  ██████╗ ██╗    ██╗███╗   ██╗   ████████╗ ██████╗  ██████╗ ██╗     
echo ██╔╝╝╝╝╝██║  ██║██║   ██║╚╝╝██╔╝╝╝     ██╔╝╝██╗██╔╝╝╝██╗██║    ██║████╗  ██║   ╚╝╝██╔╝╝╝██╔╝╝╝██╗██╔╝╝╝██╗██║     
echo ███████╗███████║██║   ██║   ██║        ██║  ██║██║   ██║██║ █╗ ██║██╔██╗ ██║█████╗██║   ██║   ██║██║   ██║██║     
echo ╚╝╝╝╝██║██╔╝╝██║██║   ██║   ██║        ██║  ██║██║   ██║██║███╗██║██║╚██╗██║╚╝╝╝╝╝██║   ██║   ██║██║   ██║██║     
echo ███████║██║  ██║╚██████╔╝   ██║███████╗██████╔╝╚██████╔╝╚███╔███╔╝██║ ╚████║      ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚╝╝╝╝╝╝╝╚╝╝  ╚╝╝ ╚╝╝╝╝╝╝    ╚╝╝╚╝╝╝╝╝╝╝╚╝╝╝╝╝╝  ╚╝╝╝╝╝╝  ╚╝╝╝╚╝╝╝ ╚╝╝  ╚╝╝╝╝      ╚╝╝    ╚╝╝╝╝╝╝  ╚╝╝╝╝╝╝ ╚╝╝╝╝╝╝╝       

echo.
echo.
echo.
echo Shutdown-Tool can be used to shutdown a PC with a set amount of time.
echo.
pause
echo.
echo.
echo Enter the type of shutdown you would like to do.
echo.

echo /s Shutdown this device
echo /r Restart this device
echo /h Hibernate this device
echo /l Log off
echo Or "." to set to /s
echo.

set /p ShutdownType=

if /I %ShutdownType% EQU . set ShutdownType=/s

echo Type the amount of time you would like the shutdown to delay
echo.

set /p delay=

pause
shutdown %ShutdownType% /t %delay%
echo The command %ShutdownType% /t %delay% has run
echo Do you want to abort the shutdown? (Y/N)
choice
if /I %ERRORLEVEL% EQU 1 shutdown /a
if /I %ERRORLEVEL% EQU 2 echo Not aborting...
timeout /t 1 /nobreak