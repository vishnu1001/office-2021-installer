@ECHO OFF

rem Microsoft Office Professional Plus 2021 - Installer by Vishnu

title Office 2021 Installer
cls
echo =====================================================================================
echo.
echo Running Microsoft Office Deployment Tool LTSC 2021
echo.
echo =====================================================================================
echo.
echo Click "Close" after installation.

rem Running Microsoft Office Deployment Tool
setup /configure configuration.xml

echo.
echo Installed Successfully!
echo.
echo Activating Office...

rem Running Activator
office2021.bat

echo.
echo Activated Successfully!
echo.

PAUSE
EXIT