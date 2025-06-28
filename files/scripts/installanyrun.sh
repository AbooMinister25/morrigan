#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

dnf install -y git cargo
dnf install -y gobject-introspection-devel gtk-layer-shell gtk-layer-shell-devel gtk3-devel glib2 glibc

git clone https://github.com/anyrun-org/anyrun
cd anyrun

cargo build --release
cargo install --path anyrun/ --root bin/

mkdir plugins
cp target/release/*.so ./plugins