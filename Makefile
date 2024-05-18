# Name des Python-Pakets
PACKAGE_NAME = QRClipboard

# Python-Interpreter (kann angepasst werden, falls ein virtuellerenv verwendet wird)
PYTHON = python3

# Verzeichnis für Builds und Distributionen
BUILD_DIR = build
DIST_DIR = dist

.PHONY: all build install uninstall clean test

all: build

# Befehl zum Bauen des Pakets
build:
	$(PYTHON) setup.py sdist bdist_wheel

# Befehl zum Installieren des Pakets
install: build
	pip install .

# Befehl zum Deinstallieren des Pakets
uninstall:
	pip uninstall -y $(PACKAGE_NAME)

# Befehl zum Bereinigen der Build-Verzeichnisse
clean:
	rm -rf $(BUILD_DIR) $(DIST_DIR) *.egg-info

# Befehl zum Testen des Pakets (optional, falls Testdateien vorhanden sind)
test:
	$(PYTHON) -m unittest discover -s tests

# Befehl zum Hochladen des Pakets auf PyPI (optional)
upload: build
	twine upload $(DIST_DIR)/*

# Befehl zum Ausführen des Skripts (optional)
run:
	$(PYTHON) -m $(PACKAGE_NAME).main
