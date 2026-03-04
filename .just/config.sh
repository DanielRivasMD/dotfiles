####################################################################################################
# Helpers
####################################################################################################

sep() {
  local red='\033[0;31m'
  local nc='\033[0m'
  echo "${red}====================================================================================================${nc}"
}

echo_header() {
  local green='\033[1;32m'
  local nc='\033[0m'
  local header=$1
  echo ''
  echo "${green}${header}${nc}"
}

# link_config <source> <destination> <label>
link_config() {
  local byellow='\033[1;33m'
  local bblue='\033[1;34m'
  local nc='\033[0m'
  local src=$1 dst=$2 out=${3:-}
  ln -sf "$src" "$dst" && echo "Linked ${byellow}=>${nc} ${bblue}${out}${nc}"
}

# generate_completion <command> <output-filename>
generate_completion() {
  local byellow='\033[1;33m'
  local bcyan='\033[1;36m'
  local nc='\033[0m'
  local cmd=$1 out=$2
  eval "$cmd" >"${zshcomp}/${out}" && echo "Installed completion ${byellow}=>${nc} ${bcyan}${out}${nc}"
}

####################################################################################################
# config
####################################################################################################

# Detect operating system
OS="$(uname -s)"
case "$OS" in
  Darwin) export IS_MACOS=1 ;;
  Linux) export IS_LINUX=1 ;;
  *)
    echo "Unsupported OS: $OS"
    exit 1
    ;;
esac

# Home directory
export homeDir="$HOME"

# Base directories
export configDir="${homeDir}/.config"
export localShareDir="${homeDir}/.local/share"
export completionHomeDir="${homeDir}/.completion"
export forkedDir="${homeDir}/Forked"
export linkedDir="${homeDir}/Linked"

# Application support directory (OS‑specific)
if [[ -n "$IS_MACOS" ]]; then
  export appSupportDir="${homeDir}/Library/Application Support"
else
  # TODO: double check linux config
  # On Linux, many apps use ~/.local/share or ~/.config; adjust as needed.
  # You can refine this per application later.
  export appSupportDir="${localShareDir}"
fi

# Dotfiles root (assumes this script is run from within the dotfiles repo)
export dotfilesDir="$(git rev-parse --show-toplevel 2>/dev/null)"
if [[ -z "$dotfilesDir" ]]; then
  echo "Error: not inside a git repository (dotfiles)" >&2
  exit 1
fi

# Dotfiles subdirectories
export binDir="${dotfilesDir}/bin"
export inSituDir="${dotfilesDir}/in-situ"
export exSituDir="${dotfilesDir}/ex-situ"
export inSilicoDir="${dotfilesDir}/in-silico"
export completionDotDir="${dotfilesDir}/completions"

# Application‑specific data paths (in‑situ)
export naviAppDir="${appSupportDir}/navi"
export espansoAppDir="${appSupportDir}/espanso"
export lazygitAppDir="${appSupportDir}/jesseduffield/lazygit"
export lazynpmAppDir="${appSupportDir}/jesseduffield/lazynpm"
export lazycliAppDir="${appSupportDir}/lazycli"
export lazydockerAppDir="${appSupportDir}/lazydocker"

# Ex‑situ applications
export nuAppDir="${appSupportDir}/nushell"

# Zsh completions destination
export zshCompDir="${configDir}/zsh_completion"

# Remote (Pawsey) – keep as is, only relevant on that machine
export pawseyId="drivas@topaz.pawsey.org.au"
export softwarePawsey="/scratch/pawsey0263/drivas/software"

####################################################################################################
