#!/bin/bash
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

brew install fzf
brew install gh
brew install hub

####################################################################################################

brew install sqlite
brew install litecli

brew install mysql
brew install mycli

brew install postgresql
brew install pgcli

####################################################################################################

brew install bitwarden-cli

####################################################################################################
