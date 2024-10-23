#!/bin/bash
####################################################################################################
# goku
####################################################################################################

# forge goku
_forge() {

  # config
  source "${IN_SILICO}/.config/config.sh"

  # format
  cljfmt fix "${frag}/"*

  # create temporary files
  echo "" >> "${karabiner}/.profile.tmp"
  echo "{:profiles" >> "${karabiner}/.profile.tmp"
  echo "" >> "${karabiner}/.profile.tmp"

  echo "" >> "${karabiner}/.main.tmp"
  echo ":main [" >> "${karabiner}/.main.tmp"
  echo "" >> "${karabiner}/.main.tmp"

  echo "" >> "${karabiner}/.eof.tmp"
  echo "]}]}" >> "${karabiner}/.eof.tmp"
  echo "" >> "${karabiner}/.eof.tmp"

  # concatenate
  cat \
    "${karabiner}/.profile.tmp" \
    "${fsimple}/profile.edn" \
    "${karabiner}/.main.tmp" \
    "${fapps}/browser.edn" \
    "${fapps}/editor.edn" \
    "${fapps}/lapce.edn" \
    "${fapps}/mail.edn" \
    "${fapps}/mouse.edn" \
    "${fapps}/zed.edn" \
    "${fsimple}/arrow.edn" \
    "${fsimple}/bs.edn" \
    "${fsimple}/lcmd.edn" \
    "${fsimple}/cc.edn" \
    "${fsimple}/esc.edn" \
    "${fsimple}/function.edn" \
    "${fsimple}/joker.edn" \
    "${fsimple}/rshift.edn" \
    "${fsimple}/lctl.edn" \
    "${fsimple}/lopt.edn" \
    "${fsimple}/lshift.edn" \
    "${fsimple}/patch.edn" \
    "${fsimple}/q-layer.edn" \
    "${fsimple}/rcmd.edn" \
    "${fsimple}/rctl.edn" \
    "${fsimple}/ropt.edn" \
    "${fsimple}/tab.edn" \
    "${fapps}/zellij.edn" \
    "${fsimple}/keys.edn" \
    "${karabiner}/.eof.tmp" \
    > "${karabiner}/karabiner.edn"

  # purge temporary files
  rm "${karabiner}/.profile.tmp"
  rm "${karabiner}/.main.tmp"
  rm "${karabiner}/.eof.tmp"

  # render config
  goku

}

####################################################################################################

# execute
_forge

####################################################################################################
