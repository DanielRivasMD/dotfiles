#!/bin/bash
####################################################################################################

# install R package manager
brew tap r-lib/rig
brew install --cask rig

####################################################################################################

# add latest R version
rig add release

####################################################################################################

# install packages
R -e "install.packages(c('magrittr', 'pacman', 'startup', 'tidyverse'))"

####################################################################################################

# install R packages
(
  if [[ ! -d "${HOME}/Rpackage" ]]; then mkdir "${HOME}/Rpackage"; fi
  cd "${HOME}/Rpackage" || exit

  curl -O https://github.com/jalvesaq/colorout/releases/download/v1.3-2/colorout_1.3-2.tar.gz
  R CMD INSTALL "${HOME}/RPackage/colorout_1.2-1.tar.gz"

  curl -O https://github.com/DanielRivasMD/SW/archive/refs/tags/v3.2.tar.gz
  R CMD INSTALL "${HOME}/RPackage/SW_3.2.tar.gz"
)

####################################################################################################
