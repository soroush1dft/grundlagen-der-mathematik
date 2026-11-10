# Grundlagen der Mathematik I - Vorlesungsmitschrift

Philipps-Universität Marburg, Prof. Dr. Oliver Goertsches, Wintersemester 2026/27.

Dieses Repository verbindet eigene Vorlesungsnotizen mit einem modularen
LaTeX-Skript. Quelle für die Erweiterung vom 09.11.2026 ist die kumulative
Mitschrift mit 54 PDF-Seiten. Das vorhandene Dozentenskript endet bereits
bei den grundlegenden Mengenoperationen; es deckt die späteren Themen nicht ab.

- [Gesetzte Mitschrift, 16 Seiten](main.pdf)
- [Kumulative Notizen bis 09.11.2026](handschrift/09112026.PDF)
- [Prüfprotokoll und fachliche Korrekturen](REVIEW.md)
- [GitHub](https://github.com/soroush1dft/grundlagen-der-mathematik)

## Inhalt und Quellenabdeckung

Die Seitenangaben beziehen sich auf `handschrift/09112026.PDF`.
Nicht jede Seite enthält ein Datum; der Dateiname ist kein Nachweis für
einen einzelnen Vorlesungstermin. Die Kapitelstruktur folgt den Themen
der Vorlesung. Definitionen und Beispiele erhalten eigene laufende Nummern.

| Inhalt | Quelle: PDF-Seiten | LaTeX-Datei |
| --- | --- | --- |
| Organisatorisches | 1 | `chapters/00_organisatorisches.tex` |
| Aussagen, Wahrheitstafeln, Tautologien, Beweise, Quantoren | 1--17 | `chapters/01_logik.tex` |
| Cantorscher Mengenbegriff, Teilmengen, Potenzmengen, Mengengesetze | 18--26 | `chapters/02_mengenlehre.tex` |
| Russell, Axiomatik, Klassen, Unvollständigkeit | 27--33 | `chapters/02b_grundlagen.tex` |
| Relationen, Ordnungen, Äquivalenzklassen, Restklassen | 34--45 | `chapters/02c_relationen.tex` |
| Abbildungen, Komposition, Bilder, Urbilder, Injektivität usw. | 46--54 | `chapters/02d_abbildungen.tex` |

Seite 42 ist leer. Die Tafelbilder auf Seiten 30, 43 und 44 wurden inhaltlich
berücksichtigt; Fotos werden nicht in das gesetzte Skript übernommen.
Sprachlich ausgearbeitete Beweise und kurze zusätzliche Beispiele dienen
der Verständlichkeit. Fachliche Präzisierungen sind im Prüfprotokoll dokumentiert.

<<<<<<< Updated upstream
| Vorlesung | Datum | Thema / Inhalt | LaTeX-Quelle | Handschrift |
| :---: | :---: | :--- | :--- | :---: |
| – | – | Organisatorisches \& Übungsbetrieb | [`00_organisatorisches.tex`](chapters/00_organisatorisches.tex) | – |
| **VL 1** | **26.10.2026** | **Kapitel 1: Logik**<br>Aussagenbegriff, Extensionalitätsprinzip, Wahrheitstafeln, logische Junktoren | [`01_logik.tex`](chapters/01_logik.tex) | [`26102026.pdf`](handschrift/26102026.pdf) |
| **VL 1** | **26.10.2026** | **Tautologien \& Schlussregeln**<br>De Morgan, Modus Ponens, Kontraposition, Beweis $\sqrt{2}\notin\mathbb{Q}$, Quantoren | [`01_logik.tex`](chapters/01_logik.tex) | [`26102026.pdf`](handschrift/26102026.pdf) |
| **VL 1** | **26.10.2026** | **Kapitel 2: Mengenlehre**<br>Cantorscher Mengenbegriff, Teilmengen, Potenzmenge, Mengengesetze | [`02_mengenlehre.tex`](chapters/02_mengenlehre.tex) | [`26102026.pdf`](handschrift/26102026.pdf) |
| **VL 2** | **03.11.2026** | **Russellsche Antinomie & Axiomatik**<br>Allmenge, Russell-Menge, Typentheorie, ZFC-Axiomensystem, Mengen vs. Klassen | [`02_mengenlehre.tex`](chapters/02_mengenlehre.tex) | [`03112026.pdf`](handschrift/03112026.pdf) |
| **VL 2** | **03.11.2026** | **Gödelsche Unvollständigkeitssätze**<br>1. & 2. Unvollständigkeitssatz, Selbstreferenz, Grenzen formaler Beweisbarkeit | [`02_mengenlehre.tex`](chapters/02_mengenlehre.tex) | [`03112026.pdf`](handschrift/03112026.pdf) |
| **VL 2** | **03.11.2026** | **Relationen, Ordnungen & Quotientenmengen**<br>Kartesisches Produkt, Totalordnungen, Äquivalenzrelationen, Zerlegungen, $\mathbb{Z}_2$ | [`02_mengenlehre.tex`](chapters/02_mengenlehre.tex) | [`03112026.pdf`](handschrift/03112026.pdf) |
=======
## Aufbau und Kompilierung
>>>>>>> Stashed changes

`main.tex` bindet `config/preamble.tex` und die Kapitel ein. Die Präambel
enthält Noto Sans, deutsche Spracheinstellungen, mathematische Makros und
Theoremumgebungen. TikZ zeichnet die Funktionsgraphen. Ein Inhaltsverzeichnis
und PDF-Seitenangaben erleichtern den Abgleich mit den Originalnotizen.

Voraussetzung: MiKTeX oder TeX Live mit LuaLaTeX und der Schrift Noto Sans.
Unter Windows:

<<<<<<< Updated upstream
Die Struktur ist bewusst modular aufgeteilt, um eine einfache Erweiterung nach jedem Vorlesungstermin ohne unübersichtliche Riesen-Dateien zu ermöglichen:

```text
grundlagen-der-mathematik/
├── .gitignore                      # Filtert alle TeX-Zwischendateien (*.aux, *.log, *.out, etc.)
├── README.md                       # Dokumentation, Vorlesungsübersicht & Workflow
├── compile.bat                     # 1-Klick-Buildskript für Windows (LuaLaTeX)
├── compile.sh                      # Buildskript für Linux / macOS (LuaLaTeX)
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
=======
>>>>>>> Stashed changes
```cmd
compile.bat
```

Für einen Aufruf ohne abschließende Pause: `compile.bat nopause`.
Das Skript führt zwei Durchläufe aus und meldet Fehler aus beiden Durchläufen.
Hilfsdateien und das lokale Verzeichnis `scratch/` sind von Git ausgeschlossen.

**Buildstand:** Die lokal kompilierte PDF vom 09.11.2026 umfasst 16 Seiten
und enthält die neuen Abschnitte. Das vorhandene Buildlog bestätigt die
PDF-Ausgabe; es nennt noch drei übervolle Textzeilen (ca. 0,38, 3,15 und
9,59 pt). Eine vollständige visuelle Endkontrolle steht noch aus.
Die Kompilierung erfolgt durch den Nutzer in VS Code.

## Weitere Mitschriften integrieren

1. PDF in `handschrift/` ablegen, üblicherweise als `DDMMYYYY.pdf`.
2. Prüfen, ob es sich um neue Seiten oder einen kumulativen Export handelt.
   Bereits integrierten Stoff nicht doppelt übernehmen.
3. Inhalt lesen, mit dem verfügbaren Dozentenskript abgleichen und passende
   Kapitel ergänzen. Unleserliche Stellen und Zusatzannahmen kennzeichnen.
4. Quellenabdeckung und Prüfprotokoll aktualisieren.
5. Zweimal kompilieren und die PDF-Seiten visuell prüfen.
6. Änderungen prüfen und bei Bedarf committen und zu GitHub pushen.
