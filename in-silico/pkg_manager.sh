####################################################################################################

os="$(uname -s)"

####################################################################################################

case "$os" in
  Darwin)
    echo "Detected macOS – using Homebrew"

    ####################################################################################################
    # Formulae
    ####################################################################################################

    install_formulae=(
      bat-extras                                           # bat utilities
      cljfmt                                               # Clojure formatter
      clojure                                              # Clojure
      fzf                                                  # fuzzy finder
      gh                                                   # GitHub CLI
      helix                                                # code editor
      joplin-cli                                           # Joplin CLI
      llvm                                                 # compiler toolchain
      micro                                                # terminal editor
      mysql                                                # MySQL DB
      nushell                                              # structured shell
      ollama                                               # local LLM runner
      pgformatter                                          # SQL formatter
      postgresql                                           # PostgreSQL DB
      sqlite                                               # SQLite engine
      starship                                             # shell prompt
      zprint                                               # Clojure pretty printer
    )

    for formula in "${install_formulae[@]}"; do
      echo "Installing formula: ${formula}"
      brew install "${formula}"
    done

    # Special taps
    brew tap mongodb/brew
    brew install mongodb-community

    brew tap microsoft/git
    # TODO: git credential manager?
    brew install --cask git-credential-manager-core

    brew install clojure-lsp/brew/clojure-lsp-native

    brew install yqrashawn/goku/goku

    ####################################################################################################
    # Casks
    ####################################################################################################

    install_casks=(
      alacritty                                            # Fast GPU-based terminal
      alfred                                               # App launcher and automation
      appcleaner                                           # Removes leftover app files
      arc                                                  # Modern browser
      docker                                               # Containers and dev environments
      dropbox                                              # Cloud file sync
      espanso                                              # Text expander
      font-hack-nerd-font                                  # Font with icons
      ghostty                                              # Terminal emulator
      inkscape                                             # Vector graphics editor
      karabiner-elements                                   # Keyboard remapper
      logi-options-plus                                    # Logitech device config
      nordvpn                                              # VPN client
      rectangle                                            # Window tiling
      rig                                                  # R version manager
      skim                                                 # PDF reader with highlights
      slack                                                # Team messaging
      steam                                                # Game platform
      telegram                                             # Secure messaging
      the-unarchiver                                       # Archive extractor
      transmission                                         # Torrent client
      vlc                                                  # Media player
      whatsapp                                             # Messaging app
      xquartz                                              # X11 server for macOS
    )

    for cask in "${install_casks[@]}"; do
      echo "Installing cask: ${cask}"
      brew install --cask "${cask}"
    done
    ;;

  Linux)
    if grep -qi ubuntu /etc/os-release; then
      echo "Detected Ubuntu – using apt / flatpak"

      ####################################################################################################
      # Formulae equivalents
      ####################################################################################################

      install_packages=(
        bat                                                # available as 'bat'
        fzf                                                # fuzzy finder
        gh                                                 # GitHub CLI
        helix                                              # code editor
        llvm                                               # compiler toolchain
        micro                                              # terminal editor
        mysql-server                                       # MySQL DB
        nushell                                            # structured shell
        postgresql                                         # PostgreSQL DB
        sqlite3                                            # SQLite engine
        starship                                           # shell prompt
      )

      echo "Updating package lists..."
      sudo apt update

      for pkg in "${install_packages[@]}"; do
        echo "Installing package: ${pkg}"
        sudo apt install -y "$pkg"
      done

      # MongoDB
      wget -qO - https://www.mongodb.org/static/pgp/server-7.0.asc \
        | sudo gpg --dearmor -o /usr/share/keyrings/mongodb.gpg
      echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb.gpg ] \
        https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/7.0 multiverse" \
        | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
      sudo apt update
      sudo apt install -y mongodb-org

      # Git Credential Manager (manual .deb install required)
      echo "Note: install Git Credential Manager manually from https://github.com/git-ecosystem/git-credential-manager/releases"

      # Clojure LSP (manual download)
      echo "Note: install Clojure LSP manually from https://github.com/clojure-lsp/clojure-lsp/releases"

      ####################################################################################################
      # Flatpak apps
      ####################################################################################################

      sudo apt install -y flatpak gnome-software-plugin-flatpak
      flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

      # Terminal emulator
      sudo apt install -y alacritty

      # Productivity
      flatpak install -y flathub com.dropbox.Client
      flatpak install -y flathub org.inkscape.Inkscape
      flatpak install -y flathub com.slack.Slack
      flatpak install -y flathub org.videolan.VLC

      # Fonts
      sudo apt install -y fonts-hack-ttf

      # VPN
      flatpak install -y flathub com.nordvpn.NordVPN

      echo "Note: some macOS-only apps (Alfred, Karabiner, Rig, Skim, etc.) have Linux alternatives."
    fi
    ;;
  *)
    echo "Unsupported OS: $os" >&2
    exit 1
    ;;
esac

####################################################################################################
