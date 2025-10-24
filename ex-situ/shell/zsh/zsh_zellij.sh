#!/usr/bin/env zsh

####################################################################################################

if [[ -z "$ZELLIJ" ]]; then
  if [[ "$ZELLIJ_AUTO_ATTACH" == "true" ]]; then
    zellij attach
  else
    zellij --layout "${ZELLIJ_CONFIG_DIR}/layouts/control.kdl"
  fi

  if [[ "$ZELLIJ_AUTO_EXIT" == "true" ]]; then
    exit
  fi
fi

####################################################################################################
