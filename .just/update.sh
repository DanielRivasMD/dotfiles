#!/bin/bash
####################################################################################################

# config
source $HOME/.archive/.just/.config.sh

####################################################################################################
# deamon
####################################################################################################

# control daemon
source "${update}/.daemon.sh"

####################################################################################################
# homebrew
####################################################################################################

# list & upgrade homebrew
pueue add --group "${pueueUGroup}" -- 'source ~/.archive/.just/.update/brew.sh'

####################################################################################################
# rust
####################################################################################################

# check & upgrade rustc compiler & cargo binaries
pueue add --group "${pueueUGroup}" -- 'source ~/.archive/.just/.update/rust.sh'

####################################################################################################
# go
####################################################################################################

# upgrade go binaries
pueue add --group "${pueueUGroup}" -- 'source ~/.archive/.just/.update/go.sh'

####################################################################################################
