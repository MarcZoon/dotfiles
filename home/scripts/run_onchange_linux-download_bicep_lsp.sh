#!/bin/bash
set -e

INSTALL_DIR="/usr/local/bin/bicep-langserver"
BICEP_URL="https://github.com/Azure/bicep/releases/latest/download/bicep-langserver.zip"

# Check if already installed
if [ -x "$INSTALL_DIR/Bicep.LangServer.dll" ]; then
    echo "Bicep LSP already installed at $INSTALL_DIR. Skipping..."
    exit 0
fi

# Ensure we have write permissions or use sudo
if [ ! -w "$(dirname "$INSTALL_DIR")" ]; then
    echo "Requires sudo to write to $(dirname "$INSTALL_DIR")"
    SUDO="sudo"
else
    SUDO=""
fi

# Create temporary directory
TMPDIR=$(mktemp -d)
trap 'rm -rf "$TMPDIR"' EXIT

# Download and install
cd "$TMPDIR"
curl -fLO "$BICEP_URL"

# Remove old installation if exists
$SUDO rm -rf "$INSTALL_DIR"

# Unzip to target directory
$SUDO unzip -d "$INSTALL_DIR" bicep-langserver.zip

echo "Bicep LSP installed to $INSTALL_DIR"
