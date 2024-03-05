#!/bin/bash
####################################################################################################
# config
####################################################################################################

# home
export home="${HOME}"
export archive="${home}/.archive"
export cerberus="${archive}/cerberus"
export ianus="${archive}/ianus"
export pier="${ianus}/pier"
export forge="${pier}/.forge"
export update="${pier}/.update"
export forked="${home}/Forked"
export observatory="${home}/Observatory"
export appSupport="${home}/Library/Application Support"
export localShare="${home}/.local/share"
export completionsDir="${archive}/completions"

####################################################################################################

# pueue
export pueuedTracker="${appSupport}/pueue/pueue.pid"
export pueueWGroup="forgeMaster"
export pueueUGroup="update"

####################################################################################################

# load colors
source "${archive}/colors.sh"

####################################################################################################
