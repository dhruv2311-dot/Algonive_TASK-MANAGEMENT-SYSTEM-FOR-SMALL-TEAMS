@echo off
echo ========================================
echo   Starting Task Manager Development
echo ========================================
echo.
echo Starting Backend Server (Port 5000)...
echo Starting Frontend Server (Port 5173)...
echo.
echo Press Ctrl+C to stop both servers
echo.

start "Backend Server" cmd /k "cd backend && npm start"
timeout /t 3 /nobreak > nul
start "Frontend Server" cmd /k "cd frontend && npm run dev"

echo.
echo Both servers are starting...
echo Backend: http://localhost:5000
echo Frontend: http://localhost:5173
echo.
