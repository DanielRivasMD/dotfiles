####################################################################################################

def create_right_prompt [] {
  let time_segment = ([
    (date now | date format '%m/%d/%Y %r')
  ] | str collect)

  $time_segment
}

####################################################################################################

# use nushell functions to define your right and left prompt
# let-env PROMPT_COMMAND = { create_left_prompt }
let-env STARSHIP_SHELL = ""
let-env PROMPT_COMMAND = { starship prompt --cmd-duration $env.CMD_DURATION_MS --status $env.LAST_EXIT_CODE }
let-env PROMPT_COMMAND_RIGHT = { create_right_prompt }

####################################################################################################

# the prompt indicators are environmental variables that represent
# the state of the prompt
# let-env PROMPT_INDICATOR = "〉"
let-env PROMPT_INDICATOR = ""
let-env PROMPT_INDICATOR_VI_INSERT = ""
let-env PROMPT_INDICATOR_VI_NORMAL = "〉"
let-env PROMPT_MULTILINE_INDICATOR = "::: "

####################################################################################################

# specifies how environment variables are:
# - converted from a string to a value on Nushell startup (from_string)
# - converted from a value back to a string when running extrnal commands (to_string)
let-env ENV_CONVERSIONS = {
  "PATH": {
    from_string: { |s| $s | split row (char esep) }
    to_string: { |v| $v | str collect (char esep) }
  }
  "Path": {
    from_string: { |s| $s | split row (char esep) }
    to_string: { |v| $v | str collect (char esep) }
  }
}

####################################################################################################

# directories to search for scripts when calling source or use
#
# by default, <nushell-config-dir>/scripts is added
let-env NU_LIB_DIRS = [
  ($nu.config-path | path dirname | path join 'scripts')
]

# directories to search for plugin binaries when calling register
#
# by default, <nushell-config-dir>/plugins is added
let-env NU_PLUGIN_DIRS = [
  ($nu.config-path | path dirname | path join 'plugins')
]

####################################################################################################
