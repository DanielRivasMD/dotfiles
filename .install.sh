#!/bin/bash
####################################################################################################

# setup
archDir="$HOME/.archive"

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
source "${archDir}/.install/brew.sh"

# clojure
source "${archDir}/.install/clojure.sh"

# go
source "${archDir}/.install/go.sh"

# julia
source "${archDir}/.install/julia.sh"

# R
source "${archDir}/.install/R.sh"

# rust & cargo
source "${archDir}/.install/rust.sh"

####################################################################################################
