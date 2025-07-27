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
  eval "$cmd" > "${zshcomp}/${out}" && echo "Installed completion ${byellow}=>${nc} ${bcyan}${out}${nc}"
}

####################################################################################################
# config
####################################################################################################

# home
export home="${HOME}"
export config="${home}/.config"
export localShare="${home}/.local/share"
export completionHome="${home}/.completion"
export forkedHome="${home}/Forked"
export linkedHome="${home}/Linked"
export appSupport="${home}/Library/Application Support"

# dotfiles
dotfiles=$(git rev-parse --show-toplevel)
export in_situ="${dotfiles}/in-situ"
export ex_situ="${dotfiles}/ex-situ"
export in_silico="${dotfiles}/in-silico"
export completionDot="${dotfiles}/completions"

# in-situ
export naviAppS="${appSupport}/navi/"
export espansoAppS="${appSupport}/espanso"
export halpAppS="${appSupport}/halp"
export lazygitAppS="${appSupport}/jesseduffield/lazygit"
export lazynpmAppS="${appSupport}/jesseduffield/lazynpm"
export lazycliAppS="${appSupport}/lazycli"
export lazydockerAppS="${appSupport}/lazydocker"

# ex-situ
export nuAppS="${appSupport}/nushell"

####################################################################################################
# ergo
####################################################################################################

# completions
export zshcomp="${config}/zsh_completion"

####################################################################################################
# remote
####################################################################################################

# pawsey
export pawseyID="drivas@topaz.pawsey.org.au"
export softwarePawsey="/scratch/pawsey0263/drivas/software"

####################################################################################################
