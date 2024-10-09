#!/usr/bin/env zsh

####################################################################################################

_call_zi() {
	local dir="$(eval "zoxide query -i")"

	if [[ -z "$dir" ]]; then
		zle redisplay
		return 0
	fi

	zle push-line
	BUFFER="cd -- ${(q)dir}"
	zle accept-line
	local ret=$?
	unset dir
	zle reset-prompt
	return $ret
}

zle -N _call_zi

####################################################################################################
