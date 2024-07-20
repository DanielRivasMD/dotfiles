#!/bin/bash
####################################################################################################

# setup
dotDir="$HOME/Factorem/dotfiles"
archDir="$HOME/.archive"
setupDir="${archDir}/.just/.setup"

####################################################################################################

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

####################################################################################################

# patch formulae
brew install itchyny/tap/fillin

brew install kdabir/tap/has

brew tap watermint/toolbox
brew install toolbox
# create log directory
if [ ! -d "${dotDir}/log" ]
then
  mkdir "${dotDir}/log"
fi

brew tap liujianping/tap/ts
brew install ts

# patch casks
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

brew tap gaborcsardi/rim
brew install --cask rim

brew install --cask julia
brew install --cask docker

####################################################################################################

# install formulae
brew install --formulae $(cat "${setupDir}/brew_formulae.txt")

# install casks
brew install --casks $(cat "${setup}/brew_casks.txt")

####################################################################################################

# install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

####################################################################################################

# install rust binaries
while read item
do
  cargo install ${item}
done < "${setup}/cargo.txt"

####################################################################################################

# go version manager
curl -sSL https://git.io/g-install | sh -s

# zsh package manager
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1

####################################################################################################

# link
mkdir -p ${HOME}/.config/gup
ln -svf ${HOME}/.archive/setup/golang_binaries.txt ${HOME}/.config/gup/gup.conf

# install golang binaries
# TODO: finish installation

####################################################################################################

# install R packages
R CMD INSTALL /Users/drivas/bin/Rpack/colorout_1.2-1.tar.gz
R CMD INSTALL /Users/drivas/bin/Rpack/SystWrapper_2.0.tar.gz

####################################################################################################
