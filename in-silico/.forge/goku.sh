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
  cat << HEAD >> "${karabiner}/.profile.tmp"

{:profiles

HEAD

  cat << HEAD >> "${karabiner}/.main.tmp"

  :main [

HEAD

  cat << HEAD >> "${karabiner}/.eof.tmp"

    ]}]}

HEAD

  # concatenate
  cat \
    "${karabiner}/.profile.tmp" \
    "${fprofile}/profile.edn" \
    "${karabiner}/.main.tmp" \
    "${fapps}/browser.edn" \
    "${fapps}/editor.edn" \
    "${fapps}/lapce.edn" \
    "${fapps}/mail.edn" \
    "${fapps}/mouse.edn" \
    "${fapps}/zed.edn" \
    "${fapps}/alacritty.edn" \
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
    "${fprofile}/keys.edn" \
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
