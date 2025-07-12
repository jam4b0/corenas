# MVP, Iterationen & agile Entwicklung

**MVP (Minimum Viable Product):**
Das MVP ist die kleinstmögliche, lauffähige Version von CoreNAS, die alle Kernfunktionen abbildet und produktiv getestet werden kann. Ziel: Schnell Feedback bekommen, Risiken minimieren, Fokus auf das Wesentliche.

**MVP-Umfang:**
- CLI-Module für User/Group (IAM), Storage (nur 1–2 Backends, z. B. ZFS & single_disk), Share (nur SMB oder NFS), Mount (nur lokale Mounts)
- Backend-Proxy (Flask) mit Auth, Session, CLI-Proxy
- Einfaches Web-UI (Login, Userverwaltung, Storage/Share-Übersicht)
- Basis-Security (Passwort, Audit-Log, einfache 2FA)
- Grundlegende Tests, Logging, Doku

**Empfohlene Reihenfolge:**
1. IAM-CLI (User, Group, ACL, Passwort)
2. Storage-CLI (ZFS, single_disk)
3. Share-CLI (SMB oder NFS)
4. Mount-CLI (lokal)
5. Backend-Proxy (nur Auth & CLI-Proxy)
6. Web-UI (Login, Übersicht, einfache Userverwaltung)
7. Security (Passwort, Audit, einfache 2FA)
8. Tests, Logging, Doku

**Iterative Erweiterung:**
- Nach MVP: Schrittweise weitere Backends, Protokolle, Features, Security, Monitoring, Backup, i18n, Compliance, Usability, Performance
- Nach jedem Schritt: Testen, Feedback einholen, Doku und Tests aktualisieren

**Agile Entwicklung:**
- In kleinen, abgeschlossenen Inkrementen arbeiten (z. B. pro Modul, Feature, CLI-Kommando)
- Regelmäßig refaktorisieren und technische Schulden abbauen
- Fokus auf reale Nutzbarkeit und Wartbarkeit

# Entwicklungsplan für Einzelentwickler (mit KI-Unterstützung)

**Ziel:** Schrittweise, realistische Umsetzung von CoreNAS als Einzelentwickler mit KI-Tools (Copilot, ChatGPT, automatisierte Tests, Doku-Generatoren).

## 1. Initiale Vorbereitung (2–3 Wochen)
- Projekt-Repo anlegen, Doku übernehmen, Toolchain (Python, Node, Docker, VS Code, Git, CI/CD) einrichten
- Basis-Tests, Linter, Black, Flake8, mypy, pytest, Coverage, Pre-Commit-Hooks
- Beispielmodule (Hello World CLI, Backend, Frontend) lauffähig machen

## 2. Architektur & Modularisierung (2–3 Wochen)
- Verzeichnisstruktur nach Doku anlegen (CLI/Backend/Frontend)
- Modul-Skelette für alle Kernmodule (IAM, Network, Device, Storage, Share, Mount, Log)
- Schnittstellen, Datenflüsse, JSON-Schemas, Fehlerbehandlung definieren

## 3. Implementierung der Kernmodule (12–16 Wochen)
- IAM (User, Group, ACL, 2FA, Audit)
- Network (systemd-networkd, Profile, VLAN, Bonding)
- Device (Scan, Info, Wipe, SMART)
- Storage (ZFS, btrfs, LVM, mdadm, single_disk, Assistent)
- Share (SMB, NFS, Multiprotokoll, ACL)
- Mount (systemd units, Templates, Automount)
- Log/Monitoring (Audit, Export, Alerting)
- Für jedes Modul: erst CLI, dann Backend-Anbindung, dann Frontend-Komponente

## 4. Web-UI & Integration (6–8 Wochen)
- Vue.js-Frontend aufsetzen, Auth, State-Management, i18n
- Module als Komponenten abbilden, CLI-Proxy im Backend anbinden
- Usability, Fehlerhandling, Security (2FA, Rechteprüfung)

## 5. Security, Compliance, Backup (3–4 Wochen)
- Security-Features (2FA, Passwort-Policy, Brute-Force-Schutz, Audit-Log)
- Backup/Restore-CLI, Disaster Recovery, Compliance-Checks

## 6. Testabdeckung, CI/CD, Doku (4–6 Wochen)
- Unit-/Integrationstests für alle Module, Coverage >90%
- End-to-End-Tests (Cypress/Playwright)
- Automatisierte Builds, Linting, Security-Checks (Bandit, Lynis)
- Entwickler- und User-Doku, Release-Notes, Changelog

## 7. Stabilisierung & Release (2–4 Wochen)
- Bugfixing, Refactoring, Performance-Optimierung
- Test-Deployments, Hardware-Tests, Community-Feedback
- Erstes Release, Support-Kanäle, Issue-Templates

**Tipps:**
- Immer iterativ und testgetrieben arbeiten (TDD/CI/CD)
- KI für Code-Generierung, Tests, Doku, Refactoring und Recherche nutzen
- Regelmäßig Backups und Branches anlegen
- Fokus auf MVP und Erweiterbarkeit, nicht Perfektion
- Zeit für Hardware- und Integrationstests einplanen

**Empfohlene Reihenfolge:**
1. CLI-Module → 2. Backend-Proxy → 3. Frontend → 4. Security/Backup → 5. Tests/Doku → 6. Release

**Zeitbedarf gesamt:**
8–12 Monate (realistisch, inkl. Pausen, Bugfixes, Einarbeitung)
