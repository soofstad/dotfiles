function clean_branches --description "Deletes all branches not on REMOTE"
	git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D
end

function gitfix --description "Add changes, do an ammend, and force push"
	git add -u
	git commit --amend --reuse-message HEAD $argv
	git push -f
end

function main-update --description "Checkout main, pull, and go back to original branch"
    set CURRENT_BRANCH (git rev-parse --abbrev-ref HEAD) 
    git stash
    git checkout main 
    git pull 
    git checkout $CURRENT_BRANCH
    git stash pop
end