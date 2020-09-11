# Profiles
Default local shell is `zsh`. Therefore, configuration reads `zshrc` at startup (when `zprofile` an error occurs, probably sourced somewhere at system configuration) where `profile` config is read. `bash` shell is always run as a subprocess. Therefore, no `bash_profile` only `bashrc`.

Default remotes are `bash`. Therefore, configuration should read `bash_profile` and launch `zsh` as subprocess.
