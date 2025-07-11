####################################################################################################
# Set archive directory
####################################################################################################

archDir="$HOME/.archive"
mkdir -p "${archDir}"

####################################################################################################
# Create log directory
####################################################################################################

echo "Ensuring log directory exists..."
logDir="${archDir}/log"
mkdir -p "$logDir"

####################################################################################################
# Link archive to current working directory
####################################################################################################

echo "Linking archive directory..."
ln -svf "$(realpath .)" "${archDir}"

####################################################################################################
# Git clone helper
####################################################################################################

clone_from_manifest () {
  local repo_list="$HOME/.archive/.install/clone_repos.txt"

  while IFS= read -r line; do
    [[ -z "$line" || "$line" =~ ^# ]] && continue  # Skip empty or commented lines
    local repo_url target_dir
    repo_url=$(echo "$line" | awk '{print $1}')
    target_dir=$(echo "$line" | awk '{print $2}' | sed "s|~|$HOME|")

    if [ -d "$target_dir" ]; then
      echo "Repo exists: $target_dir, skipping."
    else
      echo "Cloning: $repo_url → $target_dir"
      if ! git clone "$repo_url" "$target_dir"; then
        echo "Failed to clone $repo_url" >&2
      fi
    fi
  done < "$repo_list"
}

####################################################################################################
# Ergo (background setup)
####################################################################################################

mkdir -p "${HOME}/.completion"
mkdir -p "${HOME}/Linked"
clone_from_manifest >> "${archDir}/log/repos.out" 2>> "${archDir}/log/repos.err" &

####################################################################################################
# Logging helper
####################################################################################################

run_install () {
  local script_name=$(basename "$1" .sh)
  echo "$(date) Running $script_name..." >> "${archDir}/log/${script_name}.out"
  if [ -f "$1" ]; then
    bash "$1" >> "${archDir}/log/${script_name}.out" 2>> "${archDir}/log/${script_name}.err" &
  else
    echo "Install script $1 not found" >&2
  fi
}

####################################################################################################
# Run install scripts
####################################################################################################

installDir="${archDir}/.install"
run_install "${installDir}/brew.sh"
run_install "${installDir}/c++.sh"
run_install "${installDir}/clojure.sh"
run_install "${installDir}/go.sh"
run_install "${installDir}/julia.sh"
run_install "${installDir}/R.sh"
run_install "${installDir}/rust.sh"

####################################################################################################
# Zellij Plugins
####################################################################################################

setup_zellij_plugins () {
  local plugin_dir="$HOME/.config/zellij/plugins"
  local plugin_list="$HOME/.archive/.install/zellij_plugins.txt"

  mkdir -p "$plugin_dir"

  while IFS= read -r plugin_url; do
    [[ -z "$plugin_url" ]] && continue  # Skip empty lines
    local filename="${plugin_url##*/}"
    local target="$plugin_dir/$filename"

    echo "Checking Zellij plugin: $filename"

    if [[ -f "$target" ]]; then
      echo "Already exists: $filename"
    else
      echo "Downloading: $plugin_url"
      if ! curl -LsSf "$plugin_url" -o "$target"; then
        echo "Failed to download: $plugin_url" >&2
      fi
    fi
  done < "$plugin_list"
}

####################################################################################################
# Download & Install
####################################################################################################

setup_zellij_plugins >> "${archDir}/log/zellij_plugins.out" 2>> "${archDir}/log/zellij_plugins.err" &

####################################################################################################
# Wait for background jobs
####################################################################################################

wait
echo "All installation tasks completed."

####################################################################################################
