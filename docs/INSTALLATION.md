# CoreNAS: Anforderungen & Empfehlungen für Entwicklungsumgebung und Installation

## 1. Entwicklungsumgebung (Dev-Setup)

**Ziel:** Einheitliche, reproduzierbare Umgebung für Entwicklung, Test und Build.

### Anforderungen
- Betriebssystem: Debian 12 (empfohlen), Ubuntu 22.04+ oder kompatibel
- Python 3.11+ (venv, pip)
- Node.js 20+, npm
- Docker (für Tests, optionale Containerisierung)
- Git, VS Code (oder vergleichbare IDE)
- Linter: Black, Flake8, mypy, isort
- Pre-Commit-Hooks für Linting/Formatierung
- CI/CD-Integration (z. B. GitHub Actions, GitLab CI)
- Testdatenbank (SQLite, ggf. Mock-Daten)
- Beispielkonfigurationen und Testdaten im Repo

### Empfehlungen
- Nutzung von .env-Dateien für Umgebungsvariablen
- Automatisierte Setup-Skripte (z. B. make dev, setup.sh)
- Dokumentation aller Abhängigkeiten in requirements.txt und package.json
- Regelmäßige Updates und Security-Checks (bandit, dependabot)

---

## 2. Installation & Deployment (Produktivsystem)

**Ziel:** Einfache, sichere und reproduzierbare Installation auf Zielsystemen.

### Anforderungen
- Installation via DEB-Paket (empfohlen für Produktion)
    - Paket enthält: CLI, Backend, Systemd-Units, Konfigurationsdateien, Abhängigkeiten
    - Automatische Einrichtung von User/Group, Pfaden, Rechten
    - Systemd-Service für Backend/Web-UI
    - Postinst-Skript für Initialkonfiguration
- Alternativ: Installationsskript (bash) für Test/Dev
    - Installiert alle Abhängigkeiten (apt, pip, npm)
    - Legt Verzeichnisse, User, Rechte an
    - Startet Services und prüft Status
- Dokumentation aller Systemvoraussetzungen und Schritte
- Unattended/Headless-Install möglich
- Sicheres Default-Setup (keine offenen Ports, sichere Passwörter, Logging aktiviert)

### Empfehlungen
- Bereitstellung von Beispiel- und Default-Konfigurationen
- Automatisierte Health-Checks nach Installation
- Optionale Deinstallations-/Cleanup-Skripte
- Hinweise zu Updates, Backup und Recovery

---

*Diese Anforderungen sind verbindlich für alle CoreNAS-Entwickler und für die Bereitstellung von Releases. Detaillierte Anleitungen und Skripte werden in separaten Dateien (z. B. INSTALLATION.md, setup.sh) bereitgestellt.*
