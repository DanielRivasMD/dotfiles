####################################################################################################
# Create log directory
####################################################################################################

echo "Ensuring log directory exists..."
logDir="${PWD}/log"
mkdir -p "$logDir"

####################################################################################################
# Git‐clone helper
####################################################################################################

# TODO: document nerd font installation; present on shell history for ubuntu

# Ensure supporting directories exist
mkdir -p "$HOME/.completion"
mkdir -p "$HOME/Linked"

echo ''
printf '==================================================\n'
echo "Reading repo manifests..."
manifest="./in-silico/repo_manifest.txt"
if [[ -f "$manifest" ]]; then
  while read -r repo_url target_dir; do
    [[ -z "$repo_url" || "$repo_url" = \#* ]] && continue
    target_dir="${target_dir/#\~/$HOME}"
    mkdir -p "$(dirname "$target_dir")"
    if [[ -d "$target_dir" ]]; then
      echo "Repo exists: $target_dir – skipping."
    else
      echo "Cloning: $repo_url → $target_dir"
      git clone "$repo_url" "$target_dir" || echo "Failed to clone $repo_url" >&2
    fi
  done < "$manifest" >>"$logDir/repos.out" 2>>"$logDir/repos.err"
else
  echo "Clone manifest not found at $manifest" >&2
fi
printf '==================================================\n'

####################################################################################################
# Package manager bootstrap
####################################################################################################

echo ''
printf '==================================================\n'
echo "Installing Package manager..."
os="$(uname -s)"
case "$os" in
  Darwin)
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Configuring Homebrew environment in this shell..."
    eval "$($(brew --prefix)/bin/brew shellenv)"
    ;;
  Linux)
    if grep -qi ubuntu /etc/os-release; then
      echo "Detected Ubuntu – ensuring curl is installed..."
      sudo apt update
      sudo apt install -y curl
    fi
    ;;
  *)
    echo "Unsupported OS: $os" >&2
    ;;
esac
echo "installation of curl & apt complete, run '' to install programs managed by package manager"
printf '==================================================\n'

####################################################################################################
# Install Go
####################################################################################################

echo ''
printf '==================================================\n'
echo "Installing Go..."
curl -sSL https://git.io/g-install | sh -s -- -y
export PATH="$HOME/.g/bin:$PATH"
g install latest -y
echo "installation of go & g complete, run '' to install programs managed by g"
printf '==================================================\n'

####################################################################################################
# Install Julia
####################################################################################################

echo ''
printf '==================================================\n'
echo "Installing Julia..."
case "$os" in
  Darwin)
    echo "Detected macOS – installing Julia via Homebrew juliaup..."
    brew install juliaup
    eval "$($(brew --prefix)/bin/brew shellenv)"
    ;;
  Linux)
    if grep -qi ubuntu /etc/os-release; then
      echo "Detected Ubuntu – installing Julia via juliaup installer..."
      curl -fsSL https://install.julialang.org | sh
    fi
    ;;
esac
echo "installation of Julia and juliaup complete, run 'julia' to install packages via Pkg.add([...])"
printf '==================================================\n'

####################################################################################################
# Install R via rig
####################################################################################################

echo ''
printf '==================================================\n'
echo "Installing R..."
case "$os" in
  Darwin)
    brew tap r-lib/rig
    brew install --cask rig
    eval "$($(brew --prefix)/bin/brew shellenv)"
    ;;
  Linux)
    if grep -qi ubuntu /etc/os-release; then
      echo "TODO: patch for rig on Ubuntu from official documentation"
    fi
    ;;
esac

rig add release
export PATH="$HOME/.rig/bin:$PATH"
echo "installation of R and rig complete, run 'rig add <version>' to install programs managed by rig"
printf '==================================================\n'

####################################################################################################
# Install Python & uv
####################################################################################################

echo ''
printf '==================================================\n'
echo "Installing Python..."
case "$os" in
  Darwin)
    echo "Detected macOS – installing uv via Homebrew..."
    brew install uv
    eval "$($(brew --prefix)/bin/brew shellenv)"
    ;;
  Linux)
    if grep -qi ubuntu /etc/os-release; then
      echo "Detected Ubuntu – installing uv..."
      sudo apt update
      curl -LsSf https://astral.sh/uv/install.sh | sh
      export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
    fi
    ;;
esac
echo "installation of uv and uv complete, run 'uv tool install <pkg>' to install programs managed by uv"
printf '==================================================\n'

####################################################################################################
# Install Rust
####################################################################################################

echo ''
printf '==================================================\n'
echo "Installing Rust..."
if grep -qi ubuntu /etc/os-release; then
  echo "Installing gcc for Rust build support..."
  sudo apt install -y build-essential
fi

echo "Installing Rust via rustup..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

if [[ -f "$HOME/.cargo/env" ]]; then
  source "$HOME/.cargo/env"
else
  export PATH="$HOME/.cargo/bin:$PATH"
fi
echo "installation of Rust and cargo complete, run 'cargo install <crate>' to install programs managed by cargo"
printf '==================================================\n'

####################################################################################################
# Zellij & plugins
####################################################################################################

echo ''
printf '==================================================\n'
echo "Installing Zellij..."
cargo install --locked zellij

plugin_dir="$HOME/.config/zellij/plugins"
list="./in-silico/zellij_manifest.txt"
mkdir -p "$plugin_dir"

if [[ -f "$list" ]]; then
  while IFS= read -r url; do
    [[ -z "$url" || "$url" = \#* ]] && continue
    name="${url##*/}"
    dest="$plugin_dir/$name"
    if [[ -f "$dest" ]]; then
      echo "Plugin exists: $name – skipping."
    else
      echo "Downloading: $url"
      curl -LsSf "$url" -o "$dest" || echo "Failed: $url" >&2
    fi
  done < "$list" >>"$logDir/zellij_plugins.out" 2>>"$logDir/zellij_plugins.err"
else
  echo "Zellij plugin list not found at $list" >&2
fi
echo "installation of Zellij and cargo complete, run 'cargo install <crate>' to install programs managed by cargo"
printf '==================================================\n'

####################################################################################################
# Summary Table
####################################################################################################

echo ''
printf "%-15s %-20s %-40s %-10s\n" "Program" "Package Manager" "Install Script" "Status"
printf "%-15s %-20s %-40s %-10s\n" "pkg manager" "brew" "" "OK"
printf "%-15s %-20s %-40s %-10s\n" "go" "g" "" "OK"
printf "%-15s %-20s %-40s %-10s\n" "julia" "juliaup" "" "OK"
printf "%-15s %-20s %-40s %-10s\n" "R" "rig" "" "OK"
printf "%-15s %-20s %-40s %-10s\n" "pyton" "uv" "" "OK"
printf "%-15s %-20s %-40s %-10s\n" "rust" "cargo" "" "OK"
 
####################################################################################################
