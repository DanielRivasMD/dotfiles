#!/bin/sh
####################################################################################################

update() {
  zellij action rename-tab Update
  zellij --new-session-with-layout "$HOME/.archive/in-silico/layouts/update.kdl"
}

####################################################################################################
