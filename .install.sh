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
# ergo
####################################################################################################

(
  if [[ ! -d "${HOME}/.completion" ]]; then mkdir "${HOME}/.completion"; fi
  cd "${HOME}/.completion" || exit
  git clone https://github.com/nikolassv/bartib
  git clone https://github.com/twpayne/chezmoi
  git clone https://github.com/eza-community/eza
  git clone https://github.com/sharkdp/fd
  git clone https://github.com/casey/just
  git clone https://github.com/watchexec/watchexec
) &

(
  if [[ ! -d "${HOME}/Linked" ]]; then mkdir "${HOME}/Linked"; fi
  cd "${HOME}/Linked" || exit
  git clone https://github.com/lavifb/todo_r
  git clone https://github.com/mikefarah/yq
) &

####################################################################################################

# homebrew
( source "${archDir}/.install/brew.sh"  1>> "${archDir}/log/brew.out" 2>> "${archDir}/log/brew.err" ) &

# c++
( source "${archDir}/.install/c++.sh"  1>> "${archDir}/log/c++.out" 2>> "${archDir}/log/c++.err" ) &

# clojure
( source "${archDir}/.install/clojure.sh" 1>> "${archDir}/log/clojure.out" 2>> "${archDir}/log/clojure.err" ) &

# go
( source "${archDir}/.install/go.sh" 1>> "${archDir}/log/go.out" 2>> "${archDir}/log/go.err" ) &

# julia
( source "${archDir}/.install/julia.sh" 1>> "${archDir}/log/julia.out" 2>> "${archDir}/log/julia.err" ) &

# R
( source "${archDir}/.install/R.sh" 1>> "${archDir}/log/R.out" 2>> "${archDir}/log/R.err" ) &

# rust & cargo
( source "${archDir}/.install/rust.sh" 1>> "${archDir}/log/rust.out" 2>> "${archDir}/log/rust.err" ) &

####################################################################################################

wait

####################################################################################################
