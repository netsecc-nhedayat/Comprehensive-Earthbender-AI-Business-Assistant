@echo off
setlocal
cd /d "%~dp0"
call npm install
if errorlevel 1 goto failed
call npm run build
if errorlevel 1 goto failed
echo.
echo Build completed successfully.
pause
exit /b 0
:failed
echo.
echo Build check failed. Read the error above and share it for troubleshooting.
pause
exit /b 1
