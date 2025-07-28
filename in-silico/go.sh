####################################################################################################
# Install Go Version Manager
####################################################################################################

curl -sSL https://git.io/g-install | sh -s -- -y

####################################################################################################
# Install Latest Go Version and Global Updater
####################################################################################################

g install latest -y          # Install latest stable Go version

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
  github.com/air-verse/air                                 # live reload Go apps
  github.com/Gelio/go-global-update                        # global Go updater
  github.com/golangci/golangci-lint/cmd/golangci-lint      # lint tool
  github.com/itchyny/fillin                                # form filler
  github.com/itchyny/mmv/cmd/mmv                           # mass renamer
  github.com/jesseduffield/lazydocker                      # Docker UI
  github.com/jesseduffield/lazygit                         # Git UI
  github.com/jesseduffield/lazynpm                         # npm UI
  github.com/mikefarah/yq/v4                               # YAML processor
  github.com/spf13/cobra-cli                               # CLI generator
  github.com/zyedidia/eget                                 # binary installer
)

for binary in "${go_binaries[@]}"; do
  echo "Installing ${binary}..."
  go install "${binary}@latest"
done

####################################################################################################
