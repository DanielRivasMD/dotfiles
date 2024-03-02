#!/bin/bash
####################################################################################################
# Goku
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
  "${fragmented}/mail.edn" \
  "${fragmented}/browser.edn" \
  "${fragmented}/editor.edn" \
  "${fragmented}/lapce.edn" \
  "${fragmented}/zed.edn" \
  "${fragmented}/terminal.edn" \
  "${fragmented}/zellij.edn" \
  "${fragmented}/keys.edn" \
  "${fragmented}/espanso.edn" \
  "${fragmented}/mouse.edn" \
  "${fragmented}/zero.edn" \
  "${fragmented}/super.edn" \
  "${fragmented}/function.edn" \
  "${fragmented}/esc.edn" \
  "${fragmented}/tab.edn" \
  "${fragmented}/space.edn" \
  "${fragmented}/ctrl_cmd.edn" \
  "${fragmented}/lopt.edn" \
  "${fragmented}/ctrl.edn" \
  "${fragmented}/hyper.edn" \
  "${fragmented}/lcmd.edn" \
  "${fragmented}/rshift.edn" \
  "${fragmented}/ropt.edn" \
  "${fragmented}/rcmd.edn" \
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