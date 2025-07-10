####################################################################################################
# Install Homebrew
####################################################################################################

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

####################################################################################################
# Helper function for installing packages
####################################################################################################

install_formulae() {
  echo "Installing formulae..."
  brew install "$@"
}

install_casks() {
  echo "Installing casks..."
  brew install --cask "$@"
}

####################################################################################################
# Formulae
####################################################################################################

install_formulae \
  gcalcli \
  joplin-cli \
  bpython \
  helix \
  micro \
  fzf \
  gh \
  hub \
  jq \
  sqlite \
  litecli \
  mysql \
  mycli \
  postgresql \
  pgcli \
  nu \
  starship \
  ollama \
  llvm

# MongoDB requires tapping before install
brew tap mongodb/brew
brew install mongodb-community

####################################################################################################
# Casks
####################################################################################################

install_casks \
  alacritty \
  alfred \
  appcleaner \
  arc \
  discord \
  docker \
  dropbox \
  espanso \
  font-hack-nerd-font \
  inkscape \
  karabiner-elements \
  logi-options-plus \
  mactex \
  miniconda \
  nordvpn \
  rectangle \
  rig \
  skim \
  slack \
  steam \
  telegram \
  texts \
  the-unarchiver \
  transmission \
  vlc \
  whatsapp \
  xquartz

####################################################################################################
