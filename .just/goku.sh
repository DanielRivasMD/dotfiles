####################################################################################################
# Goku
####################################################################################################

#!/bin/bash
set -euo pipefail

####################################################################################################

# declarations
source .just/.config.sh

####################################################################################################

# format & watch
watchexec --watch "${karabiner}/karabiner.edn" -- 'cljfmt fix cerberus/karabiner/karabiner.edn && goku'

####################################################################################################
