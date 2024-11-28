#!/bin/bash
####################################################################################################

# archive
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
source "${archDir}/.install/brew.sh"  1>> "${archDir}/log/brew.out" 2>> "${archDir}/log/brew.err"

# c++
source "${archDir}/.install/c++.sh"  1>> "${archDir}/log/c++.out" 2>> "${archDir}/log/c++.err"

# clojure
source "${archDir}/.install/clojure.sh" 1>> "${archDir}/log/clojure.out" 2>> "${archDir}/log/clojure.err"

# go
source "${archDir}/.install/go.sh" 1>> "${archDir}/log/go.out" 2>> "${archDir}/log/go.err"

# julia
source "${archDir}/.install/julia.sh" 1>> "${archDir}/log/julia.out" 2>> "${archDir}/log/julia.err"

# R
source "${archDir}/.install/R.sh" 1>> "${archDir}/log/R.out" 2>> "${archDir}/log/R.err"

# rust & cargo
source "${archDir}/.install/rust.sh" 1>> "${archDir}/log/rust.out" 2>> "${archDir}/log/rust.err"

####################################################################################################
