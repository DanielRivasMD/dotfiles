####################################################################################################
# nushell config file
####################################################################################################

# source

source ($nu.config-path | path dirname | path join 'alias.nu')
source ($nu.config-path | path dirname | path join 'atuin.nu')
source ($nu.config-path | path dirname | path join 'keymap.nu')
source ($nu.config-path | path dirname | path join 'theme.nu')
source ($nu.config-path | path dirname | path join 'zoxide.nu')

####################################################################################################
