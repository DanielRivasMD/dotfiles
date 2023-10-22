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
appSupport="${home}/Library/Application Support"
localShare="${home}/.local/share"

####################################################################################################

# cerberus
brootConf="${home}/.config/broot"
lazycliConf="${appSupport}/lazycli"
lazygitConf="${appSupport}/jesseduffield/lazygit"
naviConf="${appSupport}/navi/cheats/drivas"
espansoConf="${appSupport}/espanso"

####################################################################################################

# ianus
shell="${ianus}/shell"
terminal="${shell}/terminal"
bash="${shell}/bash"
fish="${shell}/fish"
zsh="${shell}/zsh"
nushell="${shell}/nushell"
nushellConf="${appSupport}/nushell"

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
