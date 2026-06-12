# Disable C-S terminal lock (same as zshrc)
stty -ixon

# Source CachyOS distribution defaults (Arch-based)
if test -f /usr/share/cachyos-fish-config/cachyos-config.fish
    source /usr/share/cachyos-fish-config/cachyos-config.fish
end

# Vi key bindings (replaces Prezto editor module)
fish_vi_key_bindings

# Built-in autosuggestions (replaces Prezto autosuggestions module)
set -g fish_autosuggestion_enabled 1

# Built-in syntax highlighting colors (replaces Prezto syntax-highlighting module)
set -g fish_color_normal normal
set -g fish_color_command blue
set -g fish_color_param cyan
set -g fish_color_error red --bold
set -g fish_color_valid_path --underline
set -g fish_color_quote green
set -g fish_color_operator magenta
set -g fish_color_escape yellow
set -g fish_color_autosuggestion 555
set -g fish_color_cwd blue
set -g fish_color_selection white --bold --background=brblack
set -g fish_color_search_match bryellow --background=brblack
set -g fish_color_history_current --bold

# History substring search bindings (replaces Prezto history-substring-search module)
bind -M insert up history-search-backward
bind -M insert down history-search-forward

# Ensure custom conf.d is sourced (fish does this automatically, but be explicit)
# Custom functions go in $__fish_config_dir/functions/
# Custom completions go in $__fish_config_dir/completions/
