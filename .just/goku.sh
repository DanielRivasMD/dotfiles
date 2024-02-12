####################################################################################################
# Goku
####################################################################################################

#!/bin/sh
# set -euo pipefail

####################################################################################################

# declarations
source .just/.config.sh

####################################################################################################

# format
cljfmt fix "${fragmented}/"*

# concatenate
cat \
  "${fragmented}/.profiles.edn" \
  "${fragmented}/profile.edn" \
  "${fragmented}/.main.edn" \
  "${fragmented}/launcher.edn" \
  "${fragmented}/mail.edn" \
  "${fragmented}/firefox.edn" \
  "${fragmented}/lapce.edn" \
  "${fragmented}/alacritty.edn" \
  "${fragmented}/keys.edn" \
  "${fragmented}/espanso.edn" \
  "${fragmented}/zero.edn" \
  "${fragmented}/super.edn" \
  "${fragmented}/esc.edn" \
  "${fragmented}/tab.edn" \
  "${fragmented}/space.edn" \
  "${fragmented}/cmd.edn" \
  "${fragmented}/opt.edn" \
  "${fragmented}/ctrl.edn" \
  "${fragmented}/hyper.edn" \
  "${fragmented}/patch.edn" \
  "${fragmented}/fn.edn" \
  "${fragmented}/.eof.edn" \
  > "${karabiner}/karabiner.edn"

####################################################################################################
