#!/bin/bash
# githubvisible=true

# Get the directory of the current script
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# Run the Python script with the extract_deps argument
python3 "$SCRIPT_DIR/vivadoprojecttools.py" extract_deps