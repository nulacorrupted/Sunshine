@echo off
title Sunshine
echo Searching Roblox meow~!
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

:yappingmenu
cls
echo ------------------------------------
echo ^|             Sunshine              ^|
echo ^|    Found and Maintained By Nula   ^|
echo ^|                                   ^|
echo ^|   (C) nula. All rights reserved.  ^|
echo ------------------------------------
echo ^|         Client Settings           ^|
echo ^|                                   ^|
echo ^|                                   ^|
echo ^|        [1] Plan Option 1          ^|
echo ^|            (Default)              ^|
echo ^|                                   ^|
echo ^|                                   ^|
echo ^|                                   ^|
echo ^|        [2] Plan Option 2          ^|
echo ^|            (Potato)               ^|
echo ------------------------------------
echo ^|        Additional Settings        ^|
echo ^|                                   ^|
echo ^|                                   ^|
echo ^|    [remove] Uninstall Sunshine    ^|
echo ^|                                   ^|
echo ^|                                   ^|
echo ^|    [contact] Contact Owner        ^|
echo ^|                                   ^|
echo ^|                                   ^|
echo ^|                                   ^|
echo ^|        [quit] Exit                ^|
echo ------------------------------------

echo.
set /p opt="Enter your choice: "
if /i "%opt%"=="1" (
  goto :plan1
)
if /i "%opt%"=="2" (
  goto :plan2
)
if /i "%opt%"=="remove" (
  goto :remove
)
if /i "%opt%"=="upd" (
  goto :update
)
if /i "%opt%"=="contact" (
  goto :nula
)
if /i "%opt%"=="quit" (
  goto quit
)
echo Invalid choice:( Please try again.
pause
goto :yappingmenu

:plan1
powershell.exe -Command "& {(New-Object System.Net.WebClient).DownloadFile('https://pastebin.com/raw/4Ru0hLqK', '%shinefolder%\ClientSettings\ClientAppSettings.json')}"
if "%errorlevel%" equ "0" (
    cls
    echo Successfully Optimize Roblox!
    echo.
    pause
    goto :yappingmenu
) else (
    echo Failed Optimize Roblox!
    echo.
    echo Please report this issue to nula!
    echo.
    echo @nulacorrupted
    pause
    goto :yappingmenu
)

:plan2
powershell.exe -Command "& {(New-Object System.Net.WebClient).DownloadFile('https://pastebin.com/raw/8AJfaEA9', '%shinefolder%\ClientSettings\ClientAppSettings.json')}"
if "%errorlevel%" equ "0" (
    cls
    echo Successfully Optimize Roblox!
    echo.
    pause
    goto :yappingmenu
) else (
    echo Failed Optimize Roblox!
    echo.
    echo Please report this issue to nula!
    echo.
    echo @nulacorrupted
    pause
    goto :yappingmenu
)

:remove
cls
set /p continued="Your client settings will be removed, are you sure you want to continue (y/n): "
if /i "%continued%"=="y" (
    if exist "%shinefolder%\ClientSettings" (
        rmdir "%shinefolder%\ClientSettings" /s /q
        echo You've removed your client settings.
        pause
        goto :yappingmenu
    )
) else (
    if /i "%continued%"=="n" (
        pause
        goto :yappingmenu
    )
)

:nula
cls
echo Nula's discord user: nulacorrupted
echo Feel free to dm!
pause
goto :yappingmenu

:quit
exit
