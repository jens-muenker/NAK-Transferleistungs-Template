![](https://img.shields.io/badge/Stand-August_2023-green)

# NAK-Transferleistungs-Template

Dies ist eine LaTeX-Vorlage und Dokumentenklasse für Transferleistungen an der [Nordakademie](https://www.nordakademie.de). Mit dieser Vorlage kannst du Transferleistungen in einem strukturierten und ansprechenden Format erstellen. Sie enthält vorgefertigte Abschnitte, Stile und Funktionen, die den Anforderungen der Nordakademie entsprechen (**Stand: August 2023**).

## Verwendung der Vorlage

Um diese Vorlage zu verwenden, folge diesen Schritten:

1. Klicke auf den grünen Button "Use this template" oben auf dieser GitHub-Seite, um ein neues Repository basierend auf dieser Vorlage zu erstellen.
2. Klon das erstellte Repository auf deinen Computer.
3. Passe die Transferleistung-Tex-Datei (`transferleistung.tex`) an, um die Informationen deiner Transferleistung einzufügen.
4. Füge Bilder in den `images`-Ordner ein, und verwende den `sections`-Ordner für deine Texte. Benenne die Textdateien entsprechend der Nummerierung (z.B. `file-01.tex`), um sie automatisch nach der Nummerierung in das Dokument eingefügt.
5. Erstelle die Transferleistung, indem du die transferleistung.tex via LaTeX erstellen lässt.

## Verwendete Pakete und Funktionen

Dieses Template verwendet verschiedene LaTeX-Pakete, um das Erstellen von Transferleistungen zu erleichtern. Hier sind einige der verwendeten Pakete und ihre Funktionen:

- [`babel`](https://ctan.org/pkg/babel): Unterstützung für mehrere Sprachen
- [`biblatex`](https://www.ctan.org/pkg/biblatex): Ermöglicht die Verwaltung von Quellen und Zitaten. Der APA-Zitierstil ist als Standard eingestellt, kann jedoch in der `nak.cls` auf andere Zitierstile einfach geändert werden. Weitere Details findest du [hier](https://de.overleaf.com/learn/latex/Biblatex_bibliography_styles).
- [`hyperref`](https://www.ctan.org/pkg/hyperref): Erzeugung von Hyperlinks im Dokument
- [`tikz`](https://www.ctan.org/pkg/pgf): Erstellung von Diagrammen und Grafiken
- [`listings`](https://ctan.org/pkg/listings): Einbindung von Quellcode mit Syntax-Hervorhebung
- [`graphicx`](https://ctan.org/pkg/graphicx) und [`subcaption`](https://ctan.org/pkg/subcaption): Einbindung von Bildern mit Untertiteln
- [`cleveref`](https://ctan.org/pkg/cleveref): Automatische Verweise auf Kapitel, Abbildungen usw.
- [`acronym`](https://ctan.org/pkg/acronym): Verwaltung von Abkürzungen
- [`threeparttable`](https://ctan.org/pkg/threeparttable): Für Tabellen mit Fußnoten
- Weitere Pakete für Tabellen, Schriftarten und mehr

## Nutzung von minted für Code (optional)

Diese Vorlage bietet die Möglichkeit, Quellcode mit dem [`minted`-Paket](https://www.ctan.org/pkg/minted) einzufügen und zu formatieren. `minted` ist ein mächtiges Paket, das Syntax-Hervorhebung für verschiedene Programmiersprachen bietet. Um diese Funktion zu nutzen:

1. Entkommentiere die entsprechenden Abschnitte in der `nak.cls`-Datei und der `main.tex`-Datei.
2. Installiere das erforderliche `python-pygments`-Paket auf deinem System (siehe [hier](https://pypi.org/project/Pygments/)).
3. Konfiguriere den Code gemäß den Anweisungen in den Kommentaren.
4. Füge deinen Quellcode in die vorbereitete Umgebung in der `main.tex`-Datei ein.

Weitere Details zur Verwendung von `minted` findest du [hier](https://ctan.org/pkg/minted).

## Inspiration und Dankeschön

Ein herzliches Dankeschön geht an [hpr1999](https://github.com/hpr1999/deg_transferleistung_latex) und [simondose1012](https://github.com/simondose1012/transferleistung-template). Ihre Vorlagen haben als Inspiration für die Erstellung dieses Templates gedient.

## Unterstützung

Wenn du Fragen oder Probleme bei der Verwendung dieses Templates hast, stehe ich gerne zur Verfügung. Du kannst mich über meine GitHub-Seite kontaktieren.
