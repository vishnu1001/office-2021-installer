@echo off

rem Microsoft Office Professional Plus 2021 - Activator by Vishnu

title Office 2021 Activator
cls
echo =====================================================================================
echo.
echo Activating Microsoft Office Professional Plus 2021
echo.
echo =====================================================================================
echo Supported products:
echo - Microsoft Office Professional Plus 2021
echo =====================================================================================
(if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles%\Microsoft Office\Office16")
(if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles(x86)%\Microsoft Office\Office16")
(for /f %%x in ('dir /b ..\root\Licenses16\ProPlus2021VL_KMS*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul)

echo.
echo Activating Office...
echo.

cscript //nologo slmgr.vbs /ckms >nul
cscript //nologo ospp.vbs /setprt:1688 >nul
cscript //nologo ospp.vbs /unpkey:6F7TH >nul
set i=1
cscript //nologo ospp.vbs /inpkey:FXYTK-NJJ8C-GB6DW-3DYQT-6F7TH >nul||goto notsupported

:skms
if %i% GTR 10 goto busy
if %i% EQU 1 set KMS=kms7.MSGuides.com
if %i% EQU 2 set KMS=e8.us.to
if %i% EQU 3 set KMS=e9.us.to
if %i% GTR 3 goto ato
cscript //nologo ospp.vbs /sethst:%KMS% >nul

:ato

cscript //nologo ospp.vbs /act | find /i "successful" && (
    echo.
    if errorlevel 2 exit) || (
        echo The connection to KMS server failed! 
        echo Trying to connect to another one...
        echo.
        set /a i+=1 & goto skms)

goto halt

echo =====================================================================================
:notsupported
echo =====================================================================================
echo Sorry, your version is not supported.
:busy
echo =====================================================================================
echo Sorry, the server is busy and can't respond to your request. Please try again.
:halt
echo =====================================================================================

PAUSE
