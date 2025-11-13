@echo off
echo ========================================
echo   Task Manager - Installation Script
echo ========================================
echo.

echo [1/4] Installing Backend Dependencies...
cd backend
call npm install
if %errorlevel% neq 0 (
    echo ERROR: Backend installation failed!
    pause
    exit /b 1
)
echo Backend dependencies installed successfully!
echo.

echo [2/4] Creating Backend .env file...
if not exist .env (
    copy .env.example .env
    echo .env file created! Please edit backend/.env with your MongoDB URL and other settings.
) else (
    echo .env file already exists, skipping...
)
echo.

cd ..

echo [3/4] Installing Frontend Dependencies...
cd frontend
call npm install
if %errorlevel% neq 0 (
    echo ERROR: Frontend installation failed!
    pause
    exit /b 1
)
echo Frontend dependencies installed successfully!
echo.

echo [4/4] Creating Frontend .env file...
if not exist .env (
    copy .env.example .env
    echo .env file created!
) else (
    echo .env file already exists, skipping...
)
echo.

cd ..

echo ========================================
echo   Installation Complete!
echo ========================================
echo.
echo Next Steps:
echo 1. Edit backend/.env with your MongoDB Atlas URL
echo 2. Run 'start-dev.bat' to start both servers
echo.
echo For detailed setup instructions, see SETUP_GUIDE.md
echo.
pause
