#!/bin/bash
####################################################################################################
# config
####################################################################################################

# home
export home="${HOME}"
export config="${home}/.config"
export archive="${home}/.archive"
export cerberus="${archive}/cerberus"
export ianus="${archive}/ianus"
export forked="${home}/Forked"
export observatory="${home}/Observatory"
export appSupport="${home}/Library/Application Support"
export localShare="${home}/.local/share"
export setupDir="${archive}/.just/.setup"
export completionsDir="${archive}/completions"

####################################################################################################

# cerberus
export gitconfigDir="${cerberus}/gitconfig.d"
export git="${cerberus}/git"
export gitconfig="${git}/gitconfig"
export gitignore="${git}/gitignore_global"
export gemrc="${cerberus}/gem/gemrc"
export mplayer="${cerberus}/mplayer/mplayer"
export nanorc="${cerberus}/nano/nanorc"
export procs="${cerberus}/procs/procs.toml"
export atuin="${cerberus}/atuin"
export alacritty="${cerberus}/alacritty"
export bottom="${cerberus}/bottom"
export cheat="${cerberus}/cheat"
export karabiner="${cerberus}/karabiner"
export fragmented="${karabiner}/fragmented"
export khal="${cerberus}/khal"
export gh="${cerberus}/gh"
export ranger="${cerberus}/ranger"
export gitui="${cerberus}/gitui"
export zellij="${cerberus}/zellij"
export julia="${cerberus}/julia"
export sshConfig="${cerberus}/ssh/config"
export lazycli="${cerberus}/lazycli"
export lazygit="${cerberus}/lazygit"
export broot="${cerberus}/broot"
export espanso="${cerberus}/espanso"
export espansoConfig="${espanso}/config"
export espansoMatch="${espanso}/match"
export navi="${cerberus}/navi"
export lapce="${cerberus}/lapce"
export zshcomp="${config}/zsh_completion"
export zed="${cerberus}/zed"

export brootConf="${home}/.config/broot"
export lazycliConf="${appSupport}/lazycli"
export lazygitConf="${appSupport}/jesseduffield/lazygit"
export naviConf="${appSupport}/navi/cheats/drivas"
export espansoConf="${appSupport}/espanso"
export lapceConf="${appSupport}/dev.lapce.Lapce-Stable"

####################################################################################################

# ianus
export pier="${ianus}/pier"
export screen="${ianus}/screen"
export micro="${ianus}/micro"
export helix="${ianus}/helix"
export moded="${helix}/modes"
export lsd="${ianus}/lsd"
export sheldon="${ianus}/sheldon"
export starship="${ianus}/starship"

export shell="${ianus}/shell"
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
export ianusRemote="${homeRemote}/.archive/ianus"
export shellRemote="${ianusRemote}/shell"
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
