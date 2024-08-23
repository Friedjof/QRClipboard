PACKAGE_NAME = QRClipboard
PYTHON = python3

BUILD_DIR = build
DIST_DIR = dist

.PHONY: all build install uninstall clean test

all: build

build:
	$(PYTHON) -m pip install --upgrade build
	$(PYTHON) -m build

install: build
	pipx install .

install-venv: build
	pip install .

uninstall:
	pipx uninstall $(PACKAGE_NAME)

uninstall-venv:
	pip uninstall $(PACKAGE_NAME)

clean:
	rm -rf $(BUILD_DIR) $(DIST_DIR) *.egg-info

upload: build
	twine upload $(DIST_DIR)/*

run:
	$(PYTHON) -m $(PACKAGE_NAME).main
