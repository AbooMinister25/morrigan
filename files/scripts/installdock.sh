#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

# apt-get install -y git

dnf install -y git
dnf install -y golang


git clone https://github.com/nwg-piotr/nwg-dock-hyprland
cd nwg-dock-hyprland

# apt-get install 

# apt-get install -y libgtk-layer-shell-dev
# apt-get install -y libgirepository1.0-dev
# apt-get install -y libc6-dev
# apt-get install -y libcairo2-dev
# apt-get install -y libpango1.0-dev
# apt-get install -y libglib2.0-dev
# apt-get install -y libgtk-3-dev
# apt-get install -y libglib2.0


# apt-get install -y libgtk-layer-shell-dev
# apt-get install -y libgirepository1.0-dev


# dnf install -y atk cairo cairo-gobject fontconfig freetype gdk-pixbuf2 glib2 glibc gtk-layer-shell gtk3 harfbuzz hyprland pango zlib-ng-compat gobje

dnf install -y gobject-introspection-devel
dnf install -y gtk-layer-shell
dnf install -y gtk-layer-shell-devel
dnf install -y gtk3-devel
dnf install -y glib2
dnf install -y glibc

make get
make build
make install