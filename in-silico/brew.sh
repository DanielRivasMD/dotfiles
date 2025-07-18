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
  cljfmt \                   # Clojure formatter
  helix \                    # Modal code editor
  micro \                    # Terminal editor
  fzf \                      # Fuzzy finder
  gh \                       # GitHub CLI
  hub \                      # GitHub-enhanced Git CLI
  jq \                       # JSON processor
  sqlite \                   # SQLite engine
  mysql \                    # MySQL database
  postgresql \               # PostgreSQL database
  nu \                       # Nu shell
  starship \                 # Shell prompt
  ollama \                   # Local LLM runner
  llvm                       # Compiler toolchain
  joplin-cli \               # Joplin notes in terminal

# MongoDB requires tapping before install
brew tap mongodb/brew
brew install mongodb-community

# Microsoft credential manager
brew tap microsoft/git
brew install --cask git-credential-manager-core

####################################################################################################
# Casks
####################################################################################################

install_casks \
  alacritty \                # Fast GPU-based terminal
  alfred \                   # App launcher and automation
  appcleaner \               # Removes leftover app files
  arc \                      # Modern browser
  discord \                  # Chat for communities
  docker \                   # Containers and dev environments
  dropbox \                  # Cloud file sync
  espanso \                  # Text expander
  font-hack-nerd-font \      # Font with icons
  inkscape \                 # Vector graphics editor
  karabiner-elements \       # Keyboard remapper
  logi-options-plus \        # Logitech device config
  mactex \                   # Full LaTeX suite
  miniconda \                # Python environment manager
  nordvpn \                  # VPN client
  rectangle \                # Window tiling
  rig \                      # R version manager
  skim \                     # PDF reader with highlights
  slack \                    # Team messaging
  steam \                    # Game platform
  telegram \                 # Secure messaging
  texts \                    # Markdown-focused editor
  the-unarchiver \           # Archive extractor
  transmission \             # Torrent client
  vlc \                      # Media player
  whatsapp \                 # Messaging app
  xquartz                    # X11 server for macOS

####################################################################################################
