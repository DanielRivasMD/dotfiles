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
    "${fprof}/profile.edn" \
    "${karabiner}/.main.tmp" \
    "${fapps}/browser.edn" \
    "${fapps}/editor.edn" \
    "${fapps}/lapce.edn" \
    "${fapps}/mail.edn" \
    "${fapps}/mouse.edn" \
    "${fapps}/zed.edn" \
    "${farrow}/arrow-fn.edn" \
    "${fbspace}/bs-ctlABC.edn" \
    "${fcmd}/lcmd-fn.edn" \
    "${fctlcmd}/cc-fn.edn" \
    "${fespanso}/esc.edn" \
    "${fespanso}/espanso.edn" \
    "${fespanso}/function.edn" \
    "${fjoker}/joker-fn.edn" \
    "${fshift}/rshift-ctlABC.edn" \
    "${fsimple}/lctl.edn" \
    "${fsimple}/lopt.edn" \
    "${fsimple}/lshift.edn" \
    "${fsimple}/patch.edn" \
    "${fsimple}/q-layer.edn" \
    "${fsimple}/rcmd.edn" \
    "${fsimple}/rctl.edn" \
    "${fsimple}/ropt.edn" \
    "${fsimple}/tab.edn" \
    "${fzellij}/ABC-fn.edn" \
    "${fzellij}/mod-ABC.edn" \
    "${fkeys}/keys.edn" \
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
