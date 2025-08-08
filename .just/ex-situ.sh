####################################################################################################

# config
source "${PWD}/.just/config.sh"

####################################################################################################

for entry in "$ex_situ"/*; do
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

# @HOME
echo_header "@HOME"
link_config "${mycli}/mycli.rc" "${home}/.myclirc" "mycli"
link_config "${screen}/4.08.00.screenrc" "${home}/.screenrc" "screen"
sep


####################################################################################################
# config
####################################################################################################

# @config
echo_header "@config"
tools=( 
  bpython
  helix
  litecli
  micro
  sheldon
  starship
)

for tool in "${tools[@]}"; do
  if [[ -e "${config}/${tool}" ]]; then rm -rf "${config}/${tool}"; fi
  link_config "${!tool}" "${config}/" "${tool}"
done
sep


####################################################################################################
# term / shell profiles
####################################################################################################

echo_header "term & shell"
link_config "${term}/osx_profile.sh" "${home}/.profile" "term profile"

# Bash
echo '' && mkdir -p "${home}/.bash" && echo "Created ~/.bash/"
link_config "${bash}/osx_bashrc.sh" "${home}/.bashrc" "bashrc"
link_config "${bash}/bash_just.sh" "${home}/.bash" "bash just"
link_config "${bash}/bash_navi.sh" "${home}/.bash" "bash navi"

# Zsh
echo '' && mkdir -p "${home}/.zsh" && echo "Created ~/.zsh/"
link_config "${zsh}/osx_zshenv.sh" "${home}/.zshenv" "zshenv"
link_config "${zsh}/osx_zshrc.sh" "${home}/.zsh/.zshrc" "zshrc"
link_config "${zsh}/zsh_navi.sh" "${home}/.zsh" "zsh navi"
link_config "${zsh}/zsh_zellij.sh" "${home}/.zsh" "zsh zellij"
link_config "${zsh}/zsh_zoxide.sh" "${home}/.zsh" "zsh zoxide"

# Nushell
echo ''
link_config "${nu}/env.nu" "${nuAppS}/env.nu" "nushell env"
link_config "${nu}/config.nu" "${nuAppS}/config.nu" "nushell config"
sep


####################################################################################################
# ergo
####################################################################################################

echo_header "completions"
mkdir -p "${zshcomp}" && echo "Created ~/.config/zsh_completion/"
generate_completion "bat --completion zsh" "_bat"
generate_completion "delta --generate-completion zsh" "_delta"
generate_completion "juliaup completions zsh" "_juliaup"
generate_completion "rg --generate=complete-zsh" "_rg"
generate_completion "sheldon completions --shell zsh" "_sheldon"
generate_completion "xan completions zsh" "_xan"

echo ''
generate_completion "babel completion zsh" "_babel"
generate_completion "bender completion zsh" "_bender"
generate_completion "cerberus completion zsh" "_cerberus"
generate_completion "gorgon completion zsh" "_gorgon"
generate_completion "hypnos completion zsh" "_hypnos"
generate_completion "joeblack completion zsh" "_joeblack"
generate_completion "mimir completion zsh" "_mimir"
generate_completion "lilith completion zsh" "_lilith"
generate_completion "lou completion zsh" "_lou"
generate_completion "mbombo completion zsh" "_mbombo"
generate_completion "minerva completion zsh" "_minerva"
generate_completion "richelieu completion zsh" "_richelieu"
generate_completion "sisu completion zsh" "_sisu"
generate_completion "zenith completion zsh" "_zenith"
sep


####################################################################################################
