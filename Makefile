# CoreNAS Makefile

.PHONY: help lint format test clean

help:
	@echo "Verfügbare Befehle:"
	@echo "  lint    - Code-Style-Checks (flake8, mypy)"
	@echo "  format  - Code automatisch formatieren (black, isort)"
	@echo "  test    - Tests ausführen (pytest)"
	@echo "  clean   - Build-/Cache-Dateien entfernen"

lint:
	. corenas-venv/bin/activate && flake8 src && mypy src

format:
	. corenas-venv/bin/activate && black src && isort src

test:
	. corenas-venv/bin/activate && pytest

clean:
	rm -rf .pytest_cache .mypy_cache .coverage htmlcov dist build
