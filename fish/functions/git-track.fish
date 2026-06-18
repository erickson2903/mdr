function git-track --description 'Unmark file(s) as ignored by git (no-skip-worktree)'
    if test (count $argv) -eq 0
        echo "Usage: git-track <file|directory> [file|directory...]"
        return 1
    end
    set -l files
    for arg in $argv
        if test -d $arg
            set files $files (git ls-files $arg)
        else
            set files $files $arg
        end
    end
    if test (count $files) -eq 0
        return
    end
    git update-index --no-skip-worktree $files
end
