#!/bin/bash
####################################################################################################

# setup
dotDir="$HOME/Factorem/dotfiles"
archDir="$HOME/.archive"
setupDir="${archDir}/.just/.setup"

####################################################################################################

# create log directory
if [ ! -d "${dotDir}/log" ]
then
  mkdir "${dotDir}/log"
fi

# link directory
ln -svf "${dotDir}" "${archDir}"

####################################################################################################

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

####################################################################################################

# install formulae
brew install --formulae $(cat "${setupDir}/brew_formulae.txt")  1> "${archDir}/log/brew_formulae_out.txt" 2> "${archDir}/log/brew_formulae_err.txt"

# install casks
brew install --casks $(cat "${setup}/brew_casks.txt") 1> "${archDir}/log/brew_cask_out.txt" 2> "${archDir}/log/brew_cask_err.txt"

####################################################################################################

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

####################################################################################################

# install rust binaries
while read item
do
  cargo install ${item} 1> "${archDir}/log/cargo_out.txt" 2> "${archDir}/log/cargo_err.txt"
done < "${setup}/cargo.txt"

####################################################################################################

# go version manager
curl -sSL https://git.io/g-install | sh -s

####################################################################################################

# install golang binaries
# TODO: finish installation

####################################################################################################

# TODO: download R packages

# # install R packages
# R CMD INSTALL /Users/drivas/bin/Rpack/colorout_1.2-1.tar.gz
# R CMD INSTALL /Users/drivas/bin/Rpack/SystWrapper_2.0.tar.gz

####################################################################################################
