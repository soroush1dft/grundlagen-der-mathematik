# Grundlagen der Mathematik I – Vorlesungsmitschrift

[![LaTeX](https://img.shields.io/badge/LaTeX-LuaLaTeX-blue.svg)](https://www.lualatex.org/)
[![Status](https://img.shields.io/badge/Status-In%20Progress%20(WS%202026%2F27)-green.svg)]()
[![Repository](https://img.shields.io/badge/GitHub-soroush1dft%2Fgrundlagen--der--mathematik-181717.svg?logo=github)](https://github.com/soroush1dft/grundlagen-der-mathematik)
[![View PDF](https://img.shields.io/badge/PDF-main.pdf-red.svg?logo=adobeacrobatreader)](main.pdf)

> **Mathematisches Institut – Wintersemester 2026/2027**  
> Vorlesungsmitschrift zu *Grundlagen der Mathematik I* (Prof. Dr. Oliver Goertsches, Philipps-Universität Marburg). Dieses Repository kombiniert die **handschriftlichen Originalmitschriften** aus den Vorlesungen mit einem modular aufgebauten, professionell gesetzten **LaTeX-Skript**.

---

## 📖 Schnellzugriff

* 📄 **Fertige PDF-Mitschrift ansehen:** [**`main.pdf`**](main.pdf) *(wird fortlaufend aktualisiert)*
* ✍️ **Handschriftliche Original-Scans:** [`handschrift/`](handschrift/)
* 🧩 **LaTeX-Kapitel:** [`chapters/`](chapters/)

---

## 📅 Vorlesungsübersicht & Inhalte

| Vorlesung | Datum | Thema / Inhalt | LaTeX-Quelle | Handschrift |
| :---: | :---: | :--- | :--- | :---: |
| – | – | Organisatorisches \& Übungsbetrieb | [`00_organisatorisches.tex`](chapters/00_organisatorisches.tex) | – |
| **VL 1** | **26.10.2026** | **Kapitel 1: Logik**<br>Aussagenbegriff, Extensionalitätsprinzip, Wahrheitstafeln, logische Junktoren | [`01_logik.tex`](chapters/01_logik.tex) | [`26102026.pdf`](handschrift/26102026.pdf) |
| **VL 1** | **26.10.2026** | **Tautologien \& Schlussregeln**<br>De Morgan, Modus Ponens, Kontraposition, Beweis $\sqrt{2}\notin\mathbb{Q}$, Quantoren | [`01_logik.tex`](chapters/01_logik.tex) | [`26102026.pdf`](handschrift/26102026.pdf) |
| **VL 1** | **26.10.2026** | **Kapitel 2: Mengenlehre**<br>Cantorscher Mengenbegriff, Teilmengen, Potenzmenge, Mengengesetze | [`02_mengenlehre.tex`](chapters/02_mengenlehre.tex) | [`26102026.pdf`](handschrift/26102026.pdf) |

---

## 📁 Repository-Architektur

Die Struktur ist bewusst modular aufgeteilt, um eine einfache Erweiterung nach jedem Vorlesungstermin ohne unübersichtliche Riesen-Dateien zu ermöglichen:

```text
grundlagen-der-mathematik/
├── .gitignore                      # Filtert alle TeX-Zwischendateien (*.aux, *.log, *.out, etc.)
├── README.md                       # Dokumentation, Vorlesungsübersicht & Workflow
├── compile.bat                     # 1-Klick-Buildskript für Windows (LuaLaTeX)
├── main.tex                        # Zentraler Master-File (bindet Präambel & Kapitel ein)
├── main.pdf                        # Zuletzt kompiliertes Dokument (vollständige Mitschrift)
│
├── config/
│   └── preamble.tex                # Styling, Typografie (Noto Sans), Farbpalette, Theoreme & Mathe-Makros
│
├── chapters/                       # Thematisch gegliederte Vorlesungskapitel
│   ├── 00_organisatorisches.tex    # Übungsblätter, Präsenztests, Klausurzulassung
│   ├── 01_logik.tex                # Kapitel 1: Logik (Aussagen, Wahrheitstafeln, Tautologien, Quantoren)
│   └── 02_mengenlehre.tex          # Kapitel 2: Mengenlehre (Cantorsche Mengenlehre, Potenzmenge, De Morgan)
│
├── handschrift/                    # Original-PDFs der handschriftlichen Mitschriften & Dozentenskripte
│   ├── README.md                   # Tracking-Tabelle und Workflow
│   ├── Skript_GdM.pdf              # Begleitskript von Prof. Dr. Oliver Goertsches
│   └── 26102026.pdf                # Handschriftlicher Scan vom 26.10.2026
│
└── figures/                        # Grafiken, Skizzen und TikZ-Diagramme
```

---

## 🛠️ Kompilierung & Lokales Arbeiten

Voraussetzung ist eine gängige TeX-Distribution (z.\,B. **MiKTeX** oder **TeX Live**) mit **LuaLaTeX**.

### Automatisches Kompilieren (Windows)
Einfach die Datei [`compile.bat`](compile.bat) per Doppelklick ausführen oder in der Konsole aufrufen:
```cmd
compile.bat
```
Das Skript führt automatisch zwei Durchläufe aus, um Querverweise und Referenzen sauber aufzulösen.

---

## 🔄 Workflow für neue Vorlesungsmitschriften

1. **Handschriftliche Datei ablegen:**
   PDF-Scan nach der Vorlesung als `DDMMYYYY.pdf` in [`handschrift/`](handschrift/) speichern.
2. **KI-Assistent aufrufen:**
   *"Bitte transkribiere die neue Mitschrift `handschrift/DDMMYYYY.pdf`, gleiche sie mit dem Dozentenskript ab und integriere den Inhalt in die modularen Kapitel."*
3. **Kompilieren:**
   Ausführen von `compile.bat`, um `main.pdf` zu aktualisieren.
4. **Git Versionierung:**
   Änderungen committen und zu GitHub pushen:
   ```bash
   git add .
   git commit -m "Vorlesung DD.MM.YYYY eingepflegt"
   git push
   ```
