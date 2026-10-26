# Grundlagen der Mathematik I (WS 2026/2027)

[![LaTeX](https://img.shields.io/badge/LaTeX-LuaLaTeX-008080.svg?logo=latex&logoColor=white)](https://www.latex-project.org/)
[![University](https://img.shields.io/badge/Philipps--Universit%C3%A4t-Marburg-14326E.svg)](https://www.uni-marburg.de/)
[![Semester](https://img.shields.io/badge/Semester-WS%202026%2F2027-blue.svg)]()
[![Status](https://img.shields.io/badge/Build-Passing-brightgreen.svg)]()
[![License](https://img.shields.io/badge/License-MIT-lightgrey.svg)](LICENSE)
[![GitHub Repo](https://img.shields.io/badge/GitHub-soroush1dft%2Fgrundlagen--der--mathematik-181717.svg?logo=github)](https://github.com/soroush1dft/grundlagen-der-mathematik)

Modulares, typografisch anspruchsvolles Vorlesungsskript und digitale Mitschrift für die Lehrveranstaltung **Grundlagen der Mathematik I** (GdM 1) im Wintersemester 2026/2027 an der **Philipps-Universität Marburg**, gehalten von **Prof. Dr. Oliver Goertsches**.

Dieses Repository integriert das fortlaufende Vorlesungsskript des Dozenten mit handschriftlichen Vorlesungsaufzeichnungen in einer erweiterbaren, modularen LaTeX-Architektur.

---

## 🏛️ Projektarchitektur

Das Repository ist modular aufgebaut, um Vorlesungstage unabhängig pflegen und nahtlos zusammenführen zu können:

```plaintext
grundlagen-der-mathematik/
├── main.tex                    # Hauptdokument (lädt Präambel und Kapitel)
├── compile.bat                 # Automatisches 2-Pass-Kompilierskript (LuaLaTeX)
├── .gitignore                  # Vollständige Ignore-Liste für Hilfsdateien
├── README.md                   # Projektdokumentation & Workflow-Guide
├── config/
│   └── preamble.tex            # Schriften (Noto Sans), Layout, tcolorbox-Theoreme, Makros
├── chapters/
│   ├── 00_organisatorisches.tex # Kursorganisation, Übungen, Tests, Klausurzulassung
│   ├── 01_logik.tex            # Kapitel 1: Aussagenlogik, Tautologien, Schlussregeln, Quantoren
│   └── 02_mengenlehre.tex      # Kapitel 2: Cantorsche Mengenlehre, Potenzmenge, De Morgan
├── figures/
│   └── .gitkeep                # Verzeichnis für TikZ-Grafiken und Schaubilder
└── handschrift/
    ├── README.md               # Tracking-Tabelle aller Mitschriften & Skripte
    ├── Skript_GdM.pdf          # Offizielles Dozentenskript (Prof. Dr. Oliver Goertsches)
    └── 26102026.pdf            # Handschriftliche Vorlesungsmitschrift vom 26.10.2026
```

---

## 🎨 Typografie & Designsystem

- **Engine:** LuaLaTeX (via `fontspec` und `babel` mit `ngerman`)
- **Schriftfamilie:** Google *Noto Sans* (modern, serifenlos, exzellente Lesbarkeit)
- **Farbpalette:**
  - `primary` (`#14326E`): Universitäres Tiefblau (Kapitel, Sätze, Hauptakzente)
  - `secondary` (`#5A697D`): Schiefer-Graublau (Untertitel, Kopfzeilen, Metadaten)
  - `boxbg` (`#F8FAFC`): Sanft getönter Hintergrund für Theoreme und Boxen
  - `bordercol` (`#CBD5E1`): Dezente Rahmen und Trennlinien
  - Akzentfarben: Definitionen (`#0D9488` Teal), Lemmata (`#2563EB` Blau), Bemerkungen (`#D97706` Bernstein), Beispiele (`#475569` Schiefer)
- **Theorem-Umgebungen:** Breakable `tcolorbox`-Blöcke mit FontAwesome-Icons (`satz`, `definition`, `lemma`, `beispiel`, `bemerkung`)
- **Standard-Mengensymbole:** `\N` ($\mathbb{N}$), `\Z` ($\mathbb{Z}$), `\Q` ($\mathbb{Q}$), `\R` ($\mathbb{R}$), `\C` ($\mathbb{C}$), `\Pot` ($\mathcal{P}$)
- **Vorlesungstracking:** `\vorlesungsdatum{Datum}{Datei.pdf}` visualisiert Vorlesungsdatum und Quellendatei am Beginn jedes Vorlesungsblocks.

---

## 📅 Vorlesungs-Roadmap & Mitschriften-Tracking

| Nr. | Datum | Thema / Inhalt | Dozentenskript | Handschrift | Modulares Kapitel | Status |
| :---: | :---: | :--- | :---: | :---: | :--- | :---: |
| **0** | 26.10.2026 | Organisatorisches, Übungsbetrieb, Tests & Klausurzulassung | – | `26102026.pdf` | `00_organisatorisches.tex` | ✅ Fertig |
| **1** | 26.10.2026 | Aussagen, Extensionalitätsprinzip, Wahrheitstafeln, Junktoren | Kap. 1.1–1.2 | `26102026.pdf` | `01_logik.tex` | ✅ Fertig |
| **2** | 26.10.2026 | Tautologien, Schlussregeln, Beweis $\sqrt{2}\notin\mathbb{Q}$, Quantoren | Kap. 1.3–1.4 | `26102026.pdf` | `01_logik.tex` | ✅ Fertig |
| **3** | 26.10.2026 | Cantorscher Mengenbegriff, Teilmengen, Potenzmenge, Mengengesetze | Kap. 2.1 | `26102026.pdf` | `02_mengenlehre.tex` | ✅ Fertig |

---

## 🔄 Täglicher Workflow für neue Vorlesungsmitschriften

Nach jeder Vorlesung wird das Skript mit folgendem einfachen Ablauf erweitert:

1. **Notizen ablegen:**
   Exportieren Sie die Tablet-Notizen oder den Vorlesungsscan als PDF in den Ordner `handschrift/` im Format `DDMMYYYY.pdf` (z. B. `handschrift/28102026.pdf`).
2. **KI-Transkription beauftragen:**
   Geben Sie den Befehl im Chat ein:
   > *"Bitte transkribiere die neue Mitschrift `handschrift/28102026.pdf`, gleiche sie mit dem Dozentenskript ab und integriere den Inhalt in die modularen Kapitel."*
3. **Tracking & Kompilierung:**
   - Die Mitschrift wird mit `\vorlesungsdatum{...}{...}` markiert.
   - Die Tracking-Tabellen in `README.md` und `handschrift/README.md` werden aktualisiert.
   - `compile.bat` kompiliert das aktualisierte Dokument `main.pdf`.
4. **Git Versionierung:**
   - Änderungen committen und auf GitHub pushen.

---

## 🛠️ Kompilierung

### Option A: Über das Windows-Batchskript (empfohlen)
Doppelklick auf `compile.bat` oder Ausführung in PowerShell / CMD:
```cmd
compile.bat
```
Das Skript führt automatisch zwei LuaLaTeX-Durchläufe aus, um das Inhaltsverzeichnis und alle Querverweise exakt aufzulösen.

### Option B: Manuell über die Kommandozeile
```bash
lualatex --interaction=nonstopmode main.tex
lualatex --interaction=nonstopmode main.tex
```

---

## 🔗 GitHub Repository & Synchronisation

Das offizielle Remote-Repository ist unter folgendem Link erreichbar:
👉 [https://github.com/soroush1dft/grundlagen-der-mathematik](https://github.com/soroush1dft/grundlagen-der-mathematik)

### Lokales Klonen
```bash
git clone https://github.com/soroush1dft/grundlagen-der-mathematik.git
cd grundlagen-der-mathematik
```

---

## 📖 Danksagung & Quellen

- **Dozent:** Prof. Dr. Oliver Goertsches (Philipps-Universität Marburg)
- **Lehrveranstaltung:** Grundlagen der Mathematik I (WS 2026/2027)
- **Mitschrift, Satz & LaTeX-Umsetzung:** Soroush Daftarian
