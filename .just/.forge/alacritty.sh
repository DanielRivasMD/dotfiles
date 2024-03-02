#!/bin/bash
####################################################################################################
# alacritty
####################################################################################################

# forge alacritty
function forge() {

  # declarations
  source $HOME/.archive/.just/.config.sh

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
forge

####################################################################################################
