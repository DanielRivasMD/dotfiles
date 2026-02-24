#!/bin/bash
#
# Daniel Rivas <<danielrivasmd@gmail.com>>
#
# jlang: systemwide wrapper for Julia Language Server Protocol
#
# Usage:
#   jlang lsp
#   jlang formatter
#   jlang rebuild

####################################################################################################
# Fixed Julia version and sysimage path (systemwide)
####################################################################################################

JULIA_VERSION="1.8.5"
JULIA_BIN=(julia +$JULIA_VERSION)
SYSIMG="$HOME/.julia/sysimages/julia-$JULIA_VERSION-formatter.so"

####################################################################################################
# Build sysimage
####################################################################################################

build_sysimage() {
  log "Building global sysimage at $SYSIMG for Julia $JULIA_VERSION..."
  "${JULIA_BIN[@]}" --startup-file=no -e "
    using Pkg
    pkgs = [
      \"PackageCompiler\",
      \"JuliaFormatter\",
      \"LanguageServer\",
      \"SymbolServer\",
      \"StaticLint\",
    ]
    foreach(Pkg.add, pkgs)

    using PackageCompiler
    create_sysimage([:JuliaFormatter, :LanguageServer, :SymbolServer, :StaticLint];
      sysimage_path=\"$SYSIMG\")"
}

####################################################################################################
# Dispatch
####################################################################################################

case "$1" in
  rebuild)
    log "Rebuilding sysimage: $SYSIMG"
    rm -f "$SYSIMG"
    build_sysimage
    ;;
  lsp)
    [ -f "$SYSIMG" ] || build_sysimage
    log "Starting LSP with sysimage: $SYSIMG"
    exec "${JULIA_BIN[@]}" -J"$SYSIMG" \
      --project=@. \
      --startup-file=no --history-file=no --quiet -e "
        using LanguageServer, SymbolServer
        depot = get(ENV, \"JULIA_DEPOT_PATH\", \"\")
        project = dirname(something(Base.current_project(), pwd()))
        server = LanguageServer.LanguageServerInstance(stdin, stdout, project, depot)
        run(server)
      "
    ;;
  format)
    [ -f "$SYSIMG" ] || build_sysimage
    shift
    if [ $# -eq 0 ]; then
      exec "${JULIA_BIN[@]}" -J"$SYSIMG" \
        --startup-file=no --history-file=no --quiet --project -e \
        'using JuliaFormatter; print(format_text(read(stdin, String); indent=2))'
    else
      exec "${JULIA_BIN[@]}" -J"$SYSIMG" \
        --startup-file=no --history-file=no --quiet --project -e \
        'using JuliaFormatter; for f in ARGS; format_file(f; indent=2) end' \
        -- "$@"
    fi
    ;;
  *)
    echo "Daniel Rivas <<danielrivasmd@gmail.com>>"
    echo
    echo "jlang: systemwide wrapper for Julia Language Server Protocol"
    echo
    echo "Usage:"
    echo "  jlang lsp"
    echo "  jlang format"
    echo "  jlang rebuild"
    exit 0
    ;;
esac

####################################################################################################
