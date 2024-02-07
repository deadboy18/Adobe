@set ver=1.0.5
@echo off

title  Adobe Patcher Deadboy%ver%

REM Check if running as administrator
IF exist C:\Windows\System32\WDI\LOGFILES (
    REM Running as administrator
) ELSE (
    REM Not running as administrator
    echo This script requires administrative privileges. Please run this script as an administrator.
    pause
    exit /b
)
REM Check if script is launched from the temp folder
IF "%~dp0"=="%TEMP%\" (
    echo This script should not be launched directly from the archive file.
    echo Please extract the archive file and launch the script from the extracted folder.
    pause
    exit /b
)

echo:     _________________________________________________________________
echo:
echo:                      Welcome to Adobe Patcher!
echo:     _________________________________________________________________
echo:
echo:         Make sure that you have a working internet connection 
echo:         and that you run the script as an administrator.
echo:
echo:         This patches your host file for adobe apps hehe
echo: 
echo:         Press any key to continue...
echo:     _________________________________________________________________

pause > nul

md "%TEMP%\CreativeCloudPatcher"
cls
echo:     _________________________________________________________________
echo:
echo:                     Adobe Patcher Deadboy%ver% by Deadboy.
echo:     _________________________________________________________________
echo.

rem Close all Adobe processes and services
powershell -Command "Get-Service -DisplayName Adobe* | Stop-Service -Force -Confirm:$false; $Processes = Get-Process * | Where-Object { $_.CompanyName -match 'Adobe' -or $_.Path -match 'Adobe' }; Foreach ($Process in $Processes) { Stop-Process $Process -Force -ErrorAction SilentlyContinue }"
echo Adobe processes and services closed.

echo Add hosts entries...

echo.

rem Add hosts entries if they don't already exist
findstr /C:"0.0.0.0 tic.adobe.io" "%windir%\System32\drivers\etc\hosts" >nul && (
    type "%windir%\System32\drivers\etc\hosts" | findstr /v /c:"0.0.0.0 tic.adobe.io" > "%temp%\hosts.tmp"
    move /y "%temp%\hosts.tmp" "%windir%\System32\drivers\etc\hosts" >nul
)
findstr /C:"0.0.0.0 ic.adobe.io" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 ic.adobe.io >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 r3zj0yju1q.adobe.io" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 r3zj0yju1q.adobe.io >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 cd536oo20y.adobe.io" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 cd536oo20y.adobe.io >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 3ca52znvmj.adobe.io" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 3ca52znvmj.adobe.io >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 52.22.41.97" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 52.22.41.97 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 50.16.47.176" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 50.16.47.176 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 23.58.223.185" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 23.58.223.185 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 23.58.223.210" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 23.58.223.210 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 3.211.174.17" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 3.211.174.17 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 3.233.129.217" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 3.233.129.217 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 192.147.130.100" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 192.147.130.100 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 52.48.8.54" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 52.48.8.54 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 34.193.227.236" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 34.193.227.236 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 52.5.13.197" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 52.5.13.197 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 52.202.204.11" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 52.202.204.11 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 54.144.73.197" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 54.144.73.197 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 54.227.187.23" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 54.227.187.23 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 107.22.247.231" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 107.22.247.231 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 34.237.241.83" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 34.237.241.83 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 18.213.11.84" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 18.213.11.84 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 54.224.241.105" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 54.224.241.105 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 52.6.155.20" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 52.6.155.20 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 3.219.243.226" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 3.219.243.226 >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 ic.adobe.io" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 ic.adobe.io >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 cc-api-data.adobe.io" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 cc-api-data.adobe.io >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 m59b4msyph.adobe.io" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 m59b4msyph.adobe.io >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 ic.adobe.io" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 ic.adobe.io >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 r3zj0yju1q.adobe.io" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 r3zj0yju1q.adobe.io >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 cd536oo20y.adobe.io" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 cd536oo20y.adobe.io >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 3ca52znvmj.adobe.io" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 5zgzzv92gn.adobe.io >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 3ca52znvmj.adobe.io" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 3ca52znvmj.adobe.io >> "%windir%\System32\drivers\etc\hosts"
)
findstr /C:"0.0.0.0 3ca52znvmj.adobe.io" "%windir%\System32\drivers\etc\hosts" >nul || (
    echo 0.0.0.0 r5hacgq5w6.adobe.io >> "%windir%\System32\drivers\etc\hosts"
)

cls
echo:     _________________________________________________________________
echo:
echo:                     CreativeCloud Patcher V%ver% by Deadboy.
echo:     _________________________________________________________________
echo:
echo:                        Hosts file patched successfully HEHE!
echo:
echo:     _________________________________________________________________
echo:
echo:          Press any key to exit...
pause > nul
