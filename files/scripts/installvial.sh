#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

TMP_DIR="/tmp/install_vial"
INSTALL_BIN_DIR="/usr/local/bin"
DESKTOP_DIR="/usr/local/share/applications"

mkdir -p "$TMP_DIR"
cd "$TMP_DIR"

curl -O https://github.com/vial-kb/vial-gui/releases/download/v0.7.3/Vial-v0.7.3-x86_64.AppImage
chmod a+x "Vial-v0.7.3-x86_64.AppImage"

mkdir -p "$INSTALL_BIN_DIR"
mv "Vial-v0.7.3-x86_64.AppImage" "$INSTALL_BIN_DIR"

mkdir -p "$DESKTOP_DIR"
cat > "$DESKTOP_DIR/Vial.desktop"<< EOF
[Desktop Entry]
Type=Application
Version=0.7.3
Name=Vial
Comment=QMK fork for configuring your keyboard in real time
Exec=$INSTALL_BIN_DIR/Vial-v0.7.3-x86_64.AppImage
EOF

cd ~
rm -rf "$TMP_DIR"
