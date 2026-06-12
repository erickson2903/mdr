# Environment variables — replaces Prezto environment module + SSH identities

# Editor
set -gx EDITOR vim
set -gx VISUAL vim

# Pager
set -gx PAGER less
set -gx LESS -R

# SSH agent and identities (matching Prezto SSH module)
set -gx SSH_KEY_PATH $HOME/.ssh

# LS colors (enable colored output)
set -gx LS_COLORS (vivid generate molokai 2>/dev/null; or echo "di=1;34:ln=1;36:so=1;35:pi=33:ex=1;32:bd=1;33;40:cd=1;33;40:su=1;37;41:sg=1;37;46:tw=1;37;42:ow=1;37;43")

# History settings (replacing Prezto history module — fish uses built-in history)
# Set history session name (leave as default "fish")
set -g fish_history fish

# Locale
set -gx LANG en_US.UTF-8
