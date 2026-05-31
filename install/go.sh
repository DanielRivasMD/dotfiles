####################################################################################################
# Install Go Language Tools
####################################################################################################

TOOLS=(
  "golang.org/x/tools/gopls"                     # Go language server
  "github.com/go-delve/delve/cmd/dlv"            # Go debugger
  "github.com/nametake/golangci-lint-langserver" # Lint language server
)

for tool in "${TOOLS[@]}"; do
  pkg=$(echo "$tool" | awk '{print $1}')
  echo "Installing ${pkg}..."
  go install "${pkg}@latest"
done

####################################################################################################
# Install Go Binaries
####################################################################################################

BINARIES=(
  "github.com/air-verse/air"                            # live reload Go apps
  "github.com/spf13/cobra-cli"                          # CLI generator
  "github.com/zyedidia/eget"                            # binary installer
  "github.com/Gelio/go-global-update"                   # global Go updater
  "github.com/golangci/golangci-lint/cmd/golangci-lint" # lint tool
  "github.com/jesseduffield/lazydocker"                 # Docker UI
  "github.com/jesseduffield/lazygit"                    # Git UI
  "github.com/jesseduffield/lazynpm"                    # npm UI
  "github.com/itchyny/mmv/cmd/mmv"                      # mass renamer
  "github.com/sqls-server/sqls"                         # SQL language server
  "mvdan.cc/sh/v3/cmd/shfmt"                            # shell formatter
  "github.com/aarondl/sqlboiler/v4"                     # SQLBoiler ORM generator
  "github.com/aarondl/sqlboiler-sqlite3"                # SQLite3 driver for SQLBoiler
  "github.com/mikefarah/yq/v4"                          # YAML processor
)

for binary in "${BINARIES[@]}"; do
  pkg=$(echo "$binary" | awk '{print $1}')
  echo "Installing ${pkg}..."
  go install "${pkg}@latest"
done

####################################################################################################
