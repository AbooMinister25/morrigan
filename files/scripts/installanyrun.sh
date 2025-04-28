#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

dnf install -y git
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

dnf install -y gobject-introspection-devel
dnf install -y gtk-layer-shell
dnf install -y gtk-layer-shell-devel
dnf install -y gtk3-devel
dnf install -y glib2
dnf install -y glibc
dnf install -y gdk-pixbuf2
dnf install -y gdk-puxbuf2-devel
dnf install -y cairo cairo-devel cairo-govject cairo-gobject-devel
dnf install -y pango pango-devel

git clone https://github.com/anyrun-org/anyrun && cd anyrun

mkdir -p /bin
cargo build --release
cargo install --path anyrun/ --root bin/

mkdir -p plugins/
cp target/release/*.so plugins/
