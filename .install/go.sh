####################################################################################################
# Install Go Version Manager
####################################################################################################

curl -sSL https://git.io/g-install | sh -s

####################################################################################################
# Install Latest Go Version and Global Updater
####################################################################################################

g install latest
go install github.com/Gelio/go-global-update@latest

####################################################################################################
# Install Go Language Tools
####################################################################################################

go_tools=(
  golang.org/x/tools/gopls
  github.com/go-delve/delve/cmd/dlv
  github.com/nametake/golangci-lint-langserver
)

for tool in "${go_tools[@]}"; do
  echo "Installing ${tool}..."
  go install "${tool}@latest"
done

####################################################################################################
# Install Go Binaries
####################################################################################################

go_binaries=(
  github.com/zyedidia/eget
  github.com/jesseduffield/lazygit
  github.com/jesseduffield/lazydocker
  github.com/jesseduffield/lazynpm
  github.com/itchyny/mmv/cmd/mmv
  github.com/itchyny/fillin
  github.com/spf13/cobra-cli
)

for binary in "${go_binaries[@]}"; do
  echo "Installing ${binary}..."
  go install "${binary}@latest"
done

####################################################################################################
