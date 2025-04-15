#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"

# curl -O https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish 
# fish fisher.fish | source
# fish -c fisher install jorgebucaran/fisher