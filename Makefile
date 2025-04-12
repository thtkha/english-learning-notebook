VENV_DIR = venv
PYTHON = $(VENV_DIR)/bin/python
PIP = $(VENV_DIR)/bin/pip
REQ_FILE = requirements.txt

default: setup

setup: venv install

venv:
    @echo "Creating virtual environment..."
    python3 -m venv $(VENV_DIR)

install: $(VENV_DIR)
    @echo "Installing dependencies..."
    $(PIP) install --upgrade pip
    $(PIP) install -r $(REQ_FILE)