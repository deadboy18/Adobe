@echo off
setlocal enabledelayedexpansion

set "programs[0]=Acrobat.exe"
set "programs[1]=Acrocef.exe"
set "programs[2]=Acrocef_1.exe"

set "locations[0]=C:\Program Files\Adobe\Acrobat DC\Acrobat\Acrobat.exe"
set "locations[1]=C:\Program Files\Adobe\Acrobat DC\Acrobat\AcroCEF\AcroCEF.exe"
set "locations[2]=C:\Program Files\Adobe\Acrobat DC\Acrobat\acrocef_1\AcroCEF.exe"

for /L %%i in (0, 1, 2) do (
    echo Blocking !programs[%%i]! at !locations[%%i]! outbound
    netsh advfirewall firewall add rule name="Block !programs[%%i]! Outbound" dir=out action=block program="!locations[%%i]!"
)

echo Outbound firewall rules added successfully.
