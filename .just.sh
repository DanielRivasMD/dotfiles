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

####################################################################################################

# cerberus
brootConf="${home}/.config/broot"
codeConf="${appSuport}/Code/User"
lazycliConf="${appSuport}/lazycli"
lazygitConf="${appSuport}/jesseduffield/lazygit"
naviConf="${appSuport}/navi/cheats/drivas"

# distant
sublime="${appSuport}/Sublime Text 3/Packages/User"
sublKeymapOrigin="${sublime}/Default (OSX).sublime-keymap"
sublKeymapTarget="${cerberus}/sublime/Default (OSX).sublime-keymap.json"
sublPackageOrigin="${sublime}/Package Control.sublime-settings"
sublPackageTarget="${cerberus}/sublime/Package Control.sublime-settings.json"
sublSettingOrigin="${sublime}/Preferences.sublime-settings"
sublSettingTarget="${cerberus}/sublime/Preferences.sublime-settings.json"
sublTrailOrigin="${sublime}/trailing_spaces.sublime-settings"
sublTrailTarget="${cerberus}/sublime/trailing_spaces.sublime-settings.json"
sublRustOrigin="${sublime}/RustEnhanced.sublime-settings"
sublRustTarget="${cerberus}/sublime/RustEnhanced.sublime-settings.json"
sublRfmtOrigin="${sublime}/RustFmt.sublime-settings"
sublRfmtTarget="${cerberus}/sublime/RustFmt.sublime-settings.json"
sublGitOrigin="${sublime}/GitGutter.sublime-settings"
sublGitTarget="${cerberus}/sublime/GitGutter.sublime-settings.json"

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

# Uppmax
uppmaxID="drivas@rackham.uppmax.uu.se"

# Pawsey
pawseyID="drivas@topaz.pawsey.org.au"
softwarePawsey="/scratch/pawsey0263/drivas/software"

# Ulam
ulamID="drivas@ulam.icm.uu.se"

####################################################################################################
