function git-track --description 'Unmark file(s) as ignored by git (no-skip-worktree)'
    if test (count $argv) -eq 0
        echo "Usage: git-track <file> [file...]"
        return 1
    end
    git update-index --no-skip-worktree $argv
end
