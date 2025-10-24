#!/bin/bash
#
# jlang: systemwide wrapper for Julia 1.8.5 with a precompiled sysimage
#
# Usage:
#   jlang [--verbose] lsp
#   jlang [--verbose] formatter
#   jlang [--verbose] rebuild

####################################################################################################
# Option parsing
####################################################################################################

VERBOSE=0
if [[ "$1" == "--verbose" || "$1" == "-v" ]]; then
  VERBOSE=1
  shift
fi

log() {
  if [ "$VERBOSE" -eq 1 ]; then
    echo "$@"
  fi
}

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
    echo "Usage:"
    echo "  jlang [--verbose] lsp"
    echo "  jlang [--verbose] format"
    echo "  jlang [--verbose] rebuild"
    exit 0
    ;;
esac

####################################################################################################
