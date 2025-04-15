#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

RELEASE_URL="https://github.com/gabm/Satty/releases/latest/download/satty-x86_64-unknown-linux-gnu.tar.gz/"
TMP_DIR="/tmp/install_satty"
INSTALL_BIN_DIR="/usr/local/bin"
DESKTOP_DIR="$HOME/.local/share/applications"

mkdir -p "$TMP_DIR"
cd "$TMP_DIR"

curl -s -L "$RELEASE_URL" -o satty.tar.gz
tar -xzf satty.tar.gz

chmod +x ./satty
mv ./satty "$INSTALL_BIN_DIR"

mkdir -p "$DESKTOP_DIR"
mv satty.desktop "$DESKTOP_DIR"

cd ~
rm -rf "$TMP_DIR"
