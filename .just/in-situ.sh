####################################################################################################

# config
source "${HOME}/.archive/.just/config.sh"

####################################################################################################
# in effigie
####################################################################################################

# @HOME
echo_header "@HOME"
link_config   "${gitconfig}" "${home}/.gitconfig"          "gitconfig"
link_config   "${gitignore}" "${home}/.gitignore_global"   "gitignore_global"
link_config   "${procs}" "${home}/.procs.toml"             "procs"

sep


####################################################################################################

# @config
echo_header "@config"

tools=(
  atuin
  alacritty
  bottom
  spotify
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

# Define all your link tasks as “src|dest|label”
read -r -d '' LINKS <<EOF
${joplin}/joplin.json|${config}/joplin/settings.json|joplin settings
${gh}/config.yml|${config}/gh/config.yml|gh config
${julia}/startup.jl|${home}/.julia/config/startup.jl|julia startup
${sshConfig}|${home}/.ssh/config|ssh config
${halp}/halp.toml|${halpConf}/halp.toml|halp config
${lazycli}/config.yml|${lazycliConf}/config.yml|lazycli config
${lazygit}/config.yml|${lazygitConf}/config.yml|lazygit config
${broot}/conf.toml|${brootConf}/conf.toml|broot config
${espansoConfig}/default.yml|${espansoConf}/config|espanso default
${espansoMatch}/base.yml|${espansoConf}/match|espanso match
${navi}/config.yml|${naviConf}/config.yml|navi config
${navi}/cheats|${naviConf}/cheats|navi cheats
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
link_config   "${completion}/bartib/misc/bartibCompletion.sh"   "${zshcomp}/_bartib"     "bartib"
link_config   "${completion}/fd/contrib/completion/_fd"         "${zshcomp}/_fd"         "fd"
link_config   "${completion}/eza/completions/zsh/_eza"          "${zshcomp}/_eza"        "eza"
link_config   "${completion}/watchexec/completions/zsh"         "${zshcomp}/_watchexec"  "watchexec"
link_config   "${completionArch}/_tldr"                         "${zshcomp}/_tldr"       "tldr"
link_config   "${completionArch}/_tab"                          "${zshcomp}/_tab"        "tabularasa"
link_config   "${linked}/todo_r/target/release/todor"           "${home}/.cargo/bin"     "todor"

echo ''
generate_completion     "atuin gen-completions --shell zsh"          "_atuin"
generate_completion     "cobra-cli completion zsh"                   "_cobra-cli"
generate_completion     "diesel completions zsh"                     "_diesel"
generate_completion     "deno completions zsh"                       "_deno"
generate_completion     "flamegraph --completions zsh"               "_flamegraph"
generate_completion     "just --completions zsh"                     "_just"
generate_completion     "mdcat --completions zsh"                    "_mdcat"
generate_completion     "uv generate-shell-completion zsh"           "_uv"
generate_completion     "yq completion zsh"                          "_yq"
generate_completion     "zellij setup --generate-completion zsh"     "_zellij"

cp "${zshcomp}/_eza" "${zshcomp}/_e" && sd eza e "${zshcomp}/_e"

sep


####################################################################################################
