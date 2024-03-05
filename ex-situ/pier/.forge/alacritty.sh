#!/bin/bash
####################################################################################################
# alacritty
####################################################################################################

# forge alacritty
function _forge() {

  # config
  source "${IN_SILICO}/config.sh"

  # check & remove target
  if test -f "${config}/alacritty/alacritty.toml"
  then
    rm "${config}/alacritty/alacritty.toml"
  fi

  # migrate config
  alacritty migrate

}

####################################################################################################

# execute
_forge

####################################################################################################
