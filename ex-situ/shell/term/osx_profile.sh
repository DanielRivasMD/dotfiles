####################################################################################################
# OSX Defaults
####################################################################################################

# Patch for screen Ctrl+Q issue (only if interactive terminal)
if [ -t 0 ]; then
  stty -ixon
fi

####################################################################################################
# Language and Locale Settings
####################################################################################################

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANGUAGE="en_US"

# Optional: override individual LC_* if needed
# export LC_CTYPE="en_US.UTF-8"
# export LC_NUMERIC="en_US.UTF-8"
# export LC_TIME="en_US.UTF-8"
# export LC_COLLATE="en_US.UTF-8"
# export LC_MONETARY="en_US.UTF-8"
# export LC_MESSAGES="en_US.UTF-8"

####################################################################################################
# Environment Anchors
####################################################################################################

export ZSH_COMPLETION="$HOME/.config/zsh_completion"

####################################################################################################
# Application Settings
####################################################################################################

# Bartib
export BARTIB_FILE="$HOME/.config/bartib/db.bartib"

# Starship
export STARSHIP_CONFIG="$HOME/.config/starship/osx_starship.toml"

# Zellij
export ZELLIJ_CONFIG_DIR="$HOME/.config/zellij"
export ZELLIJ_CONFIG_FILE="$ZELLIJ_CONFIG_DIR/config.kdl"

# Editor
export VISUAL="micro"
export EDITOR="$VISUAL"

# Pager
export PAGER="bat"
export BAT_PAGER="less"
export RCOLUMNS="${COLUMNS:-80}"

# Terminal Width
export MANWIDTH="175"

# Less
export LESSHISTFILE="-"

####################################################################################################
# PATH Setup
####################################################################################################

export GOPATH="$HOME/go"
export GOROOT="$HOME/.go"
export BUN_INSTALL="$HOME/.bun"

path_additions=(
  "$HOME/.cargo/bin"
  "$GOPATH/bin"
  "/usr/local/mysql/bin"
  "$HOME/.python/bin"
  "$HOME/bin/links"
  "/usr/local/bin"
  "/usr/local/sbin"
  "/opt/homebrew/opt/llvm/bin"
  "${HOME}/.aliases.d/shims"
)

for dir in "${path_additions[@]}"; do
  [[ -d "$dir" ]] && PATH="$dir:$PATH"
done

export PATH

####################################################################################################
# Runtime Sources
####################################################################################################

# Broot launcher
[[ -f "$HOME/.config/broot/launcher/bash/br" ]] && source "$HOME/.config/broot/launcher/bash/br"

# Deno
[[ -f "$HOME/.deno/env" ]] && source "$HOME/.deno/env"

# Bun completions
[[ -f "$BUN_INSTALL/_bun" ]] && source "$BUN_INSTALL/_bun"

####################################################################################################
