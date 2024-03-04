#!/bin/bash
####################################################################################################
# config
####################################################################################################

# home
home="${HOME}"
config="${home}/.config"
archive="${home}/.archive"
cerberus="${archive}/cerberus"
ianus="${archive}/ianus"
forge="${archive}/.just/.forge"
update="${archive}/.just/.update"
forked="${home}/Forked"
observatory="${home}/Observatory"
appSupport="${home}/Library/Application Support"
localShare="${home}/.local/share"
setupDir="${archive}/.just/.setup"
completionsDir="${archive}/completions"

####################################################################################################

# cerberus
gitconfigDir="${cerberus}/gitconfig.d"
git="${cerberus}/git"
gitconfig="${git}/gitconfig"
gitignore="${git}/gitignore_global"
gemrc="${cerberus}/gem/gemrc"
mplayer="${cerberus}/mplayer/mplayer"
nanorc="${cerberus}/nano/nanorc"
procs="${cerberus}/procs/procs.toml"
atuin="${cerberus}/atuin"
alacritty="${cerberus}/alacritty"
bottom="${cerberus}/bottom"
cheat="${cerberus}/cheat"
karabiner="${cerberus}/karabiner"
fragmented="${karabiner}/fragmented"
khal="${cerberus}/khal"
gh="${cerberus}/gh"
ranger="${cerberus}/ranger"
gitui="${cerberus}/gitui"
zellij="${cerberus}/zellij"
julia="${cerberus}/julia"
sshConfig="${cerberus}/ssh/config"
lazycli="${cerberus}/lazycli"
lazygit="${cerberus}/lazygit"
broot="${cerberus}/broot"
espanso="${cerberus}/espanso"
espansoConfig="${espanso}/config"
espansoMatch="${espanso}/match"
navi="${cerberus}/navi"
lapce="${cerberus}/lapce"
zshcomp="${config}/zsh_completion"
zed="${cerberus}/zed"

brootConf="${home}/.config/broot"
lazycliConf="${appSupport}/lazycli"
lazygitConf="${appSupport}/jesseduffield/lazygit"
naviConf="${appSupport}/navi/cheats/drivas"
espansoConf="${appSupport}/espanso"
lapceConf="${appSupport}/dev.lapce.Lapce-Stable"

####################################################################################################

# ianus
pier="${ianus}/pier"
tmux="${ianus}/tmux"
screen="${ianus}/screen"
micro="${ianus}/micro"
helix="${ianus}/helix"
moded="${helix}/modes"
lsd="${ianus}/lsd"
sheldon="${ianus}/sheldon"
starship="${ianus}/starship"

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

# pawsey
pawseyID="drivas@topaz.pawsey.org.au"
softwarePawsey="/scratch/pawsey0263/drivas/software"

####################################################################################################

# pueue
pueuedTracker="${appSupport}/pueue/pueue.pid"
pueueWGroup="forgeMaster"
pueueUGroup="update"

####################################################################################################

# colors
NC='\033[0m'
BLACK='\033[0;30m'
GRAY='\033[1;30m'
RED='\033[0;31m'
LIGHT_RED='\033[1;31m'
GREEN='\033[0;32m'
LIGHT_GREEN='\033[1;32m'
BROWN='\033[0;33m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
LIGHT_BLUE='\033[1;34m'
PURPLE='\033[0;35m'
LIGHT_PURPLE='\033[1;35m'
CYAN='\033[0;36m'
LIGHT_CYAN='\033[1;36m'
LIGHT_GRAY='\033[0;37m'
WHITE='\033[1;37m'


####################################################################################################
