
# PROMPT
function set_prompt {
  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local USERGREEN="\[\033[01;32m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  local RESETCOLOR="\[\e[00m\]"

  # Directory
  PS1="$RED> $CYAN\W"

  # Git
  if git rev-parse --is-inside-work-tree 2> /dev/null | grep -q 'true'
  then
    PS1+="$WHITE["
    PS1+="$YELLOW$(git rev-parse --abbrev-ref HEAD 2> /dev/null)$RESETCOLOR"
    if [ $(git status --short | wc -l) -gt 0 ]
    then
      PS1+="$RED+$(git status --short | awk 'END{print NR}')$RESETCOLOR"
    fi
    PS1+="$WHITE]"
  fi

  # Export prompt
  PS1+="$WHITE\$ $RESETCOLOR"
}
