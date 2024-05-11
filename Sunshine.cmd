@echo off
title Sunshine

set "shinefolder="

for /d %%y in ("%localappdata%\Roblox\Versions\*") do (
    if exist "%%y\RobloxPlayerBeta.exe" (
        set "shinefolder=%%y"
        goto :shiny
    )
)

for /d %%y in ("C:\Program Files\Roblox\Versions\*") do (
    if exist "%%y\RobloxPlayerBeta.exe" (
        set "shinefolder=%%y"
        goto :shiny
    )
)

for /d %%y in ("C:\Program Files (x86)\Roblox\Versions\*") do (
    if exist "%%y\RobloxPlayerBeta.exe" (
        set "shinefolder=%%y"
        goto :shiny
    )
)

:shiny
if defined shinefolder (
    if not exist "%shinefolder%\ClientSettings" (
        mkdir "%shinefolder%\ClientSettings"
    )
)

:nyaan
cls
echo =================================
echo            Sunshine
echo Copyright (c) 2024 by nulacorrupted.
echo       All rights reserved.
echo =================================
echo [1] Default Performance
echo.
echo [2] Ultra Performance
echo.
echo [3] Remove Sunshine
echo.
echo [4] Contact Nula on Discord
echo.
echo [5] Exit
echo =================================
echo.
set /p opt="Enter your choice: "
if /i "%opt%"=="1" (
  goto :plan1
)
if /i "%opt%"=="2" (
  goto :plan2
)
if /i "%opt%"=="3" (
  goto :remove
)
if /i "%opt%"=="4" (
  goto :nula
)
if /i "%opt%"=="5" (
  goto quit
)
echo Invalid choice:( Please try again.
pause
goto :nyaan

:plan1
powershell.exe -Command "& {(New-Object System.Net.WebClient).DownloadFile('https://pastebin.com/raw/4Ru0hLqK', '%shinefolder%\ClientSettings\ClientAppSettings.json')}"
if "%errorlevel%" equ "0" (
    cls
    echo Successfully Optimize Roblox!
    echo.
    pause
    goto :nyaan
) else (
    echo Failed Optimize Roblox!
    echo.
    echo Please report this issue to nula!
    echo.
    echo @nulacorrupted
    pause
    goto :nyaan
)

:plan2
powershell.exe -Command "& {(New-Object System.Net.WebClient).DownloadFile('https://pastebin.com/raw/8AJfaEA9', '%shinefolder%\ClientSettings\ClientAppSettings.json')}"
if "%errorlevel%" equ "0" (
    cls
    echo Successfully Optimize Roblox!
    echo.
    pause
    goto :nyaan
) else (
    echo Failed Optimize Roblox!
    echo.
    echo Please report this issue to nula!
    echo.
    echo @nulacorrupted
    pause
    goto :nyaan
)

:remove
cls
set /p continued="Your client settings will be removed, are you sure you want to continue (y/n): "
if /i "%continued%"=="y" (
    if exist "%shinefolder%\ClientSettings" (
        rmdir "%shinefolder%\ClientSettings" /s /q
        echo You've removed your client settings.
        pause
        goto :nyaan
    )
) else (
    if /i "%continued%"=="n" (
        pause
        goto :nyaan
    )
)

:nula
cls
echo Nula's discord user: nulacorrupted
echo If you have any question about Sunshine, please DM nula!
pause
goto :nyaan

:quit
exit
