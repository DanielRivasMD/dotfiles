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
  gcalcli \                  # Google Calendar CLI
  joplin-cli \               # Joplin notes in terminal
  bpython \                  # Fancy Python REPL
  helix \                    # Modern modal code editor
  micro \                    # Simple terminal editor
  fzf \                      # Fuzzy search utility
  gh \                       # GitHub CLI tool
  hub \                      # Git-enhancing CLI for GitHub
  jq \                       # JSON processor
  sqlite \                   # Lightweight database engine
  litecli \                  # SQLite client with UX improvements
  mysql \                    # SQL database system
  mycli \                    # MySQL CLI with autocompletion
  postgresql \               # Advanced relational DB
  pgcli \                    # PostgreSQL CLI with features
  nu \                       # Structured-shell scripting
  starship \                 # Custom prompt for any shell
  ollama \                   # Run local LLMs
  llvm \                     # Compiler toolchain infrastructure

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
