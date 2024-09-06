#!/bin/bash
####################################################################################################
# helix
####################################################################################################

_forge() {

  # config
  source "${IN_SILICO}/.config/config.sh"

  # create temporary files
  for type in normal insert select
  do
    awk -v mode="${type}_mode" '{gsub("MODE", mode); print $0}' "${moded}/common.toml" > "${helix}/.${type}.tmp"
  done

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
_forge

####################################################################################################
