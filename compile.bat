@echo off
setlocal enabledelayedexpansion

echo =======================================================
echo   Kompiliere Grundlagen der Mathematik mit LuaLaTeX
echo =======================================================
echo.

where lualatex >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo [FEHLER] LuaLaTeX wurde nicht im PATH gefunden!
    echo Bitte stellen Sie sicher, dass MiKTeX oder TeX Live installiert ist.
    pause
    exit /b 1
)

echo [1/2] Erster Kompilierungsdurchlauf...
lualatex --interaction=nonstopmode main.tex >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo [FEHLER] Fehler im ersten Durchlauf! Siehe main.log.
    lualatex --interaction=nonstopmode main.tex
    pause
    exit /b %ERRORLEVEL%
)

echo [2/2] Zweiter Kompilierungsdurchlauf (fuer Inhaltsverzeichnis und Referenzen)...
lualatex --interaction=nonstopmode main.tex >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo [FEHLER] Fehler im zweiten Durchlauf! Siehe main.log.
    lualatex --interaction=nonstopmode main.tex
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo =======================================================
echo   Erfolgreich kompiliert: main.pdf erstellt!
echo =======================================================
if /i not "%1"=="nopause" pause
