#!/bin/bash
####################################################################################################

# config
. "${PWD}/.just/config.sh"

####################################################################################################

for entry in "$inSituDir"/*; do
  [[ -d "$entry" ]] || continue
  name=${entry##*/}
  eval "export $name=\"$entry\""
done

####################################################################################################
# in effigie
####################################################################################################

echo_header "@HOME"
link_config "${git}/gitconfig" "${homeDir}/.gitconfig" "gitconfig"
link_config "${git}/gitignore_global" "${homeDir}/.gitignore_global" "gitignore_global"
link_config "${mplayer}/mplayer" "${homeDir}/.mplayer" "mplayer"
link_config "${procs}/procs.toml" "${homeDir}/.procs.toml" "procs"
sep

####################################################################################################
# @config
####################################################################################################

echo_header "@config"
tools=(
  atuin
  alacritty
  bottom
  niri
  zellij
)

for tool in "${tools[@]}"; do
  if [[ -e "${configDir}/${tool}" ]]; then rm -rf "${configDir}/${tool}"; fi
  link_config "${!tool}" "${configDir}/" "${tool}"
done
sep

# Define all link tasks as “src|dest|label”
read -r -d '' LINKS <<EOF
${espanso}/config/default.yml|${espansoDir}/config/default.yml|espanso default
${espanso}/match/base.yml|${espansoDir}/match/base.yml|espanso match
${gh}/config.yml|${configDir}/gh/config.yml|gh config
${ghostty}/config|${ghosttyDir}/config|ghostty config
${julia}/startup.jl|${homeDir}/.julia/config/startup.jl|julia startup
${lazycli}/config.yml|${lazycliDir}/config.yml|lazycli config
${lazygit}/config.yml|${lazygitDir}/config.yml|lazygit config
${navi}/config.yml|${naviDir}/config.yml|navi config
${navi}/cheats|${naviDir}/cheats|navi cheats
${ssh}/config|${homeDir}/.ssh/config|ssh config
${yazi}/theme.toml|${configDir}/yazi/theme.toml|yazi theme
EOF

while IFS='|' read -r src dest label; do
  parent="$(dirname "$dest")"
  mkdir -p "$parent"
  rm -rf "$dest"
  link_config "$src" "$dest" "$label"
done <<<"$LINKS"
sep

####################################################################################################
# ergo
####################################################################################################

echo_header "completions"
mkdir -p "${zshCompDir}" && echo "Created ${zshCompDir}/"
link_config "${completionHomeDir}/bartib/misc/bartibCompletion.sh" "${zshCompDir}/_bartib" "bartib"
link_config "${completionHomeDir}/fd/contrib/completion/_fd" "${zshCompDir}/_fd" "fd"
link_config "${completionHomeDir}/eza/completions/zsh/_eza" "${zshCompDir}/_eza" "eza"
link_config "${completionHomeDir}/watchexec/completions/zsh" "${zshCompDir}/_watchexec" "watchexec"
link_config "${completionDotDir}/_jlang" "${zshCompDir}/_jlang" "jlang"
link_config "${completionDotDir}/_tldr" "${zshCompDir}/_tldr" "tldr"
link_config "${linkedDir}/todo_r/target/release/todor" "${homeDir}/.cargo/bin" "todor"

echo ''
generate_completion "atuin gen-completions --shell zsh" "_atuin"
generate_completion "cobra-cli completion zsh" "_cobra-cli"
generate_completion "diesel completions zsh" "_diesel"
generate_completion "deno completions zsh" "_deno"
generate_completion "flamegraph --completions zsh" "_flamegraph"
generate_completion "just --completions zsh" "_just"
generate_completion "mdcat --completions zsh" "_mdcat"
generate_completion "uv generate-shell-completion zsh" "_uv"
generate_completion "yq completion zsh" "_yq"
generate_completion "zellij setup --generate-completion zsh" "_zellij"

if command -v sd &>/dev/null; then
  cp "${zshCompDir}/_eza" "${zshCompDir}/_e" && sd eza e "${zshCompDir}/_e"
else
  printf "Warning: \033[1;31msd\033[0m not found, skipping creation of \033[1;36m_e\033[0m from eza completion\n"
fi
sep

####################################################################################################
echo $ghosttyDir
echo $nuDir
