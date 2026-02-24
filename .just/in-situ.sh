####################################################################################################

# config
source "${PWD}/.just/config.sh"

####################################################################################################

for entry in "$in_situ"/*; do
  [[ -d "$entry" ]] || continue
  name=${entry##*/}
  eval "export $name=\"$entry\""
done

####################################################################################################
# in effigie
####################################################################################################

# @HOME
echo_header "@HOME"
link_config "${aliases}/aliases_cfg" "${home}/.aliases_cfg"
link_config "${git}/gitconfig" "${home}/.gitconfig" "gitconfig"
link_config "${git}/gitignore_global" "${home}/.gitignore_global" "gitignore_global"
link_config "${mplayer}/mplayer" "${home}/.mplayer" "mplayer"
link_config "${procs}/procs.toml" "${home}/.procs.toml" "procs"
sep

####################################################################################################

# @config
echo_header "@config"
tools=(
  atuin
  alacritty
  bottom
  zellij
)

for tool in "${tools[@]}"; do
  if [[ -e "${config}/${tool}" ]]; then rm -rf "${config}/${tool}"; fi
  link_config "${!tool}" "${config}/" "${tool}"
done
sep

####################################################################################################

# @config
echo_header "@config"
# Define all link tasks as “src|dest|label”
read -r -d '' LINKS <<EOF
${espanso}/config/default.yml|${espansoAppS}/config/default.yml|espanso default
${espanso}/match/base.yml|${espansoAppS}/match/base.yml|espanso match
${gh}/config.yml|${config}/gh/config.yml|gh config
${ghostty}/config|${appSupport}/com.mitchellh.ghostty/config|ghostty config
${julia}/startup.jl|${home}/.julia/config/startup.jl|julia startup
${lazycli}/config.yml|${lazycliAppS}/config.yml|lazycli config
${lazygit}/config.yml|${lazygitAppS}/config.yml|lazygit config
${navi}/config.yml|${naviAppS}/config.yml|navi config
${navi}/cheats|${naviAppS}/cheats|navi cheats
${ssh}/config|${home}/.ssh/config|ssh config
${yazi}/theme.toml|${config}/yazi/theme.toml|yazi theme
EOF

# Loop through each entry, ensure parent dir exists, clean old target, then symlink
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
mkdir -p "${zshcomp}" && echo "Created ~/.config/zsh_completion/"
link_config "${completionHome}/bartib/misc/bartibCompletion.sh" "${zshcomp}/_bartib" "bartib"
link_config "${completionHome}/fd/contrib/completion/_fd" "${zshcomp}/_fd" "fd"
link_config "${completionHome}/eza/completions/zsh/_eza" "${zshcomp}/_eza" "eza"
link_config "${completionHome}/watchexec/completions/zsh" "${zshcomp}/_watchexec" "watchexec"
link_config "${completionDot}/_tldr" "${zshcomp}/_tldr" "tldr"
link_config "${completionDot}/_tab" "${zshcomp}/_tab" "tabularasa"
link_config "${linkedHome}/todo_r/target/release/todor" "${home}/.cargo/bin" "todor"
link_config "${in_situ}/julia/jlang.sh" "${home}/bin/jlang" "jlang"

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

cp "${zshcomp}/_eza" "${zshcomp}/_e" && sd eza e "${zshcomp}/_e"
sep

####################################################################################################
