####################################################################################################
# alacritty
####################################################################################################

# forge alacritty
_forge() {

  # config
  source "${IN_SILICO}/.config/config.sh"

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
