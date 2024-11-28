#!/bin/bash
####################################################################################################

# archive
archDir="$HOME/.archive"

####################################################################################################

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 1>> "${archDir}/log/brew.out" 2>> "${archDir}/log/brew.err"

####################################################################################################
# formulae
####################################################################################################

# google calendar
brew install gcalcli

# joplin notes
brew install joplin-cli

# python repl
brew install bpython

# editor
brew install helix
brew install micro

# fuzzy finder
brew install fzf

# git
brew install gh
brew install hub

# julia
brew install juliaup

# json
brew install jq

# sqlite
brew install sqlite
brew install litecli

# mysql
brew install mysql
brew install mycli

# postgresql
brew install postgresql
brew install pgcli

####################################################################################################
# casks
####################################################################################################

brew install alacritty
brew install alfred
brew install appcleaner
brew install arc
brew install discord
brew install docker
brew install dropbox
brew install espanso
brew install figtree
brew install font-hack-nerd-font
brew install inkscape
brew install karabiner-elements
brew install lapce
brew install logi-options-plus
brew install mactex
brew install miniconda
brew install nordvpn
brew install rig
brew install texts
brew install skim
brew install skype
brew install slack
brew install spectacle
brew install steam
brew install the-unarchiver
brew install transmission
brew install vlc
brew install xquartz
brew install zed

####################################################################################################
