# Install everforest-cursors

theme_text := '''
[Icon Theme]
Name=Default
Comment=Default Cursor Theme
Inherits=everforest-cursors
EOF  
'''

install-cursors:
    #!/usr/bin/env bash
    wget -cO- https://github.com/talwat/everforest-cursors/releases/latest/download/everforest-cursors-variants.tar.bz2 | tar xfg - -C "$HOME/.local/share/icons"
    cat > "$HOME/.icons/default/index.theme"<< EOF "{{theme_text}}"
    gsettings set org.gnome.desktop.interface cursor-theme 'everforest-cursors'