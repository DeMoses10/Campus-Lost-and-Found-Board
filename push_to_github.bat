@echo off
set "GIT=C:\Users\HAPPY\AppData\Local\Programs\Git\cmd\git.exe"
cd /d "C:\Users\HAPPY\.gemini\antigravity\scratch\CampusLostAndFound"

echo ========================================================
echo   Uploading Campus Lost and Found Board to GitHub
echo   Account: https://github.com/DeMoses10
echo ========================================================
echo.
echo Make sure you have created the repository on GitHub first:
echo   https://github.com/new
echo   Repository Name: Campus-Lost-and-Found-Board
echo.
echo Press any key to link and push your project to GitHub...
pause >nul

echo [1/3] Setting remote origin...
"%GIT%" remote remove origin >nul 2>&1
"%GIT%" remote add origin https://github.com/DeMoses10/Campus-Lost-and-Found-Board.git

echo [2/3] Setting main branch...
"%GIT%" branch -M main

echo [3/3] Pushing to GitHub (Sign in with your browser if prompted)...
"%GIT%" push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================================
    echo   SUCCESS! Project successfully published to:
    echo   https://github.com/DeMoses10/Campus-Lost-and-Found-Board
    echo ========================================================
) else (
    echo.
    echo Pushing failed or was cancelled. Please check your GitHub connection.
)

echo.
pause
