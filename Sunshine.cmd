@echo off
title Sunshine
echo Sunshine was found and maintained by nula
echo.
echo (C) Sunshine, Copyright By nula. All rights reserved.

set "shinefolder="

for /d %%y in ("%localappdata%\Roblox\Versions\*") do (
    if exist "%%y\RobloxPlayerBeta.exe" (
       set "shinefolder=%%y"
            goto shiny
    )
)

for /d %%y in ("C:\Program Files\Roblox\Versions\*") do (
    if exist "%%y\RobloxPlayerBeta.exe" (
       set "shinefolder=%%y"
            goto shiny
    )
)

for /d %%y in ("C:\Program Files (x86)\Roblox\Versions\*") do (
    if exist "%%y\RobloxPlayerBeta.exe" (
       set "shinefolder=%%y"
            goto shiny
    )
)

:shiny
if defined shinefolder (
    if not exist "%shinefolder%\ClientSettings" (
        mkdir "%shinefolder%\ClientSettings"
    )
) else (
    echo Roblox and Bloxstrap is not found. Please contact owner!
    pause
    exit /b
)

:import
echo Unlocking FPS...
powershell.exe -Command "& {(New-Object System.Net.WebClient).DownloadFile('https://pastebin.com/raw/4Ru0hLqK', '%shinefolder%\ClientSettings\ClientAppSettings.json')}"
if %errorlevel% equ 0 (
    echo Successfully unlocked FPS!
    echo.
    echo Thanks for using Sunshine! We really appreciate your support!
) else (
    echo Failed to unlock FPS! Please contact the owner!
    echo.
    echo We sincerely apologize for this error.
)

echo.
echo Quick things to know before you exit out:
echo.
echo 1. Run Sunshine every time there is a Roblox update.
echo.
echo 2. If there is any error in Sunshine, contact @nulacorrupted on Discord.
echo.
echo 3. You don't need to run Sunshine in the background.
echo.
echo 4. Highly recommended use 21 graphics bar, Sunshine did a optimization that allow user to using max graphics quality without affecting that much fps.
echo.
echo 5. Sunshine don't guarantee to boost your fps, your fps will be uncapped, and we only guarantee to having smoother gameplay by using Alt-Enter instead of F11.
echo.
echo Press any key to exit... & pause >nul
