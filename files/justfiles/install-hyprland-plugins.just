# Install the needed hyprland plugins.

fix-hyprpm:
    #!/usr/bin/env bash
    toolbox create hyprpm
    toolbox enter hyprpm
    sudo dnf -y install hyprland hyprland-devel
    sudo dnf -y copr enable solopasha/hyprland
    sudo dnf -y swap aquamarine aquamarine
    exit

install-hyprland-plugins:
    #!/usr/bin/env bash
    hyprpm update
    hyprpm add https://github.com/Duckonaut/split-monitor-workspaces
    hyprpm enable split-monitor-workspaces
    hyprpm reload
