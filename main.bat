@echo off
title Lambda ^| λ

:menu
cls
echo ============================
echo       PROJECT LAMBDA
echo        Nightly v0.1
echo ============================
echo 1) Download clients (WIP)
echo 2) Config
echo 3) Launch instance (WIP)
echo 4) About
echo 5) Customize avatar (WIP)
echo 6) Help
echo 7) Leave
echo.
set /p choice=Select an option (1-7): 

if "%choice%"=="1" goto download
if "%choice%"=="2" goto config
if "%choice%"=="3" goto launch
if "%choice%"=="4" goto about
if "%choice%"=="5" goto avatar
if "%choice%"=="6" goto help
if "%choice%"=="7" goto exit
goto menu

:download
cls
echo ------------------------------
echo    Client Downloader 5000
echo ------------------------------
echo 1) 2008M
echo 2) 2014M
echo.

set /p choice="Select a client (1-2): "

if "%choice%"=="1" (
    echo Downloading 2008M...
    curl -o 2008M.zip https://lambda.luagunsx.xyz/clients/2008M.zip
    mkdir ./clients/
    "C:\Program Files\7-Zip\7z.exe" x 2008M.zip -oclients\2008M\ -y
) else if "%choice%"=="2" (
    echo Downloading 2014M...
    REM Not added yet
) else (
    echo Invalid choice.
)

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
echo Version Alpha 0.0.2
pause
goto menu

:avatar
echo This feature is not here yet!
pause
goto menu

:help
start https://github.com/LuaGunsX/Lambda/wiki/Troubleshooting
pause
goto menu

:exit
echo Goodbye! Hope to see you soon!
pause
exit
