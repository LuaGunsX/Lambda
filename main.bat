@echo off
title Lambda a0.1 ^| λ

:menu
cls
echo ============================
echo       PROJECT LAMBDA
echo        Alpha 0.0.1
echo ============================
echo 1) Download clients
echo 2) Config
echo 3) Launch instance
echo 4) About
echo 5) Leave
echo.
set /p choice=Select an option (1-5): 

if "%choice%"=="1" goto download
if "%choice%"=="2" goto config
if "%choice%"=="3" goto launch
if "%choice%"=="4" goto about
if "%choice%"=="5" goto exit
goto menu

:download
echo Downloading clients is not yet available.
pause
goto menu

:config
if not exist config.txt (
    echo # Project Lambda Config > config.txt
)
notepad config.txt
goto menu

:launch
echo This feature is not here yet!
pause
goto menu

:about
echo Project Lambda is a revival-style launcher that can launch instances of ROBLOX.
echo Version Alpha 0.0.1
pause
goto menu

:exit
echo Goodbye.
pause
exit
