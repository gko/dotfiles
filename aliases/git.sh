# generate aliases from gitconfig aliases
# https://dev.to/konstantin/generating-shorter-aliases-from-gitconfig-file-4g5m
function generateAliasesFromGit() {
	git config --get-regexp ^alias\\. | while read gitAlias; do
		local aliasName=$(echo $gitAlias | sed -E 's/^alias\.([a-z_\-]*).*/\1/')

		# alias only if there is no collision
		if ! type "g$aliasName" >/dev/null 2>&1; then
			alias g$aliasName="git $aliasName"
		fi
	done
}

# generateAliasesFromGit
