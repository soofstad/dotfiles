function clean_branches --description "Deletes all branches not on REMOTE"
	git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D
end
