#!/bin/bash
####################################################################################################

. "${PWD}/.just/config.sh"

####################################################################################################

for entry in "$exSituDir"/*; do
  [[ -d "$entry" ]] || continue
  name=${entry##*/}
  eval "export $name=\"$entry\""
done

for entry in "$shell"/*; do
  [[ -d "$entry" ]] || continue
  name=${entry##*/}
  eval "export $name=\"$entry\""
done

####################################################################################################
# in effigie
####################################################################################################

echo_header "@HOME"
link_config "${mycli}/mycli.rc" "${homeDir}/.myclirc" "mycli"
link_config "${screen}/4.08.00.screenrc" "${homeDir}/.screenrc" "screen"
sep

####################################################################################################
# config
####################################################################################################

echo_header "@config"
tools=(
  bpython
  helix
  litecli
  jnv
  micro
  serpl
  sheldon
  starship
)

for tool in "${tools[@]}"; do
  if [[ -e "${configDir}/${tool}" ]]; then rm -rf "${configDir}/${tool}"; fi
  link_config "${!tool}" "${configDir}/" "${tool}"
done
sep

####################################################################################################
# term / shell profiles
####################################################################################################

echo_header "term & shell"
link_config "${term}/osx_profile.sh" "${homeDir}/.profile" "term profile"
link_config "${term}/osx_aliases.sh" "${homeDir}/.aliases" "term aliases"

# Bash
echo '' && mkdir -p "${homeDir}/.bash" && echo "Created ~/.bash/"
link_config "${bash}/osx_bash_profile.sh" "${homeDir}/.bash_profile" "bash_profile"
link_config "${bash}/osx_bashrc.sh" "${homeDir}/.bashrc" "bashrc"

# Zsh
echo '' && mkdir -p "${homeDir}/.zsh" && echo "Created ~/.zsh/"
link_config "${zsh}/osx_zshenv.sh" "${homeDir}/.zshenv" "zshenv"
link_config "${zsh}/osx_zshrc.sh" "${homeDir}/.zsh/.zshrc" "zshrc"
link_config "${zsh}/zsh_helix.sh" "${homeDir}/.zsh" "zsh helix"
link_config "${zsh}/zsh_kage.sh" "${homeDir}/.zsh" "zsh kage"
link_config "${zsh}/zsh_navi.sh" "${homeDir}/.zsh" "zsh navi"
link_config "${zsh}/zsh_zoxide.sh" "${homeDir}/.zsh" "zsh zoxide"

# Nushell
echo '' && mkdir -p "${nuDir}" && echo "Created /.config/nushell/"
link_config "${nu}/env.nu" "${nuDir}/env.nu" "nushell env"
link_config "${nu}/config.nu" "${nuDir}/config.nu" "nushell config"
link_config "${nu}/alias.nu" "${nuDir}/alias.nu" "nushell alias"
link_config "${nu}/atuin.nu" "${nuDir}/atuin.nu" "nushell atuin"
link_config "${nu}/keymap.nu" "${nuDir}/keymap.nu" "nushell keymap"
link_config "${nu}/theme.nu" "${nuDir}/theme.nu" "nushell theme"
link_config "${nu}/zoxide.nu" "${nuDir}/zoxide.nu" "nushell zoxide"
sep

####################################################################################################
# ergo
####################################################################################################

echo_header "completions"
mkdir -p "${zshCompDir}" && echo "Created ${zshCompDir}/"
generate_completion "bat --completion zsh" "_bat"
generate_completion "delta --generate-completion zsh" "_delta"
generate_completion "kdlfmt completions zsh" "_kdlfmt"
generate_completion "juliaup completions zsh" "_juliaup"
generate_completion "rg --generate=complete-zsh" "_rg"
generate_completion "sheldon completions --shell zsh" "_sheldon"
generate_completion "uv generate-shell-completion zsh" "_uv"
generate_completion "xan completions zsh" "_xan"

echo ''
generate_completion "babel completion zsh" "_babel"
generate_completion "bender completion zsh" "_bender"
generate_completion "cerberus completion zsh" "_cerberus"
generate_completion "gorgon completion zsh" "_gorgon"
generate_completion "hypnos completion zsh" "_hypnos"
generate_completion "mimir completion zsh" "_mimir"
generate_completion "lilith completion zsh" "_lilith"
generate_completion "lou completion zsh" "_lou"
generate_completion "mbombo completion zsh" "_mbombo"
generate_completion "minerva completion zsh" "_minerva"
generate_completion "moneypenny completion zsh" "_moneypenny"
generate_completion "richelieu completion zsh" "_richelieu"
generate_completion "tab completion zsh" "_tab"
generate_completion "sisu completion zsh" "_sisu"
generate_completion "zenith completion zsh" "_zenith"
generate_completion "zero completion zsh" "_zero"
sep

####################################################################################################
