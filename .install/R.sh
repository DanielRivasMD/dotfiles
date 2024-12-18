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

# # install R packages
# R CMD INSTALL /Users/drivas/bin/Rpack/colorout_1.2-1.tar.gz
# R CMD INSTALL /Users/drivas/bin/Rpack/SW_3.2.tar.gz

####################################################################################################
