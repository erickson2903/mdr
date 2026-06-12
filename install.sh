#!/bin/sh
if [ ! -d "$HOME/.mdr" ]; then
    echo "Installing MDR for the first time"

    # Backup existing fish config if present
    if [ -d "$HOME/.config/fish" ] && [ ! -L "$HOME/.config/fish" ]; then
        echo "Backing up existing fish config to ~/.config/fish.bak"
        mv "$HOME/.config/fish" "$HOME/.config/fish.bak"
    fi

    # Clone fonts (optional, still useful for tmux)
    git clone https://github.com/powerline/fonts.git --depth=1 "$HOME/fonts"
    ~/fonts/install.sh
    rm -rf ~/fonts

    # Clone MDR
    git clone --depth=1 https://github.com/ericksonDyeggo/mdr.git "$HOME/.mdr"

    # Symlink fish config (replaces zsh/Prezto)
    ln -fs "$HOME/.mdr/fish" "$HOME/.config/fish"

    # Symlink other dotfiles (unchanged)
    ln -fs "$HOME/.mdr/gitignore" "$HOME/.gitignore"
    ln -fs "$HOME/.mdr/gitconfig" "$HOME/.gitconfig"
    ln -fs "$HOME/.mdr/tmux.conf" "$HOME/.tmux.conf"

    # Set fish as default shell
    chsh -s /usr/bin/fish

    echo "MDR installed. Please log out and back in (or start a new terminal)."
else
    echo "MDR is already installed"
fi
