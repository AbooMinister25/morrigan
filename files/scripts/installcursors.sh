#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

wget -cO- https://github.com/talwat/everforest-cursors/releases/latest/download/everforest-cursors-variants.tar.bz2 | tar xfg - -C "$HOME/.local/share/icons"

cat > "$HOME/.icons/default/index.theme"<< EOF
[Icon Theme]
Name=Default
Comment=Default Cursor Theme
Inherits=everforest-cursors
EOF
