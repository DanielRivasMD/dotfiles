####################################################################################################
# Install Julia Packages
####################################################################################################

# install latest version
juliaup add release

####################################################################################################

# install packages
julia --eval '
using Pkg
Pkg.add([
  # Core workflow
  "Chain",                   # Provides the @chain macro for clean, readable data pipelines
  "Debugger",                # Interactive debugging tools for stepping through Julia code
  "DelimitedFiles",          # Standard library for reading/writing CSV and other delimited text
  "UnicodePlots",            # Lightweight plotting in the terminal using Unicode characters

  # Editor / tooling integration
  "JuliaFormatter",          # Code formatter; integrates with Helix for on-save formatting
  "LanguageServer",          # Julia language server (LSP) for IDE/editor features
  "SymbolServer",            # Supports LanguageServer by caching and serving symbol info
  "StaticLint",              # Static analysis and linting, used by LanguageServer

  # Quality of life
  "OhMyREPL",                # Enhances the Julia REPL with syntax highlighting, prompts, etc.
  "PackageCompiler",         # Build custom sysimages to drastically speed up Julia startup
  "Pipe",                    # Provides the |> and @pipe macros for functional-style pipelines
  "Revise",                  # Automatically reloads changed code without restarting Julia
])'

####################################################################################################
