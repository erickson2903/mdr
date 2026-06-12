function git-ignore --description 'Mark file(s) as ignored by git (skip-worktree)'
    if test (count $argv) -eq 0
        echo "Usage: git-ignore <file> [file...]"
        return 1
    end
    git update-index --skip-worktree $argv
end
