# Handschriftliche Vorlesungsmitschriften & Skripte

Dieser Ordner dient als zentraler Ablageort für alle eingescannten bzw. digital erstellten handschriftlichen Mitschriften und bereitgestellten Vorlesungsskripte des Moduls **Grundlagen der Mathematik I** (Wintersemester 2026/2027) an der Philipps-Universität Marburg bei **Prof. Dr. Oliver Goertsches**.

---

## 📅 Übersicht & Transkriptions-Tracking

| Datum | Datei | Dozent / Quelle | Thema / Inhalt | Status | Zielkapitel |
| :--- | :--- | :--- | :--- | :---: | :--- |
| **Vorlesungsbeginn** | `Skript_GdM.pdf` | Prof. Dr. Oliver Goertsches | Offizielles Begleitskript (Kapitel 1: Logik, Kapitel 2: Mengenlehre) | ✅ Integriert | `01_logik.tex`, `02_mengenlehre.tex` |
| **26.10.2026** | `26102026.pdf` | Eigene Mitschrift | 1. Vorlesung: Organisatorisches, Aussagen, Wahrheitstafeln, Tautologien, Beweis $\sqrt{2}\notin\mathbb{Q}$, Quantoren, Cantorsche Mengenlehre | ✅ Integriert | `00_organisatorisches.tex`, `01_logik.tex`, `02_mengenlehre.tex` |

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
