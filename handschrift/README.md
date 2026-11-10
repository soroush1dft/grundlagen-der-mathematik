# Quellen und Transkriptionsstand

Grundlagen der Mathematik I, WS 2026/27, Prof. Dr. Oliver Goertsches,
Philipps-Universität Marburg.

| Datei | Art und Umfang | Verwendung |
| --- | --- | --- |
| `Skript_GdM.pdf` | Dozentenskript, 18 PDF-Seiten; Logik und Beginn der Mengenlehre | Abgleich der bereits vorhandenen Kapitel |
| `26102026.pdf` | Früherer Stand der eigenen Notizen | Quelle der ursprünglichen Fassung; durch den kumulativen Export ergänzt |
| `09112026.PDF` | Kumulativer Export, 54 PDF-Seiten; erste drei Seiten gesetzt, danach Handschrift und Tafelbilder | Inhalt bis einschließlich Abbildungen und Bijektivität eingearbeitet; Seitenabdeckung siehe Haupt-README |

Der neue Export überschneidet sich mit dem alten und ist keine einzelne
zusätzliche Vorlesung. Eindeutige Datumsmarken sind unter anderem 27.10.2026
auf PDF-Seite 26 und 06.11.2026 auf PDF-Seite 45. Für andere Themen werden
keine Termine rekonstruiert. PDF-Seite 42 ist leer.

<<<<<<< Updated upstream
| Datum | Datei | Dozent / Quelle | Thema / Inhalt | Status | Zielkapitel |
| :--- | :--- | :--- | :--- | :---: | :--- |
| **Vorlesungsbeginn** | `Skript_GdM.pdf` | Prof. Dr. Oliver Goertsches | Offizielles Begleitskript (Kapitel 1: Logik, Kapitel 2: Mengenlehre) | ✅ Integriert | `01_logik.tex`, `02_mengenlehre.tex` |
| **26.10.2026** | `26102026.pdf` | Eigene Mitschrift | 1. Vorlesung: Organisatorisches, Aussagen, Wahrheitstafeln, Tautologien, Beweis $\sqrt{2}\notin\mathbb{Q}$, Quantoren, Cantorsche Mengenlehre | ✅ Integriert | `00_organisatorisches.tex`, `01_logik.tex`, `02_mengenlehre.tex` |
| **03.11.2026** | `03112026.pdf` (`20261103_compressed.pdf`) | Eigene Mitschrift | 2. Vorlesung: Russellsche Antinomie, Typentheorie, ZFC-Axiomensystem, Klassen vs. Mengen, Gödelsche Unvollständigkeitssätze, Relationen, Totalordnungen, Äquivalenzrelationen, Quotientenmengen $\mathbb{Z}_2$ | ✅ Integriert | `02_mengenlehre.tex` |

---

## 🔄 Workflow für neue Mitschriften

1. **Nach der Vorlesung:**
   - Datei als PDF exportieren und im Format `DDMMYYYY.pdf` (z. B. `02112026.pdf`) in diesen Ordner `handschrift/` ablegen.
2. **Transkription & Integration:**
   - Den KI-Assistenten bitten, die neue Datei zu analysieren, mit dem Skript des Professors abzugleichen und in das jeweilige modulare Kapitel (`chapters/*.tex`) einzupflegen.
   - Am Anfang des neuen Abschnitts das Makro `\vorlesungsdatum{DD. Monat YYYY}{DDMMYYYY.pdf}` setzen.
3. **Tracking aktualisieren:**
   - Einen neuen Eintrag in dieser Tabelle ergänzen mit Status `✅ Integriert`.
4. **Kompilieren & Versionieren:**
   - Mit `compile.bat` die Datei `main.pdf` neu erzeugen.
   - Änderungen via Git committen und auf GitHub pushen.
=======
Neue Scans oder kumulative Exporte hier ablegen, Änderungen gegenüber dem
bisherigen Stand prüfen und die Tabellen im Haupt-README aktualisieren.
Fachliche Korrekturen und redaktionelle Entscheidungen stehen in `../REVIEW.md`.
>>>>>>> Stashed changes
