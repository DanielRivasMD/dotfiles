####################################################################################################
# Formulae
####################################################################################################

install_formulae=(
  bat-extras                 # bat utilities  
  cljfmt                     # Clojure formatter  
  fzf                        # fuzzy finder  
  gh                         # GitHub CLI  
  helix                      # code editor  
  joplin-cli                 # Joplin CLI  
  llvm                       # compiler toolchain  
  micro                      # terminal editor  
  mysql                      # MySQL DB  
  nushell                    # structured shell  
  ollama                     # local LLM runner  
  postgresql                 # PostgreSQL DB  
  sqlite                     # SQLite engine  
  starship                   # shell prompt  
)

for ((i = 0; i < ${#install_formulae[@]}; i++)); do
  formula="${install_formulae[i]}"
  echo "Installing ${formula}"
  brew install "${formula}"
done

# MongoDB requires tapping before install
brew tap mongodb/brew
brew install mongodb-community

# Microsoft credential manager
brew tap microsoft/git
brew install --cask git-credential-manager-core

####################################################################################################
# Casks
####################################################################################################

install_casks=(
  alacritty                  # Fast GPU-based terminal
  alfred                     # App launcher and automation
  appcleaner                 # Removes leftover app files
  arc                        # Modern browser
  docker                     # Containers and dev environments
  dropbox                    # Cloud file sync
  espanso                    # Text expander
  font-hack-nerd-font        # Font with icons
  inkscape                   # Vector graphics editor
  karabiner-elements         # Keyboard remapper
  logi-options-plus          # Logitech device config
  nordvpn                    # VPN client
  rectangle                  # Window tiling
  rig                        # R version manager
  skim                       # PDF reader with highlights
  slack                      # Team messaging
  steam                      # Game platform
  telegram                   # Secure messaging
  the-unarchiver             # Archive extractor
  transmission               # Torrent client
  vlc                        # Media player
  whatsapp                   # Messaging app
  xquartz                    # X11 server for macOS
)

for ((i = 0; i < ${#install_casks[@]}; i++)); do
  cask="${install_casks[i]}"
  echo "Installing ${cask}"
  brew install --cask "${cask}"
done

####################################################################################################
