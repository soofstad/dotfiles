function clean_branches --description "Deletes all branches not on REMOTE"
	git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D
end

function gitfix --description "Add changes, do an ammend, and force push"
	git add -u
	git commit --amend --reuse-message HEAD
	git push -f
end
