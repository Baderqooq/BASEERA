@echo off
cd /d "%~dp0"
set "RUNPY=py"
where py >nul 2>nul
if errorlevel 1 set "RUNPY=python"
%RUNPY% -m pip install -r requirements.txt
if errorlevel 1 goto end
echo Open http://127.0.0.1:8000 and keep this window open.
%RUNPY% app.py
:end
pause
