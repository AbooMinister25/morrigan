# Install fisher plugins

install-fisher:
    fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"

install-tide:
    fish -c "fisher install IlanCosman/tide@v6"
