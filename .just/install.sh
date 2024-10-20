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
source "${archDir}/.just/.install/brew.sh"

# clojure
source "${archDir}/.just/.install/clojure.sh"

# go
source "${archDir}/.just/.install/go.sh"

# julia
source "${archDir}/.just/.install/julia.sh"

# R
source "${archDir}/.just/.install/R.sh"

# rust & cargo
source "${archDir}/.just/.install/rust.sh"

####################################################################################################
