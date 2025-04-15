#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

apt update
apt install -y git
apt install -y meson valac valadoc libgtk-3-dev libgtk-layer-shell-dev gobject-introspection libgirepository1.0-dev

git clone https://github.com/aylur/astal.git /tmp/astal

cd /tmp/astal/lib/astal/io
meson setup --prefix /usr build
meson install -C build

cd /tmp/astal/lib/astal/gtk3
meson setup --prefix /usr build
meson install -C build

cd /tmp/astal/lang/gjs
meson setup --prefix /usr build
meson install -C build

# Install AGS

apt install go
git clone https://github.com/aylur/ags.git
cd ags

go install -ldflags "\
    -X 'main.gtk4LayerShell=$(pkg-config --variable=libdir gtk4-layer-shell-0)/libgtk4-layer-shell.so' \
    -X 'main.astalGjs=$(pkg-config --variable=srcdir astal-gjs)'"

mv $GOPATH/bin/ags /usr/bin/ags