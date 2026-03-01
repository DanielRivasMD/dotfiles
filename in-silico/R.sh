####################################################################################################
# Install Core R Packages
####################################################################################################

# install R manager
sudo rig add release

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
for pkg in "${PACKAGES[@]}"; do
  url="${pkg%% *}"
  fname="${pkg##* }"
  target="${DEST}/${fname}"

  echo "Downloading ${fname}..."
  curl -fsSL -o "${target}" "${url}"

  echo "Installing ${fname}..."
  R CMD INSTALL "${target}"
done

####################################################################################################
