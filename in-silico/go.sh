####################################################################################################
# Install Go Version Manager
####################################################################################################

curl -sSL https://git.io/g-install | sh -s

####################################################################################################
# Install Latest Go Version and Global Updater
####################################################################################################

g install latest   # Install latest stable Go version

####################################################################################################
# Install Go Language Tools
####################################################################################################

go_tools=(
  golang.org/x/tools/gopls                       # Go language server
  github.com/go-delve/delve/cmd/dlv              # Go debugger
  github.com/nametake/golangci-lint-langserver   # Lint language server
)

for tool in "${go_tools[@]}"; do
  echo "Installing ${tool}..."
  go install "${tool}@latest"
done

####################################################################################################
# Install Go Binaries
####################################################################################################

go_binaries=(
  github.com/Gelio/go-global-update    # Go updater for global binaries
  github.com/mikefarah/yq/v4           # Portable command-line processor
  github.com/zyedidia/eget             # Binary installer
  github.com/jesseduffield/lazygit     # Git UI
  github.com/jesseduffield/lazydocker  # Docker UI
  github.com/jesseduffield/lazynpm     # npm UI
  github.com/itchyny/mmv/cmd/mmv       # Mass file renamer
  github.com/itchyny/fillin            # Form-based CLI filler
  github.com/spf13/cobra-cli           # CLI generator
)

for binary in "${go_binaries[@]}"; do
  echo "Installing ${binary}..."
  go install "${binary}@latest"
done

####################################################################################################
