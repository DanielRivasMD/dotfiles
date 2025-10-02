####################################################################################################
# Create log directory
####################################################################################################

echo "Ensuring log directory exists..."
logDir="${PWD}/log"
mkdir -p "$logDir"
in_silico="./in-silico"

####################################################################################################
# Package manager bootstrap
####################################################################################################

os="$(uname -s)"
case "$os" in
  Darwin)
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # inject Homebrew’s bin into $PATH without re‐execing zsh
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

####################################################################################################
# Install helper
####################################################################################################

run_install() {
  local installer="$1"
  local name
  name="$(basename "$installer" .sh)"
  local logfile="$logDir/${name}.log"

  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')] START $name" >>"$logfile"

  if [[ -f "$installer" ]]; then
    (
      source "$installer"
    ) >>"$logfile" 2>&1

    local status=$?
    if (( status != 0 )); then
      echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')] FAIL  $name (exit $status)" >>"$logfile"
    else
      echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')] DONE  $name" >>"$logfile"
    fi
  else
    echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')] MISSING $installer" >>"$logfile"
  fi
}

####################################################################################################
# Detect OS and choose package manager script
####################################################################################################

os="$(uname -s)"
case "$os" in
  Darwin)
    echo "Detected macOS – will use brew.sh"
    pkg_script="${in_silico}/brew.sh"
    ;;
  Linux)
    if grep -qi ubuntu /etc/os-release; then
      echo "Detected Ubuntu – will use apt.sh"
      pkg_script="${in_silico}/apt.sh"
    else
      echo "Linux detected but not Ubuntu – defaulting to apt.sh"
      pkg_script="${in_silico}/apt.sh"
    fi
    ;;
  *)
    echo "Unsupported OS: $os" >&2
    exit 1
    ;;
esac

####################################################################################################
# Install in parallel
####################################################################################################

# Enumerate all your installers, with OS‑specific package manager script first
installers=(
  "$pkg_script"
  "${in_silico}/clojure.sh"
  "${in_silico}/go.sh"
  "${in_silico}/julia.sh"
  "${in_silico}/R.sh"
  "${in_silico}/rust.sh"
)

# Launch each installer in the background
for script in "${installers[@]}"; do
  run_install "$script" &
done

# Wait for all of them (plus any other background jobs) to complete
wait

####################################################################################################
# Git‐clone helper
####################################################################################################

clone_from_manifest() {
  local manifest="${in_silico}/clone_repos.txt"
  [[ -f "$manifest" ]] || {
    echo "Clone manifest not found at $manifest" >&2
    return 1
  }

  while IFS= read -r line; do
    [[ -z "$line" || "$line" = \#* ]] && continue

    local repo_url="${line%%[[:space:]]*}"
    local target_dir="${line#*[[:space:]]}"
    target_dir="${target_dir/#\~/$HOME}"

    if [[ -d "$target_dir" ]]; then
      echo "Repo exists: $target_dir – skipping."
    else
      echo "Cloning: $repo_url → $target_dir"
      git clone "$repo_url" "$target_dir" \
        || echo "Failed to clone $repo_url" >&2
    fi
  done < "$manifest"
}

# run cloning in background
clone_from_manifest >>"$logDir/repos.out" 2>>"$logDir/repos.err" &

####################################################################################################
# Zellij plugins
####################################################################################################

setup_zellij_plugins() {
  local plugin_dir="$HOME/.config/zellij/plugins"
  local list="${in_silico}/zellij_plugins.txt"
  mkdir -p "$plugin_dir"

  [[ -f "$list" ]] || {
    echo "Zellij plugin list not found at $list" >&2
    return 1
  }

  while IFS= read -r url; do
    [[ -z "$url" || "$url" = \#* ]] && continue
    local name="${url##*/}"
    local dest="$plugin_dir/$name"

    if [[ -f "$dest" ]]; then
      echo "Plugin exists: $name – skipping."
    else
      echo "Downloading: $url"
      curl -LsSf "$url" -o "$dest" || echo "Failed: $url" >&2
    fi
  done < "$list"
}

# run in background
setup_zellij_plugins >>"$logDir/zellij_plugins.out" 2>>"$logDir/zellij_plugins.err" &

####################################################################################################
# Wait for background jobs
####################################################################################################

wait
echo "All installation tasks completed."

####################################################################################################
