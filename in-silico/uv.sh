####################################################################################################
# Install uv Package Manager
####################################################################################################

os="$(uname -s)"
case "$os" in
  Darwin)
    echo "Detected macOS – installing uv via Homebrew..."
    brew install uv
    ;;
  Linux)
    if grep -qi ubuntu /etc/os-release; then
      echo "Detected Ubuntu – installing uv..."
      sudo apt update
      # uv is available as a standalone binary installer from Astral
      # Option 1: install via apt if packaged
      # sudo apt install -y uv
      # Option 2 (preferred): official installer script
      curl -LsSf https://astral.sh/uv/install.sh | sh
      # ensure ~/.cargo/bin or ~/.local/bin is in PATH depending on installer
      export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
    else
      echo "Linux detected but not Ubuntu – please install uv manually."
    fi
    ;;
  *)
    echo "Unsupported OS: $os" >&2
    ;;
esac

####################################################################################################
# Install Binaries
####################################################################################################

uv tool install gcalcli      # Google Calendar CLI
uv tool install bpython      # Fancy Python REPL
uv tool install litecli      # SQLite client with UX improvements
uv tool install mycli        # MySQL CLI with autocompletion
uv tool install pgcli        # PostgreSQL CLI with features
uv tool install ruff         # Python linter & formatter

####################################################################################################
