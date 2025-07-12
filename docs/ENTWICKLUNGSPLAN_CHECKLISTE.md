# CoreNAS: Schritt-für-Schritt-Entwicklungsplan (Abarbeitungs-Checkliste)

**Ziel:** Ein klarer, linearer Plan mit konkreten, abhakbaren Schritten für Einzelentwickler (mit KI-Unterstützung). Jeder Schritt ist so formuliert, dass er direkt umgesetzt werden kann – für Mensch und KI.

---

## 1. Projekt-Setup & Toolchain
- [ ] Git-Repository anlegen (z. B. GitHub, GitLab)
- [ ] Dokumentation (PROJEKT_DOKU.md, Entwicklungsplan) ins Repo übernehmen
- [ ] Python-Umgebung (venv) einrichten
- [ ] Node.js/NPM installieren
- [ ] Basis-Abhängigkeiten (apt, pip, npm) installieren
- [ ] VS Code/IDE einrichten (mit Linter, Black, Flake8, mypy, Copilot)
- [ ] Pre-Commit-Hooks für Linting/Formatierung aktivieren
- [ ] CI/CD-Workflow (z. B. GitHub Actions) initialisieren

## 2. Verzeichnisstruktur & Grundgerüst
- [ ] Verzeichnisstruktur nach Doku anlegen (cli/, backend/, frontend/, tests/, docs/ ...)
- [ ] README.md mit Projektüberblick und Quickstart ergänzen
- [ ] requirements.txt, package.json, Makefile anlegen

## 3. CLI-Basis & Modul-Skelette
- [ ] CLI-Hauptskript (z. B. corenas.py) anlegen
- [ ] CLI-Framework (click/typer) einbinden
- [ ] Für jedes Modul (IAM, Network, Device, Storage, Share, Mount, Log):
    - [ ] Unterordner und __init__.py anlegen
    - [ ] Platzhalter für Subkommandos (add, del, list, ...)
    - [ ] Erste Dummy-Kommandos mit JSON-Ausgabe implementieren
- [ ] CLI-Hilfetexte und --json-Option ergänzen

## 4. Backend-Basis (Flask-Proxy)
- [ ] Flask-App (app.py) anlegen
- [ ] CLI-Proxy-Mechanismus (subprocess) implementieren
- [ ] Authentifizierung (PAM, Session, einfache 2FA) integrieren
- [ ] API-Endpoints für Web-UI (nur als Proxy zur CLI)
- [ ] Logging und Fehlerbehandlung ergänzen

## 5. Frontend-Basis (Vue.js)
- [ ] Vue-Projekt initialisieren (npm create vite@latest)
- [ ] Basis-Komponenten (Login, Dashboard, Userverwaltung, Storage-Übersicht) anlegen
- [ ] State-Management (Pinia/Vuex) einrichten
- [ ] i18n (vue-i18n) konfigurieren
- [ ] Verbindung zum Backend herstellen (axios)

## 6. Implementierung der Kernmodule (MVP)
- [ ] IAM: User/Group-Management (add, del, list, passwd, ACL)
- [ ] Storage: ZFS & single_disk (create, list, status, delete)
- [ ] Share: SMB oder NFS (create, list, delete, ACL)
- [ ] Mount: lokale Mounts (add, remove, list)
- [ ] Audit-Log: Logging aller sicherheitsrelevanten Aktionen
- [ ] Security: Passwort-Policy, einfache 2FA, Brute-Force-Schutz
- [ ] Web-UI: Login, Userverwaltung, Storage/Share-Übersicht

## 7. Tests & Qualitätssicherung
- [ ] Unit-Tests für alle CLI-Kommandos (pytest)
- [ ] Integrationstests für Workflows (z. B. User anlegen, Share bereitstellen)
- [ ] End-to-End-Tests für Web-UI (Cypress/Playwright)
- [ ] Coverage-Report generieren (>90% anstreben)
- [ ] Linting, Typprüfung, Security-Checks (bandit, lynis)

## 8. Backup, Restore & Recovery
- [ ] Backup-CLI (Konfig, Daten, Meta) implementieren
- [ ] Restore- und Recovery-Workflows testen
- [ ] Disaster-Recovery-Checkliste dokumentieren

## 9. Dokumentation & Release
- [ ] Entwickler- und User-Doku vervollständigen
- [ ] Changelog und Release-Notes anlegen
- [ ] Erstes Release (Tag, Version, Release-Notes)
- [ ] Issue-Templates, Contribution Guide, Code of Conduct ergänzen

## 10. Iterative Erweiterung (nach MVP)
- [ ] Weitere Storage-Backends (btrfs, lvm, mdadm)
- [ ] Multiprotokoll-Shares (gleichzeitig SMB/NFS)
- [ ] Netzwerk-Features (VLAN, Bonding, WiFi)
- [ ] Monitoring/Alerting-Integrationen (Prometheus, E-Mail, Webhooks)
- [ ] Internationalisierung (mehr Sprachen)
- [ ] Compliance- und Security-Features (DSGVO, Audit-Export)
- [ ] Performance-Optimierung, Usability-Verbesserungen

---

**Hinweise:**
- Nach jedem Schritt: Testen, committen, Feedback einholen, Doku aktualisieren
- KI kann für Code, Tests, Doku, Refactoring, Recherche und Automatisierung genutzt werden
- Die Reihenfolge kann je nach Bedarf angepasst werden – Fokus immer auf ein lauffähiges, testbares System
