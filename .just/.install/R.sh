#!/bin/bash
####################################################################################################

# install R package manager
brew tap r-lib/rig
brew install --cask rig

####################################################################################################

# TODO: download R packages
# # install R packages
# R CMD INSTALL /Users/drivas/bin/Rpack/colorout_1.2-1.tar.gz
# R CMD INSTALL /Users/drivas/bin/Rpack/SW_3.2.tar.gz

####################################################################################################


# TODO: re-write script into loop
packages <- c(
  'magrittr',
  'pacman',
  'startup',
  'tidyverse'
)

# install R packages from shell
for (pk in packages) {
  install.packages(pk)
}

####################################################################################################
