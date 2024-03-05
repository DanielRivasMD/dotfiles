#!/bin/bash
####################################################################################################
# config
####################################################################################################

# home
export home="${HOME}"
export config="${home}/.config"
export archive="${home}/.archive"
export in_situ="${archive}/in-situ"
export ex_situ="${archive}/ex-situ"
export forked="${home}/Forked"
export observatory="${home}/Observatory"
export appSupport="${home}/Library/Application Support"
export localShare="${home}/.local/share"
export setupDir="${archive}/.just/.setup"
export completionsDir="${archive}/completions"

####################################################################################################

# in-situ
export gitconfigDir="${in_situ}/gitconfig.d"
export git="${in_situ}/git"
export gitconfig="${git}/gitconfig"
export gitignore="${git}/gitignore_global"
export gemrc="${in_situ}/gem/gemrc"
export mplayer="${in_situ}/mplayer/mplayer"
export nanorc="${in_situ}/nano/nanorc"
export procs="${in_situ}/procs/procs.toml"
export atuin="${in_situ}/atuin"
export alacritty="${in_situ}/alacritty"
export bottom="${in_situ}/bottom"
export cheat="${in_situ}/cheat"
export karabiner="${in_situ}/karabiner"
export fragmented="${karabiner}/fragmented"
export khal="${in_situ}/khal"
export gh="${in_situ}/gh"
export ranger="${in_situ}/ranger"
export gitui="${in_situ}/gitui"
export zellij="${in_situ}/zellij"
export julia="${in_situ}/julia"
export sshConfig="${in_situ}/ssh/config"
export lazycli="${in_situ}/lazycli"
export lazygit="${in_situ}/lazygit"
export broot="${in_situ}/broot"
export espanso="${in_situ}/espanso"
export espansoConfig="${espanso}/config"
export espansoMatch="${espanso}/match"
export navi="${in_situ}/navi"
export lapce="${in_situ}/lapce"
export zshcomp="${config}/zsh_completion"
export zed="${in_situ}/zed"

export brootConf="${home}/.config/broot"
export lazycliConf="${appSupport}/lazycli"
export lazygitConf="${appSupport}/jesseduffield/lazygit"
export naviConf="${appSupport}/navi/cheats/drivas"
export espansoConf="${appSupport}/espanso"
export lapceConf="${appSupport}/dev.lapce.Lapce-Stable"

####################################################################################################

# ex-situ
export pier="${ex_situ}/pier"
export screen="${ex_situ}/screen"
export micro="${ex_situ}/micro"
export helix="${ex_situ}/helix"
export moded="${helix}/modes"
export lsd="${ex_situ}/lsd"
export sheldon="${ex_situ}/sheldon"
export starship="${ex_situ}/starship"

export shell="${ex_situ}/shell"
export terminal="${shell}/terminal"
export bash="${shell}/bash"
export fish="${shell}/fish"
export zsh="${shell}/zsh"
export nushell="${shell}/nushell"
export nushellConf="${appSupport}/nushell"

####################################################################################################

# remote
export remoteBin="${home}/RemoteBin"
export homeRemote="/home/drivas"
export ex_situRemote="${homeRemote}/.archive/ex-situ"
export shellRemote="${ex_situRemote}/shell"
export terminalRemote="${shellRemote}/terminal"
export bashRemote="${shellRemote}/bash"
export fishRemote="${shellRemote}/fish"
export zshRemote="${shellRemote}/zsh"

# pawsey
export pawseyID="drivas@topaz.pawsey.org.au"
export softwarePawsey="/scratch/pawsey0263/drivas/software"

####################################################################################################

# colors
export NC='\033[0m'
export BLACK='\033[0;30m'
export GRAY='\033[1;30m'
export RED='\033[0;31m'
export LIGHT_RED='\033[1;31m'
export GREEN='\033[0;32m'
export LIGHT_GREEN='\033[1;32m'
export BROWN='\033[0;33m'
export YELLOW='\033[1;33m'
export BLUE='\033[0;34m'
export LIGHT_BLUE='\033[1;34m'
export PURPLE='\033[0;35m'
export LIGHT_PURPLE='\033[1;35m'
export CYAN='\033[0;36m'
export LIGHT_CYAN='\033[1;36m'
export LIGHT_GRAY='\033[0;37m'
export WHITE='\033[1;37m'

####################################################################################################
