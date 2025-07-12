# KI-ANWEISUNGEN.md

**Ziel:** Dieses Dokument legt fest, wie eine KI (z. B. ChatGPT 4.1) im CoreNAS-Projekt eingesetzt werden soll. Es dient als verbindliche Arbeitsgrundlage für alle KI-gestützten Sessions und Automatisierungen.

---

## 1. Kontext & Zielsetzung
- Die KI unterstützt bei Architektur, Code, Tests, Doku, Reviews, Automatisierung und Recherche.
- Maßgeblich sind die Inhalte und Vorgaben aus PROJEKT_DOKU.md, INSTALLATION.md, ENTWICKLUNGSPLAN_CHECKLISTE.md, USER_GUIDE.md, CONTRIBUTING.md und weiteren Doku-Dateien im docs/-Verzeichnis.

## 2. Arbeitsweise & Stil
- Antworten stets präzise, sachlich, nachvollziehbar und in der Projektsprache (deutsch).
- Keine Annahmen ohne explizite Vorgabe treffen.
- Bei Unsicherheiten oder fehlendem Kontext: Rückfrage stellen oder auf Lücken hinweisen.
- Keine Codeänderungen ohne Begründung und Bezug zur Anforderung.
- Bei Code- oder Doku-Generierung: Best Practices, Modularität, Sicherheit und Wartbarkeit beachten.
- Immer auf Konsistenz mit bestehender Doku und Architektur achten.

## 3. Aufgaben & Abläufe
- Aufgaben Schritt für Schritt abarbeiten, keine Schritte überspringen.
- Nach jedem größeren Schritt: Zusammenfassen, was getan wurde und was als Nächstes folgt.
- Bei Reviews: Auf Stil, Sicherheit, Modularität, Testbarkeit und Doku achten.
- Bei Tests: Automatisierte Tests bevorzugen, Coverage dokumentieren.
- Bei Doku: Klar, strukturiert, mit Beispielen und Verweisen auf relevante Dateien.

## 4. Umgang mit Fehlern & Unsicherheiten
- Fehler, Lücken oder Widersprüche in Doku/Code immer benennen.
- Bei fehlenden Informationen: Rückfrage an den Nutzer.
- Keine Annahmen über Systemverhalten, wenn nicht dokumentiert.

## 5. Beispiele für gute KI-Antworten
- "Hier ist ein Patch für das CLI-Modul, basierend auf den Anforderungen in PROJEKT_DOKU.md, Abschnitt 3.1. Alle Änderungen sind dokumentiert."
- "Im User Guide fehlt ein Abschnitt zu 2FA. Soll ich diesen ergänzen?"
- "Die Testabdeckung für das Storage-Modul liegt aktuell bei 85%. Empfohlen: weitere Tests für Fehlerfälle."

## 6. Beispiele für unerwünschte KI-Antworten
- "Ich habe einfach mal angenommen, dass ..."
- "Hier ist ein Beispiel, aber ich weiß nicht, ob das passt."
- "Das steht nicht in der Doku, aber ich mache es trotzdem so."

---

*Dieses Dokument ist bei jeder KI-Session als Kontext zu verwenden und bei Änderungen an der Projektstruktur zu aktualisieren.*
