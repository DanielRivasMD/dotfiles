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
# Destination directory for tarballs
DEST="${HOME}/Rpackages"
mkdir -p "$DEST"

# URL + filename pairs (space‐separated)
PACKAGES=(
  "https://github.com/jalvesaq/colorout/releases/download/v1.3-2/colorout_1.3-2.tar.gz colorout_1.3-2.tar.gz"
  "https://github.com/DanielRivasMD/SW/archive/refs/tags/v3.2.tar.gz SW_3.2.tar.gz"
)

# Download and install each package
for pair in "${PACKAGES[@]}"; do
  # split into URL and filename
  url="${pair%% *}"
  fname="${pair##* }"
  target="$DEST/$fname"

  echo "Downloading $fname…"
  curl -fsSL -o "$target" "$url"

  echo "Installing $fname…"
  R CMD INSTALL "$target"
done

####################################################################################################
