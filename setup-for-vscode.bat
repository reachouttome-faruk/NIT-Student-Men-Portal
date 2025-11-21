@echo off
REM Automated setup script to convert Replit project to VS Code (Windows)
REM Run this script after downloading the project

echo Setting up NIT Mentoring Portal for VS Code...
echo.

REM Step 1: Replace package.json
echo Installing clean dependencies (no Replit, no backend)...
if exist package.vscode.json (
    copy package.json package.replit.json.backup >nul
    copy package.vscode.json package.json >nul
    echo [OK] Replaced package.json
) else (
    echo [ERROR] package.vscode.json not found!
    exit /b 1
)

REM Step 2: Replace vite.config.ts
echo Installing clean Vite configuration...
if exist vite.config.vscode.ts (
    copy vite.config.ts vite.config.replit.ts.backup >nul
    copy vite.config.vscode.ts vite.config.ts >nul
    echo [OK] Replaced vite.config.ts
) else (
    echo [ERROR] vite.config.vscode.ts not found!
    exit /b 1
)

REM Step 3: Clean old dependencies
echo Cleaning old dependencies...
if exist node_modules rmdir /s /q node_modules
if exist package-lock.json del package-lock.json
echo [OK] Cleaned

REM Step 4: Install fresh dependencies
echo Installing dependencies (this takes 1-2 minutes)...
call npm install

if %ERRORLEVEL% EQU 0 (
    echo.
    echo Setup complete!
    echo.
    echo Your app is ready for VS Code development!
    echo.
    echo Next steps:
    echo   1. Open this folder in VS Code
    echo   2. Install recommended extensions (VS Code will prompt)
    echo   3. Run: npm run dev
    echo   4. App opens at http://localhost:5173
    echo.
    echo See VSCODE_SETUP.md for detailed instructions
    echo.
) else (
    echo.
    echo Installation failed!
    echo Try manually: npm install --legacy-peer-deps
    exit /b 1
)
