@echo off
echo ========================================
echo    PROFESSIONAL PORTFOLIO WEBSITE
echo    Starting Local Development Server
echo ========================================
echo.

REM Check if Python is installed  
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Python not found. Please install Python from https://python.org
    echo.
    echo Alternative: Use Node.js with command: npx serve .
    echo.
    pause
    exit /b 1
)

echo ✓ Python found - Starting professional portfolio website
echo.
echo 🌐 Website will open at: http://localhost:8000
echo 📱 For mobile testing, use: http://[your-ip]:8000  
echo ⏹️  Press Ctrl+C to stop the server
echo.

REM Open browser automatically
start http://localhost:8000

echo Starting server...
echo.

REM Start Python HTTP server
python -m http.server 8000
