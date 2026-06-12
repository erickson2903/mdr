function fish_prompt --description 'sorin-inspired prompt'
    # Save last status
    set -l last_status $status

    # Line 1: user@host
    set -l user (whoami)
    set -l host (hostname -s)
    set -l user_host (set_color brcyan)"$user"(set_color normal)"@"(set_color brcyan)"$host"(set_color normal)

    # Line 1: current directory (abbreviated)
    set -l cwd (set_color blue)(prompt_pwd)(set_color normal)

    # Line 1: git info
    set -l git_info ""
    set -l git_branch (command git symbolic-ref --short HEAD 2>/dev/null)
    if test -n "$git_branch"
        set -l git_dirty (command git status --porcelain 2>/dev/null | head -1)
        if test -n "$git_dirty"
            set git_info (set_color red)" ($git_branch✗)"(set_color normal)
        else
            set git_info (set_color green)" ($git_branch)"(set_color normal)
        end
    end

    # Line 1: return code if non-zero
    set -l ret_str ""
    if test $last_status -ne 0
        set ret_str (set_color red)" [$last_status]"(set_color normal)
    end

    # Line 2 prompt character
    set -l prompt_char (set_color magenta)
    if test (id -u) -eq 0
        set prompt_char "$prompt_char# "
    else
        set prompt_char "$prompt_char% "
    end
    set prompt_char "$prompt_char"(set_color normal)

    # Vi mode indicator
    set -l mode_indicator ""
    if test "$fish_key_bindings" = "fish_vi_key_bindings"
        switch $fish_bind_mode
            case default
                set mode_indicator (set_color --bold red)"N"(set_color normal)
            case insert
                set mode_indicator (set_color --bold green)"I"(set_color normal)
            case replace_one replace
                set mode_indicator (set_color --bold yellow)"R"(set_color normal)
            case visual
                set mode_indicator (set_color --bold magenta)"V"(set_color normal)
        end
    end

    echo -n -s $user_host " " $cwd $git_info $ret_str
    echo
    echo -n -s $mode_indicator $prompt_char
end
