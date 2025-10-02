####################################################################################################
# Formulae equivalents (APT / Snap / Flatpak)
####################################################################################################

install_packages=(
  bat                # available as 'bat'
  fzf                # fuzzy finder
  gh                 # GitHub CLI
  helix              # code editor (ppa: https://github.com/helix-editor/helix)
  llvm               # compiler toolchain
  micro              # terminal editor
  mysql-server       # MySQL DB
  nushell            # available via snap or cargo
  postgresql         # PostgreSQL DB
  sqlite3            # SQLite engine
  starship           # shell prompt
)

# Not directly in apt:
# - bat-extras        -> scripts, can be installed manually from https://github.com/eth-p/bat-extras
# - cljfmt            -> install via `lein` or `clojure` + `cljfmt` jar
# - clojure           -> install via apt (`apt install clojure`) or official script
# - joplin-cli        -> npm install -g joplin
# - pgformatter       -> available via CPAN (`cpan App::pgFormatter`)
# - zprint            -> install via `clojure -Ttools install io.github.zprint/zprint`

echo "Updating package lists..."
sudo apt update

for pkg in "${install_packages[@]}"; do
  echo "Installing ${pkg}"
  sudo apt install -y "$pkg"
done

# MongoDB (official repo)
wget -qO - https://www.mongodb.org/static/pgp/server-7.0.asc | sudo gpg --dearmor -o /usr/share/keyrings/mongodb.gpg
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb.gpg ] https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/7.0 multiverse" \
  | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
sudo apt update
sudo apt install -y mongodb-org

# Microsoft Git Credential Manager
# Available as a .deb: https://github.com/git-ecosystem/git-credential-manager/releases
# Example:
# wget https://github.com/git-ecosystem/git-credential-manager/releases/download/vX.Y.Z/gcm-linux_amd64.X.Y.Z.deb
# sudo dpkg -i gcm-linux_amd64.X.Y.Z.deb

# Clojure LSP
# Official releases: https://github.com/clojure-lsp/clojure-lsp/releases
# Example:
# wget https://github.com/clojure-lsp/clojure-lsp/releases/latest/download/clojure-lsp-native-linux-amd64.zip
# unzip and move to /usr/local/bin

####################################################################################################

# Enable Flatpak if not already
sudo apt install -y flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Terminal emulator
sudo apt install -y alacritty
# ghostty -> Linux build exists but not packaged; build from source

# Productivity
flatpak install -y flathub com.dropbox.Client
flatpak install -y flathub org.inkscape.Inkscape
flatpak install -y flathub com.slack.Slack
flatpak install -y flathub org.videolan.VLC

# Fonts
sudo apt install -y fonts-hack-ttf

# Window tiling

# VPN
flatpak install -y flathub com.nordvpn.NordVPN

# Keyboard remapper

# Other notes:
# - Alfred → use Ulauncher or Albert on Linux
# - Espanso → available as Linux package: https://espanso.org/install/linux/
# - Rig (R manager) → use apt r-base or conda
# - Skim (PDF reader) → use Okular or Evince

####################################################################################################
