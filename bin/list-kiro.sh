path=$HOME/.kiro/sessions/cli
kiro-cli chat --resume-id \
	$(lsd -1t $HOME/.kiro/sessions/cli/ |\
	grep '\.json$' |\
	awk -v path=$path '{print substr($1, 1, length($1)-5)"  "path"/"$1}'| \
	fzf --preview="jq '.title' {2}" --with-nth='{1}' --accept-nth='{1}')
