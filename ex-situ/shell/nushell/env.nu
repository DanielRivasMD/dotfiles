####################################################################################################
# Nushell Environment Config File
####################################################################################################

# def create_left_prompt [] {
#     let path_segment = if (is-admin) {
#         $"(ansi red_bold)($env.PWD)"
#     } else {
#         $"(ansi green_bold)($env.PWD)"
#     }

#     $path_segment
# }

####################################################################################################

# export def create_right_prompt [] {
#   let time_segment = date now | format date '%m/%d/%Y %r'
#   $time_segment
# }

####################################################################################################

# use nushell functions to define your right and left prompt
# let-env PROMPT_COMMAND = { create_left_prompt }
$env.STARSHIP_SHELL = ""
$env.PROMPT_COMMAND = { starship prompt --cmd-duration $env.CMD_DURATION_MS --status $env.LAST_EXIT_CODE }
$env.PROMPT_COMMAND_RIGHT = ""

####################################################################################################

# the prompt indicators are environmental variables that represent
# the state of the prompt
# let-env PROMPT_INDICATOR = "〉"
$env.PROMPT_INDICATOR = ""
$env.PROMPT_INDICATOR_VI_INSERT = ""
$env.PROMPT_INDICATOR_VI_NORMAL = "〉"
$env.PROMPT_MULTILINE_INDICATOR = "::: "

####################################################################################################

# directories to search for scripts when calling source or use
#
# by default, <nushell-config-dir>/scripts is added
$env.NU_LIB_DIRS = [
  ($nu.config-path | path dirname | path join 'scripts')
]

# directories to search for plugin binaries when calling register
#
# by default, <nushell-config-dir>/plugins is added
$env.NU_PLUGIN_DIRS = [
  ($nu.config-path | path dirname | path join 'plugins')
]

####################################################################################################
