# Install the needed hyprland plugins.

install-hyprland-plugins:
    #!/usr/bin/env bash
    hyprpm update
    hyprpm add https://github.com/Duckonaut/split-monitor-workspaces
    hyprpm enable split-monitor-workspaces
    hyprpm reload
