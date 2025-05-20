#!/bin/bash
# githubvisible=true

# Check if the system is 64-bit
ARCH=$(uname -m)
if [[ "$ARCH" != "x86_64" ]]; then
    echo "You cannot open this project in the Vivado Design Suite on a 32-bit OS. You must use a 64-bit OS to open this project in the Vivado Design Suite."
    exit 1
fi

# Get the directory of the current script
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
cd "$SCRIPT_DIR"

# Check if the configuration file exists
CONFIG_FILE="vivadoprojectsettings.ini"
if [[ -f "$CONFIG_FILE" ]]; then
    # Read VivadoProjectName and VivadoToolsPath from the configuration file
    VivadoProjectName=$(grep "^VivadoProjectName=" "$CONFIG_FILE" | cut -d'=' -f2)
    VivadoToolsPath=$(grep "^VivadoToolsPath=" "$CONFIG_FILE" | cut -d'=' -f2)

    # Check if VivadoProjectName and VivadoToolsPath are set
    if [[ -z "$VivadoProjectName" || -z "$VivadoToolsPath" ]]; then
        echo "Error: VivadoProjectName or VivadoToolsPath is not set in $CONFIG_FILE."
        exit 1
    fi

    # Change to the VivadoProject directory
    cd "VivadoProject" || { echo "Error: VivadoProject directory not found."; exit 1; }

    # Launch Vivado
    "$VivadoToolsPath/bin/vivado" "$VivadoProjectName.xpr"
    if [[ $? -ne 0 ]]; then
        echo
        echo "The script failed to launch the Vivado Design Suite."
        echo
        exit 1
    fi
else
    echo "Couldn't find $SCRIPT_DIR/$CONFIG_FILE."
    echo
    exit 1
fi