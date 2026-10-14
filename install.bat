@echo off
REM journal-trip-map skill installer for Windows
REM Double-click to run, or: install.bat

set "SRC=%~dp0skills\journal-trip-map"
set "TARGET=%USERPROFILE%\.codebuddy\skills\journal-trip-map"

if not exist "%SRC%" (
  echo ERROR: cannot find %SRC%
  pause
  exit /b 1
)

if exist "%TARGET%" (
  ren "%TARGET%" "journal-trip-map.bak-%RANDOM%"
  echo Existing install renamed to journal-trip-map.bak-*
)

xcopy /E /I /Y "%SRC%" "%TARGET%" >nul

echo.
echo Installed to: %TARGET%
echo Restart WorkBuddy / start a new chat so the skill is picked up.
echo.
pause
