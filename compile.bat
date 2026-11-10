@echo off
setlocal
cd /d "%~dp0"
echo Kompiliere Grundlagen der Mathematik I mit LuaLaTeX...
lualatex --interaction=nonstopmode --halt-on-error --file-line-error main.tex
if errorlevel 1 goto failure
echo Zweiter Durchlauf fuer Inhaltsverzeichnis und Querverweise...
lualatex --interaction=nonstopmode --halt-on-error --file-line-error main.tex
if errorlevel 1 goto failure
echo [ERFOLG] main.pdf wurde erstellt.
if /i not "%~1"=="nopause" pause
exit /b 0
:failure
echo [FEHLER] Kompilierung fehlgeschlagen. Bitte main.log pruefen.
if /i not "%~1"=="nopause" pause
exit /b 1
