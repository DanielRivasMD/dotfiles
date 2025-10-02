####################################################################################################
# Install Julia Package Manager
####################################################################################################

os="$(uname -s)"
case "$os" in
  Darwin)
    echo "Detected macOS – installing Julia via Homebrew juliaup..."
    brew install juliaup
    ;;
  Linux)
    if grep -qi ubuntu /etc/os-release; then
      echo "Detected Ubuntu – installing Julia via apt..."
      # install juliaup (official installer)
      curl -fsSL https://install.julialang.org | sh
    else
      echo "Linux detected but not Ubuntu – please install Julia manually."
    fi
    ;;
  *)
    echo "Unsupported OS: $os" >&2
    ;;
esac

####################################################################################################
# Install Julia Packages
####################################################################################################

julia --eval '
using Pkg
Pkg.add([
  "OhMyREPL",
  "Chain",
  "Pipe",
  "Revise",
  "Debugger",
  "UnicodePlots",
  "DelimitedFiles"
])
'

####################################################################################################
