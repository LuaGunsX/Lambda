@echo off
title Lambda a0.1 λ
:menu
cls
echo ============================
echo       PROJECT LAMBDA
echo        Alpha 0.0.1
echo ============================
echo 1) Download clients | 2) Config
echo 3) Launch instance | 4) About
echo 5) Leave
echo.
set /p choice=Select an option (1-5): 

if "%choice%"=="1" echo TBA
if "%choice%"=="2" notepad config.txt
if "%choice%"=="3" echo TBA
if "%choice%"=="4" goto about
if "%choice%"=="5" exit
goto menu

:about
echo Project Lambda is a revival-style launcher that can launch instances of ROBLOX.
pause
goto menu
