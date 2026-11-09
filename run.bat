@echo off
setlocal
cd /d "%~dp0"

where dotnet >nul 2>nul
if errorlevel 1 (
    echo .NET SDK is not installed or is not available in PATH.
    pause
    exit /b 1
)

dotnet run --project "%~dp0WinFormsApp5.csproj" --no-launch-profile
if errorlevel 1 (
    echo.
    echo The application could not be started.
    pause
    exit /b 1
)

endlocal