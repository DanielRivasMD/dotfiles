#!/usr/bin/env zsh

####################################################################################################

navi_widget() {
	local selected
	if [ -n "$LBUFFER" ]; then
		if selected="$(printf "%s" "$(navi --print --fzf-overrides '--no-select-1' --query "${LBUFFER}" </dev/tty)")"; then
			LBUFFER="$selected"
		fi
	else
		if selected="$(printf "%s" "$(navi --print </dev/tty)")"; then
			LBUFFER="$selected"
		fi
	fi
	zle redisplay
}

zle -N navi_widget

####################################################################################################
