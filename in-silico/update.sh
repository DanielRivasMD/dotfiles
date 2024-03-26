#!/bin/sh
####################################################################################################

update() {
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
    pueue group add "${pueueUG}"

    # parallel jobs
    pueue parallel --group "${pueueUG}" 3
  else
    exit
  fi

  ####################################################################################################
  # homebrew
  ####################################################################################################

  # list & upgrade homebrew
  pueue add --group "${pueueUG}" -- 'source ~/.archive/in-silico/.update/brew.sh'

  ####################################################################################################
  # rust
  ####################################################################################################

  # check & upgrade rustc compiler & cargo binaries
  pueue add --group "${pueueUG}" -- 'source ~/.archive/in-silico/.update/rust.sh'

  ####################################################################################################
  # go
  ####################################################################################################

  # upgrade go binaries
  pueue add --group "${pueueUG}" -- 'source ~/.archive/in-silico/.update/go.sh'

  ####################################################################################################

}

####################################################################################################
