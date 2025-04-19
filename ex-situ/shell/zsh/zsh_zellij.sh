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

# rename tab with current directory
# function current_dir() {
# 	local current_dir=$PWD
# 	if [[ $current_dir == $HOME ]]; then
# 		current_dir="~"
# 	else
# 		current_dir=${current_dir##*/}
# 	fi

# 	echo $current_dir
# }

# function change_tab_title() {
# 	local title=$1
# 	command nohup zellij action rename-tab $title >/dev/null 2>&1
# }

# function set_tab_to_working_dir() {
# 	local result=$?
# 	local title=$(current_dir)
# 	# uncomment the following to show the exit code after a failed command
# 	# if [[ $result -gt 0 ]]; then
# 	#     title="$title [$result]" 
# 	# fi

# 	change_tab_title $title
# }

# function set_tab_to_command_line() {
# 	local cmdline=$1
# 	change_tab_title $cmdline
# }

# if [[ -n $ZELLIJ ]]; then
# 	add-zsh-hook precmd set_tab_to_working_dir
# 	add-zsh-hook preexec set_tab_to_command_line
# fi

####################################################################################################

# function: run_zellij_bat
# description: run zellij with bat
# arguments:
#   $1: command
#   $2: filename

zf() {
  if [ -z "$1" ]; then
    echo "Error: Command argument is missing."
    return 1
  fi
  cmd=$(printf "%s" "$1") # store command

  if [ $# -eq 1 ]; then #check if only one argument is passed
    echo "Error: At least one filename argument is required."
    return 1
  fi

  # iterate through arguments
  shift # remove first argument

  file=$(printf "%s" "$1") # sanitize
  if [ ! -f "$file" ]; then
    echo "Error: File '$file' not found."
    return 1
  fi

  zellij run \
    --name float \
    --floating \
    --height 100 \
    --width 100 \
    --x 100 \
    --y 0 \
    -- "$cmd" "$file"
}

####################################################################################################
