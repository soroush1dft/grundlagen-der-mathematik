@echo off
echo =======================================================
echo Kompiliere Grundlagen der Mathematik 1 Vorlesungsmitschrift...
echo Compiler: LuaLaTeX
echo =======================================================

lualatex --interaction=nonstopmode main.tex

if %ERRORLEVEL% equ 0 (
    echo.
    echo -------------------------------------------------------
    echo Zweiter Durchlauf zur Aktualisierung der Querverweise...
    echo -------------------------------------------------------
    lualatex --interaction=nonstopmode main.tex
    echo.
    echo =======================================================
    echo [ERFOLG] main.pdf wurde erfolgreich erstellt!
    echo =======================================================
) else (
    echo.
    echo =======================================================
    echo [FEHLER] Fehler bei der Kompilierung! Bitte main.log pruefen.
    echo =======================================================
)

if /i not "%1"=="nopause" pause
