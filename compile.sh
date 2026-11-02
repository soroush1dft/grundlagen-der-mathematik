#!/usr/bin/env bash
set -e

echo "======================================================="
echo "Kompiliere Grundlagen der Mathematik 1 Vorlesungsmitschrift..."
echo "Compiler: LuaLaTeX"
echo "======================================================="

lualatex --interaction=nonstopmode main.tex

if [ $? -eq 0 ]; then
    echo ""
    echo "-------------------------------------------------------"
    echo "Zweiter Durchlauf zur Aktualisierung der Querverweise..."
    echo "-------------------------------------------------------"
    lualatex --interaction=nonstopmode main.tex
    echo ""
    echo "======================================================="
    echo "[ERFOLG] main.pdf wurde erfolgreich erstellt!"
    echo "======================================================="
else
    echo ""
    echo "======================================================="
    echo "[FEHLER] Fehler bei der Kompilierung! Bitte main.log pruefen."
    echo "======================================================="
    exit 1
fi
