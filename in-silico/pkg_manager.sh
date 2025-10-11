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
      aerc
      pass
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

      # TODO: decide & document: starship, nushell & nerd-fonts

      install_packages=(
        bat                                                # available as 'bat'
        fzf                                                # fuzzy finder
        gh                                                 # GitHub CLI
        llvm                                               # compiler toolchain
        micro                                              # terminal editor
        mysql-server                                       # MySQL DB
        postgresql                                         # PostgreSQL DB
        sqlite3                                            # SQLite engine
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
        https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" \
        | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

      sudo apt install -y mongodb-org

      # Git Credential Manager
      wget https://github.com/git-ecosystem/git-credential-manager/releases/download/v2.6.1/gcm-linux_amd64.2.6.1.deb -O /tmp/gcm.deb
      sudo dpkg -i /tmp/gcm.deb
      rm /tmp/gcm.deb

      sudo apt install -y libsecret-1-0 libsecret-1-dev gnome-keyring pass gnupg2
      git config --global credential.credentialStore secretservice

      # Install Clojure CLI
      sudo apt install -y bash curl rlwrap openjdk-17-jdk unzip

      curl -L -o /tmp/linux-install.sh https://github.com/clojure/brew-install/releases/latest/download/linux-install.sh
      chmod +x /tmp/linux-install.sh
      sudo /tmp/linux-install.sh
      rm /tmp/linux-install.sh

      # Install Clojure LSP (latest release)
      localBin="${HOME}/.local/bin"
      mkdir -p "$localBin"
      wget -O /tmp/clojure-lsp.zip \
        https://github.com/clojure-lsp/clojure-lsp/releases/latest/download/clojure-lsp-native-linux-amd64.zip
      unzip -o /tmp/clojure-lsp.zip -d "$localBin"
      chmod +x "$localBin/clojure-lsp"
      rm /tmp/clojure-lsp.zip

      ####################################################################################################
      # Flatpak apps
      ####################################################################################################

      sudo apt install -y flatpak gnome-software-plugin-flatpak
      flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

      # Terminal emulator
      sudo apt install -y alacritty

      # Core editor

      # Productivity
      flatpak install -y flathub com.dropbox.Client
      flatpak install -y flathub org.inkscape.Inkscape
      flatpak install -y flathub com.slack.Slack
      flatpak install -y flathub org.videolan.VLC

      # Fonts
      sudo apt install -y fonts-hack-ttf

      # Browser
      sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
      sudo curl -fsSLo /etc/apt/sources.list.d/brave-browser-release.sources https://brave-browser-apt-release.s3.brave.com/brave-browser.sources
      sudo apt install brave-browser

      echo "Note: some macOS-only apps (Alfred, Karabiner, Skim, etc.) have Linux alternatives."
    fi
    ;;
  *)
    echo "Unsupported OS: $os" >&2
    exit 1
    ;;
esac

####################################################################################################
