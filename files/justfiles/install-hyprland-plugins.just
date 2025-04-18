# Install the needed hyprland plugins.

fix-hyprpm:
    #!/usr/bin/env bash
    toolbox create hyprpm
    toolbox enter hyprpm
    sudo dnf -y install hyprland hyprland-devel

    fish -c "alias --save hyprpm='toolbox run -c hyprpm env HYPRLAND_INSTANCE_SIGNATURE=\"$HYPRLAND_INSTANCE_SIGNATURE\" hyprpm'"

install-hyprland-plugins:
    #!/usr/bin/env bash
    hyprpm update
    hyprpm add https://github.com/Duckonaut/split-monitor-workspaces
    hyprpm enable split-monitor-workspaces
    hyprpm reload
