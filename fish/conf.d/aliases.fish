# Aliases — replaces Prezto utility module + custom .zsh.custom/

# ---------- ls (from CachyOS config, ensure eza) ----------
if type -q eza
    alias ls='eza -al --color=always --group-directories-first --icons'
    alias la='eza -a --color=always --group-directories-first --icons'
    alias ll='eza -l --color=always --group-directories-first --icons'
    alias lt='eza -aT --color=always --group-directories-first --icons'
    alias l.="eza -a | grep -e '^\.'"
end

# ---------- Directory navigation ----------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# ---------- Safe ops (like Prezto utility module) ----------
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -I'
alias ln='ln -i'

# ---------- grep ----------
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# ---------- Misc ----------
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias wget='wget -c'
