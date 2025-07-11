####################################################################################################
# Set archive directory
####################################################################################################

archDir="$HOME/.archive"
mkdir -p "${archDir}"

####################################################################################################
# Create log directory
####################################################################################################

echo "Ensuring log directory exists..."
mkdir -p "$(pwd)/log"

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
    git clone "${repo_url}" "${target_dir}"
    if ! git clone "${repo_url}" "${target_dir}"; then
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
# Wait for background jobs
####################################################################################################

wait
echo "All installation tasks completed."

####################################################################################################
