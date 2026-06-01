####################################################################################################
# Nushell Environment Config – ATUIN integration
####################################################################################################

# Session UUID
$env.ATUIN_SESSION = (atuin uuid)

# Token used to suppress keybinding-generated commands
let ATUIN_KEYBINDING_TOKEN = $"# (random uuid)"

# Hook that runs before execution
let _atuin_pre_execution = {||
  let cmd = (commandline)
  if ($cmd | is-empty) { return }
  if not ($cmd | str starts-with $ATUIN_KEYBINDING_TOKEN) {
    $env.ATUIN_HISTORY_ID = (atuin history start -- $cmd)
  }
}

# Hook that runs before prompt render
let _atuin_pre_prompt = {||
  let last_exit = $env.LAST_EXIT_CODE
  if 'ATUIN_HISTORY_ID' not-in $env { return }
  with-env { RUST_LOG: error } {
    atuin history end $'--exit=($last_exit)' -- $env.ATUIN_HISTORY_ID | null
  }
}

# Search command used in fuzzy mode
def _atuin_search_cmd [...flags: string] {
  [
    $ATUIN_KEYBINDING_TOKEN,
    (
      [
        "commandline (RUST_LOG=error run-external --redirect-stderr atuin search",
        ($flags | append [--interactive, --] | each {|e| $'"($e)"'}),
        "(commandline) | complete | $in.stderr | str substring ..-1)"
      ] | flatten | str join " "
    )
  ] | str join "\n"
}

# Configure Nushell hooks
$env.config = ($env | default {} config).config
$env.config = ($env.config | default {} hooks)
$env.config = (
  $env.config | upsert hooks (
    $env.config.hooks
    | upsert pre_execution (
        ($env.config.hooks | get --optional pre_execution | default []) | append $_atuin_pre_execution
      )
    | upsert pre_prompt (
        ($env.config.hooks | get --optional pre_prompt | default []) | append $_atuin_pre_prompt
      )
  )
)

####################################################################################################
