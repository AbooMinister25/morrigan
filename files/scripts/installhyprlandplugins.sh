#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

hyprpm add https://github.com/Duckonaut/split-monitor-workspaces
hyprpm enable split-monitor-workspaces
hyprpm reload
