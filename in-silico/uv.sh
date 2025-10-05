####################################################################################################
# Install Python Binaries
####################################################################################################

BINARIES=(
  gcalcli                                                  # Google Calendar CLI"
  bpython                                                  # Fancy Python REPL"
  litecli                                                  # SQLite client with UX improvements"
  mycli                                                    # MySQL CLI with autocompletion"
  pgcli                                                    # PostgreSQL CLI with features"
  ruff                                                     # Python linter & formatter"
)

for binary in "${BINARIES[@]}"; do
  echo "Installing ${binary}..."
  uv tool install "${binary}"
done

####################################################################################################
