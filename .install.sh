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
ln -svf "$(pwd)" "${archDir}"

####################################################################################################
# Git clone helper
####################################################################################################

clone_if_missing () {
  local repo_url=$1
  local target_dir=$2
  if [ ! -d "${target_dir}" ]; then
    git clone "${repo_url}" "${target_dir}"
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
    clone_if_missing https://github.com/eza-community/eza        eza
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
  echo "Running $script_name..."
  bash "$1" >> "${archDir}/log/${script_name}.out" 2>> "${archDir}/log/${script_name}.err" &
}

####################################################################################################
# Run install scripts
####################################################################################################

run_install "${archDir}/.install/brew.sh"
run_install "${archDir}/.install/c++.sh"
run_install "${archDir}/.install/clojure.sh"
run_install "${archDir}/.install/go.sh"
run_install "${archDir}/.install/julia.sh"
run_install "${archDir}/.install/R.sh"
run_install "${archDir}/.install/rust.sh"

####################################################################################################
# Wait for background jobs
####################################################################################################

wait
echo "All installation tasks completed."

####################################################################################################
