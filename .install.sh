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

clone_if_missing () {
  local repo_url=$1
  local target_dir=$2
  if [ ! -d "${target_dir}" ]; then
    if git clone "${repo_url}" "${target_dir}"; then
      echo "Cloned ${repo_url} to ${target_dir}"
    else
      echo "Failed to clone ${repo_url} into ${target_dir}" >&2
    fi
  else
    echo "Repo ${target_dir} already exists. Skipping clone."
  fi
}

####################################################################################################
# Ergo (background setup)
####################################################################################################

mkdir -p "${HOME}/.completion"
(
  cd "${HOME}/.completion" && {
    clone_if_missing https://github.com/nikolassv/bartib        bartib
    clone_if_missing https://github.com/twpayne/chezmoi         chezmoi
    clone_if_missing https://github.com/eza-community/eza       eza
    clone_if_missing https://github.com/sharkdp/fd              fd
    clone_if_missing https://github.com/casey/just              just
    clone_if_missing https://github.com/watchexec/watchexec     watchexec
  }
) &

mkdir -p "${HOME}/Linked"
(
  cd "${HOME}/Linked" && {
    clone_if_missing https://github.com/lavifb/todo_r           todo_r
    clone_if_missing https://github.com/mikefarah/yq            yq
  }
) &

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

setup_zellij_plugins () {
  local plugin_dir="$HOME/.config/zellij/plugins"
  mkdir -p "$plugin_dir"

  local plugins=(
    "https://github.com/dam4rus/zj-git-branch/releases/download/v0.4.1/zj-git-branch.wasm"
    "https://github.com/rvcas/room/releases/latest/download/room.wasm"
    "https://github.com/nim65s/jbz/releases/latest/download/jbz.wasm"
    "https://github.com/imsnif/multitask/releases/latest/download/multitask.wasm"
    "https://github.com/karimould/zellij-forgot/releases/latest/download/zellij_forgot.wasm"
    "https://github.com/imsnif/monocle/releases/latest/download/monocle.wasm"
    "https://github.com/Nacho114/harpoon/releases/latest/download/harpoon.wasm"
    "https://github.com/blank2121/zellij-jump-list/releases/latest/download/zellij-jump-list.wasm"
  )

  for plugin in "${plugins[@]}"; do
    local filename="${plugin##*/}"
    local target="$plugin_dir/$filename"

    if [[ -f "$target" ]]; then
      echo "Zellij plugin already exists: $filename"
    else
      echo "Downloading Zellij plugin: $filename"
      if ! curl -LsSf "$plugin" -o "$target"; then
        echo "Failed to download: $plugin" >&2
      fi
    fi
  done
}

####################################################################################################

setup_zellij_plugins >> "${archDir}/log/zellij_plugins.out" 2>> "${archDir}/log/zellij_plugins.err" &

####################################################################################################
# Wait for background jobs
####################################################################################################

wait
echo "All installation tasks completed."

####################################################################################################
