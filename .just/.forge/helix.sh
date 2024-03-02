#!/bin/bash
####################################################################################################
# helix
####################################################################################################

function forge() {

  # declarations
  source $HOME/.archive/.just/.config.sh

  # create temporary files
  awk -v mode="normal_mode" '{gsub("XXX_MODE", mode); print $0}' "${moded}/common.toml" > "${helix}/.normal.tmp"
  awk -v mode="insert_mode" '{gsub("XXX_MODE", mode); print $0}' "${moded}/common.toml" > "${helix}/.insert.tmp"
  awk -v mode="select_mode" '{gsub("XXX_MODE", mode); print $0}' "${moded}/common.toml" > "${helix}/.select.tmp"

  # concatenate
  cat \
    "${moded}/theme.toml" \
    "${moded}/editor.toml" \
    "${moded}/normal.toml" \
    "${helix}/.normal.tmp" \
    "${moded}/insert.toml" \
    "${helix}/.insert.tmp" \
    "${moded}/select.toml" \
    "${helix}/.select.tmp" \
    > "${helix}/config.toml"

  # purge temporary files
  rm "${helix}/.normal.tmp"
  rm "${helix}/.insert.tmp"
  rm "${helix}/.select.tmp"

}

####################################################################################################

# execute
forge

####################################################################################################
