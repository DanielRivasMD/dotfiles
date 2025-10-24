#!/usr/bin/env zsh

####################################################################################################

zoxide_widget() {
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

zle -N zoxide_widget

####################################################################################################
