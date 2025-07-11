####################################################################################################

# Zellij Plugin Installer
# Downloads .wasm plugin binaries into ~/.config/zellij/plugins/
# Skips existing files and reports failed downloads

# Ensure plugin directory exists
PLUGIN_DIR="$HOME/.config/zellij/plugins"
mkdir -p "$PLUGIN_DIR"

####################################################################################################

# Plugin URLs
PLUGINS=(
  "https://github.com/dam4rus/zj-git-branch/releases/download/v0.4.1/zj-git-branch.wasm"
  "https://github.com/rvcas/room/releases/latest/download/room.wasm"
  "https://github.com/nim65s/jbz/releases/latest/download/jbz.wasm"
  "https://github.com/imsnif/multitask/releases/latest/download/multitask.wasm"
  "https://github.com/karimould/zellij-forgot/releases/latest/download/zellij_forgot.wasm"
  "https://github.com/imsnif/monocle/releases/latest/download/monocle.wasm"
  "https://github.com/Nacho114/harpoon/releases/latest/download/harpoon.wasm"
  "https://github.com/blank2121/zellij-jump-list/releases/latest/download/zellij-jump-list.wasm"
)

####################################################################################################

# Download Plugins
for plugin_url in "${PLUGINS[@]}"; do
  filename="${plugin_url##*/}"
  target_path="$PLUGIN_DIR/$filename"

  echo "Checking: $filename"

  if [[ -f "$target_path" ]]; then
    echo "Already exists: $filename, skipping"
    echo ""
    continue
  fi

  echo "Downloading: $plugin_url"
  if curl -LsSf "$plugin_url" -o "$target_path"; then
    echo "Downloaded: $filename"
  else
    echo "Failed to download: $plugin_url"
  fi
  echo ""

done

echo "Done installing plugins"

####################################################################################################
