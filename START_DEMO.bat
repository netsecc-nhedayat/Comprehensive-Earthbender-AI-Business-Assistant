@echo off
setlocal
cd /d "%~dp0"
echo ===============================================
echo Earthbender AI Business Assistant - Demo Starter
echo ===============================================
where node >nul 2>nul
if errorlevel 1 (
  echo ERROR: Node.js was not found. Install Node.js 20 or newer from https://nodejs.org/
  pause
  exit /b 1
)
where npm >nul 2>nul
if errorlevel 1 (
  echo ERROR: npm was not found. Reinstall Node.js with npm enabled.
  pause
  exit /b 1
)
if not exist "node_modules" (
  echo Installing required packages for the first run...
  call npm install
  if errorlevel 1 (
    echo ERROR: Package installation failed. Check your internet connection and try npm install manually.
    pause
    exit /b 1
  )
)
call npm run dev
pause
