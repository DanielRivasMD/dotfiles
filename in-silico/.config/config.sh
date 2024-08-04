#!/bin/sh
####################################################################################################
# config
####################################################################################################

# home
export home="${HOME}"
export config="${home}/.config"
export archive="${home}/.archive"
export in_situ="${archive}/in-situ"
export ex_situ="${archive}/ex-situ"
export in_silico="${archive}/in-silico"
export forked="${home}/Forked"
export observatory="${home}/Observatory"
export appSupport="${home}/Library/Application Support"
export localShare="${home}/.local/share"
export setupDir="${archive}/.just/.setup"
export completionsDir="${archive}/completions"

####################################################################################################
# in-situ
####################################################################################################

# git files
export git="${in_situ}/git"
export gitconfig="${git}/gitconfig"
export gitignore="${git}/gitignore_global"

# rc config
export mplayer="${in_situ}/mplayer/mplayer"

# toml files
export procs="${in_situ}/procs/procs.toml"

# config files
export atuin="${in_situ}/atuin"
export alacritty="${in_situ}/alacritty"
export bottom="${in_situ}/bottom"
export cheat="${in_situ}/cheat"

export gh="${in_situ}/gh"
export khal="${in_situ}/khal"
export karabiner="${in_situ}/karabiner"
export frag="${karabiner}/frag"
export fprof="${frag}/profile"
export fapps="${frag}/apps"
export farrow="${frag}/arrow"
export fbspace="${frag}/bspace"
export fcmd="${frag}/cmd"
export fctlcmd="${frag}/ctlcmd"
export fespanso="${frag}/espanso"
export fjoker="${frag}/joker"
export fshift="${frag}/shift"
export fsimple="${frag}/simple"
export fterm="${frag}/term"
export fzellij="${frag}/zellij"
export fkeys="${frag}/keys"

# config dirs
export gitui="${in_situ}/gitui"
export zed="${in_situ}/zed"
export zellij="${in_situ}/zellij"

# distant
export julia="${in_situ}/julia"
export sshConfig="${in_situ}/ssh/config"
export lazycli="${in_situ}/lazycli"
export lazycliConf="${appSupport}/lazycli"
export lazygit="${in_situ}/lazygit"
export lazygitConf="${appSupport}/jesseduffield/lazygit"
export lapce="${in_situ}/lapce"
export lapceConf="${appSupport}/dev.lapce.Lapce-Stable"

# broot
export broot="${in_situ}/broot"
export brootConf="${home}/.config/broot"

# espanso
export espanso="${in_situ}/espanso"
export espansoConfig="${espanso}/config"
export espansoMatch="${espanso}/match"
export espansoConf="${appSupport}/espanso"

# navi
export navi="${in_situ}/navi"
export naviConf="${appSupport}/navi/cheats/drivas"

####################################################################################################
# ex-situ
####################################################################################################

# @HOME
export pier="${ex_situ}/pier"
export screen="${ex_situ}/screen"
export mycli="${ex_situ}/mycli"

# @config
export bpython="${ex_situ}/bpython"
export helix="${ex_situ}/helix"
export moded="${helix}/modes"
export lsd="${ex_situ}/lsd"
export micro="${ex_situ}/micro"
export sheldon="${ex_situ}/sheldon"
export starship="${ex_situ}/starship"

# shell
export shell="${ex_situ}/shell"
export terminal="${shell}/terminal"

# bash
export bash="${shell}/bash"

# zsh
export zsh="${shell}/zsh"

# nushell
export nushell="${shell}/nushell"
export nushellConf="${appSupport}/nushell"

####################################################################################################
# ergo
####################################################################################################

# completions
export zshcomp="${config}/zsh_completion"

####################################################################################################

# remote
export remoteBin="${home}/RemoteBin"
export homeRemote="/home/drivas"
export ex_situRemote="${homeRemote}/.archive/ex-situ"
export shellRemote="${ex_situRemote}/shell"
export terminalRemote="${shellRemote}/terminal"
export bashRemote="${shellRemote}/bash"
export zshRemote="${shellRemote}/zsh"

# pawsey
export pawseyID="drivas@topaz.pawsey.org.au"
export softwarePawsey="/scratch/pawsey0263/drivas/software"

####################################################################################################

# pueue
export pueuedTracker="${appSupport}/pueue/pueue.pid"
export pueuedSocket="${appSupport}/pueue/pueue_drivas.socket="
export pueueFG="forge"
export pueueUG="update"

####################################################################################################

# load colors
source "${in_silico}/.config/colors.sh"

####################################################################################################
