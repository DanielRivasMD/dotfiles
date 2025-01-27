#!/bin/bash
####################################################################################################

while read plugin
do
  echo "${plugin}"
  curl -L "${plugin}" -o ~/.config/zellij/plugins/"${plugin##*/}"
done << HEAD
https://github.com/rvcas/room/releases/latest/download/room.wasm
https://github.com/nim65s/jbz/releases/latest/download/jbz.wasm
https://github.com/imsnif/multitask/releases/latest/download/multitask.wasm
https://github.com/karimould/zellij-forgot/releases/latest/download/zellij_forgot.wasm
https://github.com/imsnif/monocle/releases/latest/download/monocle.wasm
https://github.com/Nacho114/harpoon/releases/latest/download/harpoon.wasm
https://github.com/blank2121/zellij-jump-list/releases/latest/download/zellij-jump-list.wasm
HEAD

####################################################################################################
