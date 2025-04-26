# Install everforest-cursors

install-cursors:
    #!/usr/bin/env bash
    wget -cO- https://github.com/talwat/everforest-cursors/releases/latest/download/everforest-cursors-variants.tar.bz2 | tar xvjf - -C "$HOME/.local/share/icons"
    mkdir -p "$HOME/.icons/default/"
    cat <<EOF > "$HOME/.icons/default/index.theme"
    [Icon Theme]
    Name=Default
    Comment=Default Cursor Theme
    Inherits=everforest-cursors
    EOF
    gsettings set org.gnome.desktop.interface cursor-theme 'everforest-cursors'