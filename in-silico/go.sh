####################################################################################################
# Install Go Language Tools
####################################################################################################

TOOLS=(
  golang.org/x/tools/gopls                                 # Go language server
  github.com/go-delve/delve/cmd/dlv                        # Go debugger
  github.com/nametake/golangci-lint-langserver             # Lint language server
)

for tool in "${TOOLS[@]}"; do
  echo "Installing ${tool}..."
  go install "${tool}@latest"
done

####################################################################################################
# Install Go Binaries
####################################################################################################

BINARIES=(
  github.com/air-verse/air                                 # live reload Go apps
  github.com/Gelio/go-global-update                        # global Go updater
  github.com/golangci/golangci-lint/cmd/golangci-lint      # lint tool
  github.com/itchyny/mmv/cmd/mmv                           # mass renamer
  github.com/jesseduffield/lazydocker                      # Docker UI
  github.com/jesseduffield/lazygit                         # Git UI
  github.com/jesseduffield/lazynpm                         # npm UI
  github.com/mikefarah/yq/v4                               # YAML processor
  github.com/spf13/cobra-cli                               # CLI generator
  github.com/sqls-server/sqls                              # SQL language server
  github.com/zyedidia/eget                                 # binary installer
  github.com/aarondl/sqlboiler/v4
  github.com/aarondl/sqlboiler-sqlite3
)

for binary in "${BINARIES[@]}"; do
  echo "Installing ${binary}..."
  go install "${binary}@latest"
done

####################################################################################################
