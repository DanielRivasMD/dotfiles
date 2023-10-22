#!/bin/bash
set -euo pipefail

####################################################################################################

# home
home="${HOME}"
config="${home}/.config"
archive="${home}/.archive"
cerberus="${archive}/cerberus"
ianus="${archive}/ianus"
forked="${home}/Forked"
observatory="${home}/Observatory"
appSuport="${home}/Library/Application Support"
localShare="${home}/.local/share"

####################################################################################################

# cerberus
brootConf="${home}/.config/broot"
lazycliConf="${appSuport}/lazycli"
lazygitConf="${appSuport}/jesseduffield/lazygit"
naviConf="${appSuport}/navi/cheats/drivas"
espansoConf="${appSuport}/espanso"

####################################################################################################

# ianus
shell="${ianus}/shell"
terminal="${shell}/terminal"
bash="${shell}/bash"
fish="${shell}/fish"
zsh="${shell}/zsh"
nushell="${shell}/nushell"
nushellConf="${appSuport}/nushell"

####################################################################################################

# remote
remoteBin="${home}/RemoteBin"
homeRemote="/home/drivas"
ianusRemote="${homeRemote}/.archive/ianus"
shellRemote="${ianusRemote}/shell"
terminalRemote="${shellRemote}/terminal"
bashRemote="${shellRemote}/bash"
fishRemote="${shellRemote}/fish"
zshRemote="${shellRemote}/zsh"

# Pawsey
pawseyID="drivas@topaz.pawsey.org.au"
softwarePawsey="/scratch/pawsey0263/drivas/software"

####################################################################################################
