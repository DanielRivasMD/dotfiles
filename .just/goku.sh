####################################################################################################
# Goku
####################################################################################################

#!/bin/sh

####################################################################################################

# declarations
source .just/.config.sh

####################################################################################################

# format
cljfmt fix "${fragmented}/"*

####################################################################################################

# create temporary files
echo "\n{:profiles\n" > "${karabiner}/.profile.tmp"
echo "\n:main [\n" > "${karabiner}/.main.tmp"
echo "\n]}]}" > "${karabiner}/.eof.tmp"

####################################################################################################

# concatenate
cat \
  "${karabiner}/.profile.tmp" \
  "${fragmented}/profile.edn" \
  "${karabiner}/.main.tmp" \
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
  "${karabiner}/.eof.tmp" \
  > "${karabiner}/karabiner.edn"

####################################################################################################

# purge temporary files
rm "${karabiner}/.profile.tmp"
rm "${karabiner}/.main.tmp"
rm "${karabiner}/.eof.tmp"

####################################################################################################