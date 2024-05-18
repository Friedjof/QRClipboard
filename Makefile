PACKAGE_NAME = QRClipboard
PYTHON = python3

BUILD_DIR = build
DIST_DIR = dist

.PHONY: all build install uninstall clean test

all: build

build:
	$(PYTHON) setup.py sdist bdist_wheel

install: build
	pipx install .

install-venv: build
	pip install .

uninstall:
	pipx uninstall $(PACKAGE_NAME)

uninstall-venv:
	pip uninstall-all

clean:
	rm -rf $(BUILD_DIR) $(DIST_DIR) *.egg-info

test:
	$(PYTHON) -m unittest discover -s tests

upload: build
	twine upload $(DIST_DIR)/*

run:
	$(PYTHON) -m $(PACKAGE_NAME).main
