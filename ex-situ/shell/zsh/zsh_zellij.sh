#!/usr/bin/env zsh

####################################################################################################

if [[ -z "$ZELLIJ" ]]; then
	if [[ "$ZELLIJ_AUTO_ATTACH" == "true" ]]; then
		zellij attach
	else
		zellij --layout "${ZELLIJ_CONFIG_DIR}/layouts/control.kdl"
	fi

	if [[ "$ZELLIJ_AUTO_EXIT" == "true" ]]; then
		exit
	fi
fi

####################################################################################################

function current_dir() {
	local current_dir=$PWD
	if [[ $current_dir == $HOME ]]; then
		current_dir="~"
	else
		current_dir=${current_dir##*/}
	fi

	echo $current_dir
}

function change_tab_title() {
	local title=$1
	command nohup zellij action rename-tab $title >/dev/null 2>&1
}

function set_tab_to_working_dir() {
	local result=$?
	local title=$(current_dir)
	# uncomment the following to show the exit code after a failed command
	# if [[ $result -gt 0 ]]; then
	#     title="$title [$result]" 
	# fi

	change_tab_title $title
}

function set_tab_to_command_line() {
	local cmdline=$1
	change_tab_title $cmdline
}

if [[ -n $ZELLIJ ]]; then
	add-zsh-hook precmd set_tab_to_working_dir
	add-zsh-hook preexec set_tab_to_command_line
fi

####################################################################################################
