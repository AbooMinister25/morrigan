#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

dnf install -y git
dnf install -y golang

git clone https://github.com/nwg-piotr/nwg-dock-hyprland
cd nwg-dock-hyprland

dnf install -y gobject-introspection-devel
dnf install -y gtk-layer-shell
dnf install -y gtk-layer-shell-devel
dnf install -y gtk3-devel
dnf install -y glib2
dnf install -y glibc

make get
make build
make install