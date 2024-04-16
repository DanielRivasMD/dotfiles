#!/bin/sh
####################################################################################################

forge() {
  # config
  source "${IN_SILICO}/.config/config.sh"

  ####################################################################################################
  # daemon
  ####################################################################################################

  # control daemon
  source "${IN_SILICO}/.daemon.sh"
  if check_daemon
  then
    # create group
    pueue group add "${pueueFG}"

    # parallel jobs
    pueue parallel --group "${pueueFG}" 3
  else
    return 0
  fi

  ####################################################################################################
  # alacritty
  ####################################################################################################

  # watch alacritty
  pueue add --group "${pueueFG}" -- watchexec --watch ~/.archive/in-situ/alacritty/alacritty.yml -- 'source ~/.archive/in-silico/.forge/alacritty.sh'

  ####################################################################################################
  # goku
  ####################################################################################################

  # format & watch goku
  pueue add --group "${pueueFG}" -- watchexec --watch ~/.archive/in-situ/karabiner/fragmented -- 'source ~/.archive/in-silico/.forge/goku.sh'

  ####################################################################################################
  # helix
  ####################################################################################################

  # format & watch helix
  pueue add --group "${pueueFG}" -- watchexec --watch ~/.archive/ex-situ/helix/modes -- 'source ~/.archive/in-silico/.forge/helix.sh'

  ####################################################################################################

}

####################################################################################################
