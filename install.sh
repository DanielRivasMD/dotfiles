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

# BUG: ubuntu errors out on mongodb for some reason
echo ''
printf '==================================================\n'
echo "Installing Package manager..."
os="$(uname -s)"
case "$os" in
  Darwin)
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Configuring Homebrew environment in this shell..."
    if [ "$(uname -m)" = "arm64" ]; then
        # Apple Silicon (M1/M2/M3…)
        eval "$(/opt/homebrew/bin/brew shellenv)"
    else
        # Intel Macs
        eval "$(/usr/local/bin/brew shellenv)"
    fi
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
echo "installation of curl & apt complete, run 'source in-silico/pkg_manager.sh' to install programs managed by package manager"
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
echo "installation of go & g complete, run 'source in-silico/go.sh' to install programs managed by g"
printf '==================================================\n'

####################################################################################################
# Install Julia
####################################################################################################

echo ''
printf '==================================================\n'
echo "Installing Julia..."
curl -fsSL https://install.julialang.org | sh
echo "installation of Julia and juliaup complete, run 'source in-silico/julia.sh' to install julia packages"
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
    ;;
  Linux)
    if grep -qi ubuntu /etc/os-release; then
      sudo curl -L https://rig.r-pkg.org/deb/rig.gpg -o /etc/apt/trusted.gpg.d/rig.gpg
      sudo sh -c 'echo "deb http://rig.r-pkg.org/deb rig main" > /etc/apt/sources.list.d/rig.list'
      sudo apt update
      sudo apt install r-rig
    fi
    ;;
esac

rig add release
export PATH="$HOME/.rig/bin:$PATH"
echo "installation of R and rig complete, run 'source in-silico/R.sh' to install R packages"
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
echo "installation of uv and uv complete, run 'source in-silico/uv.sh' to install programs managed by uv"
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
echo "installation of Rust and cargo complete, run 'source in-silico/rust.sh' to install programs managed by cargo"
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
