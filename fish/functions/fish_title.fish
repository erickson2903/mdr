function fish_title --description 'Set terminal title (replaces Prezto terminal module)'
    # Format: user@host: cwd (like Prezto's '%n@%m: %s')
    set -l user (whoami)
    set -l host (hostname -s)
    set -l dir (prompt_pwd)
    echo "$user@$host: $dir"
end
