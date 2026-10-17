@echo off
setlocal
cd /d "%~dp0"
set "PYTHON_EXE="
where py >nul 2>&1 && set "PYTHON_EXE=py -3"
if not defined PYTHON_EXE (
  where python >nul 2>&1 && set "PYTHON_EXE=python"
)
if not defined PYTHON_EXE (
  echo Python 3 is required. Install it from https://www.python.org/downloads/
  echo During installation select "Add Python to PATH".
  pause
  exit /b 1
)
echo Starting Ivrit Family... Keep this window open while using the app.
%PYTHON_EXE% launch_server.py
if errorlevel 1 pause
