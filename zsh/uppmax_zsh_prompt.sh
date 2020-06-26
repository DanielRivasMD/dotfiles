# Reference for colors: http://stackoverflow.com/questions/689765/how-can-i-change-the-color-of-my-prompt-in-zsh-different-from-normal-text

autoload -U colors && colors

setopt PROMPT_SUBST

function set_prompt() {

  # >
  PS1="%{$fg[red]%}> %{$reset_color%}"

  # Path: http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/
  PS1+="%{$fg[cyan]%}%1~%{$reset_color%}"

  # Status Code
  PS1+='%(?.. %{$fg[red]%}%?%{$reset_color%})'

  # # Git
  # if git rev-parse --is-inside-work-tree 2> /dev/null | grep -q 'true' ; then
  #   # Git status collector
  #   source ~/.dotfiles/zsh/plugins/zsh-git-prompt/zshrc.sh
  #   PS1+="$(git_super_status)$reset_color"
  #
  #   # PS1+="%{$fg[blue]%}$(git rev-parse --abbrev-ref HEAD 2> /dev/null)%{$reset_color%}"
  #   # if [ $(git status --short | wc -l) -gt 0 ]; then
  #   # 	PS1+="%{$fg[red]%}+$(git status --short | wc -l | awk '{$1=$1};1')%{$reset_color%}"
  #   # fi
  # fi


  # Timer: http://stackoverflow.com/questions/2704635/is-there-a-way-to-find-the-running-time-of-the-last-executed-command-in-the-shel
  if [[ $_elapsed[-1] -ne 0 ]]; then
    PS1+=' '
    PS1+="%{$fg[magenta]%}$_elapsed[-1]s%{$reset_color%}"
    PS1+=' '
  fi

  # PID
  if [[ $! -ne 0 ]]; then
    PS1+=' '
    PS1+="%{$fg[yellow]%}PID:$!%{$reset_color%}"
    PS1+=' '
  fi

  # Sudo: https://superuser.com/questions/195781/sudo-is-there-a-command-to-check-if-i-have-sudo-and-or-how-much-time-is-left
  CAN_I_RUN_SUDO=$(sudo -n uptime 2>&1|grep "load"|wc -l)
  if [ ${CAN_I_RUN_SUDO} -gt 0 ]
  then
    PS1+=' '
    PS1+="%{$fg_bold[red]%}SUDO%{$reset_color%}"
    PS1+=' '
  fi

  PS1+="%{$fg[white]%}∑ %{$reset_color%}% "
}

precmd_functions+=set_prompt

function preexec () {
  (( ${#_elapsed[@]} > 1000 )) && _elapsed=(${_elapsed[@]: -1000})
  _start=$SECONDS
}

function precmd () {
  (( _start >= 0 )) && _elapsed+=($(( SECONDS-_start )))
  _start=-1
}
