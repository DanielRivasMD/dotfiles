#!/bin/bash
####################################################################################################

# setup
# TODO: perhaps make it from current path
dotDir="$HOME/Factorem/dotfiles"
archDir="$HOME/.archive"
setupDir="${archDir}/.just/.setup"

####################################################################################################

# TODO: include logging
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
while read item
do
  brew install --formulae ${item} 1>> "${archDir}/log/brew_formulae_out.txt" 2>> "${archDir}/log/brew_formulae_err.txt"
done < "${setupDir}/brew_formulae.txt"


# install casks
while read item
do
  brew install --casks "${item}" 1>> "${archDir}/log/brew_cask_out.txt" 2>> "${archDir}/log/brew_cask_err.txt"
done < "${setupDir}/brew_casks.txt"

####################################################################################################

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.zshrc

####################################################################################################

# install rust binaries
while read item
do
  cargo install ${item} 1>> "${archDir}/log/cargo_out.txt" 2>> "${archDir}/log/cargo_err.txt"
done < "${setupDir}/cargo.txt"

####################################################################################################

# cargo install --locked lazycli

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

# brew install yqrashawn/goku/goku
# brew install fzf

# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/weavejester/cljfmt/HEAD/install.sh)"

####################################################################################################
