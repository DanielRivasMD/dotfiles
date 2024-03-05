#!/bin/bash
####################################################################################################

# config
source "${IN_SILICO}/config.sh"

####################################################################################################
# daemon
####################################################################################################

# control daemon
source "${PIER}/.daemon.sh"
if check_daemon
then
  # create group
  pueue group add "${pueueFG}"

  # parallel jobs
  pueue parallel --group "${pueueFG}" 3
else
  exit
fi

####################################################################################################
# alacritty
####################################################################################################

# watch alacritty
pueue add --group "${pueueFG}" -- watchexec --watch ~/.archive/in-situ/alacritty/alacritty.yml -- 'source ~/.archive/ex-situ/pier/.forge/alacritty.sh'

####################################################################################################
# goku
####################################################################################################

# format & watch goku
pueue add --group "${pueueFG}" -- watchexec --watch ~/.archive/in-situ/karabiner/fragmented -- 'source ~/.archive/ex-situ/pier/.forge/goku.sh'

####################################################################################################
# helix
####################################################################################################

# format & watch helix
pueue add --group "${pueueFG}" -- watchexec --watch ~/.archive/ex-situ/helix/modes -- 'source ~/.archive/ex-situ/pier/.forge/helix.sh'

####################################################################################################
