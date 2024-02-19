#!/bin/bash
####################################################################################################
# Mnemosyne
####################################################################################################


# declarations
source .just/.config.sh

####################################################################################################

# collect brew
brew list --formula > "${setupDir}/brew_formulae.txt"
brew list --cask > "${setupDir}/brew_casks.txt"

# collect cargo
cargo-install-update install-update --list | awk '{if (NR > 3) print $1}' > "${setupDir}/cargo.txt"

####################################################################################################
