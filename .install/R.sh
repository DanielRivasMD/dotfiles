####################################################################################################
# Install R Package Manager
####################################################################################################

brew tap r-lib/rig
brew install --cask rig

####################################################################################################
# Add Latest R Version
####################################################################################################

rig add release

####################################################################################################
# Install Core R Packages
####################################################################################################

Rscript -e "install.packages(c('magrittr', 'pacman', 'startup', 'tidyverse'))"
Rscript -e "install.packages('colorout', repos = 'https://community.r-multiverse.org')"

####################################################################################################
# Install R Tarball Packages
####################################################################################################

# Destination directory for tarballs
DEST="${HOME}/Rpackages"
mkdir -p "${DEST}"

# Array of URL + filename pairs (space-separated)
PACKAGES=(
  "https://github.com/DanielRivasMD/SW/archive/refs/tags/v3.2.tar.gz SW_3.2.tar.gz"
)

# Download and install each package
for pair in "${PACKAGES[@]}"; do
  url="${pair%% *}"
  fname="${pair##* }"
  target="${DEST}/${fname}"

  echo "Downloading ${fname}..."
  curl -fsSL -o "${target}" "${url}"

  echo "Installing ${fname}..."
  R CMD INSTALL "${target}"
done

####################################################################################################
