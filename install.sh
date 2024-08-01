#!/bin/bash
####################################################################################################

# setup
archDir="$HOME/.archive"
installDir="${archDir}/.install"

####################################################################################################

# create log directory
echo 'Checking log directory...'
if [ ! -d "$(pwd)/log" ]
then
  echo 'Creating log directory...'
  mkdir "$(pwd)/log"
fi

# link directory
echo 'Linking archive...'
ln -svf "$(pwd)" "${archDir}"

####################################################################################################

# homebrew
source "${installDir}/brew.sh"

# clojure
source "${installDir}/clojure.sh"

# go
source "${installDir}/go.sh"

# julia
source "${installDir}/julia.sh"

# R
source "${installDir}/R.sh"

# rust & cargo
source "${installDir}/rust.sh"



# brew install fzf
# brew install gh
# brew install hub

####################################################################################################
