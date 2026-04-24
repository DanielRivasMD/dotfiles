#!/bin/bash
####################################################################################################

echo_header() { printf '\033[1;32m%s\033[0m\n' "$1"; }
sep() { printf '\033[0;31m%s\033[0m\n' '===================================================================================================='; }

link_config() {
  local src="$1" dst="$2" label="$3"
  if [[ -z "$src" || ! -e "$src" ]]; then
    printf "Warning: source \033[1;31m%s\033[0m not found, skipping link for \033[1;34m%s\033[0m\n" "$src" "$label"
    return 0
  fi
  mkdir -p "$(dirname "$dst")"
  ln -sf "$src" "$dst"
  printf "Linked \033[1;33m=>\033[0m \033[1;34m%s\033[0m\n" "$label"
}

generate_completion() {
  local cmd="$1" output="$2"
  local base_cmd="${cmd%% *}"
  if command -v "$base_cmd" &>/dev/null; then
    mkdir -p "$zshCompDir"
    eval "$cmd" >"${zshCompDir}/$output" 2>/dev/null
    printf "Installed completion \033[1;33m=>\033[0m \033[1;36m%s\033[0m\n" "$output"
  else
    printf "Warning: command \033[1;31m%s\033[0m not found, skipping completion for \033[1;36m%s\033[0m\n" "$base_cmd" "$output"
  fi
}

####################################################################################################
# config
####################################################################################################

OS="$(uname -s)"
case "$OS" in
  Darwin) export IS_MACOS=1 ;;
  Linux) export IS_LINUX=1 ;;
  *)
    echo "Unsupported OS: $OS"
    exit 1
    ;;
esac

export homeDir="$HOME"

export configDir="${homeDir}/.config"
export zshCompDir="${configDir}/zsh_completion"
export localShareDir="${homeDir}/.local/share"
export completionHomeDir="${homeDir}/.completion"
export forkedDir="${homeDir}/Forked"
export linkedDir="${homeDir}/Linked"
export appSupportDir="${homeDir}/Library/Application Support"

if [[ -n "$IS_MACOS" ]]; then
  export espansoDir="${appSupportDir}/espanso"
  export lazygitDir="${appSupportDir}/jesseduffield/lazygit"
  export lazynpmDir="${appSupportDir}/jesseduffield/lazynpm"
  export lazycliDir="${appSupportDir}/lazycli"
  export lazydockerDir="${appSupportDir}/lazydocker"
  export ghosttyDir"${appSupportDir}/com.mitchellh.ghostty"
  export nuDir="${appSupportDir}/nushell"
else
  export espansoDir="${localShareDir}/espanso"
  export lazygitDir="${localShareDir}/jesseduffield/lazygit"
  export lazynpmDir="${localShareDir}/jesseduffield/lazynpm"
  export lazycliDir="${localShareDir}/lazycli"
  export lazydockerDir="${localShareDir}/lazydocker"
  export ghosttyDir="${configDir}/ghostty"
  export nuDir="${configDir}/nushell"
fi

export dotfilesDir="$(git rev-parse --show-toplevel 2>/dev/null)"
export binDir="${dotfilesDir}/bin"
export inSituDir="${dotfilesDir}/in-situ"
export exSituDir="${dotfilesDir}/ex-situ"
export inSilicoDir="${dotfilesDir}/in-silico"
export completionDotDir="${dotfilesDir}/completions"

# export naviDir="${appSupportDir}/navi"

export zshCompDir="${configDir}/zsh_completion"

export pawseyId="drivas@topaz.pawsey.org.au"
export softwarePawsey="/scratch/pawsey0263/drivas/software"

####################################################################################################
