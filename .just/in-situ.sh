#!/bin/bash
####################################################################################################
# Cerberus
####################################################################################################
# In Greek mythology, Cerberus (/ˈsɜːrbərəs/; Greek: Κέρβερος Kérberos [ˈkerberos]), often referred to as the hound of Hades, is a multi-headed dog that guards the gates of the Underworld to prevent the dead from leaving.
# He was the offspring of the monsters Echidna and Typhon, and was usually described as having three heads, a serpent for a tail, and snakes protruding from multiple parts of his body.
# Cerberus is primarily known for his capture by Heracles, the last of Heracles' twelve labours.
####################################################################################################

# config
source .just/.config.sh

####################################################################################################
# in effigie
####################################################################################################

# git files
echo ''
echo "${YELLOW}Linking git config files${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
ln -sf "${gitconfig}" "${home}/.gitconfig"                                   && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}gitconfig${NC}"
ln -sf "${gitignore}" "${home}/.gitignore_global"                            && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}gitignore_global${NC}"
echo "${DARK_RED}====================================================================================================${NC}"

# rc files
echo ''
echo "${YELLOW}Linking rc config${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
ln -sf "${mplayer}" "${home}/.mplayer"                                       && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}mplayer${NC}"
echo "${DARK_RED}====================================================================================================${NC}"

# toml files
echo ''
echo "${YELLOW}Linking toml config${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
ln -sf "${procs}" "${home}/.procs.toml"                                       && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}procs${NC}"
echo "${DARK_RED}====================================================================================================${NC}"

# config files
echo ''
echo "${YELLOW}Linking config @config${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
rm -rf "${config}/atuin" && ln -s "${atuin}" "${config}/"                     && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}atuin${NC}"
ln -sf "${alacritty}" "${config}/"                                            && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}alacritty${NC}"
ln -sf "${bottom}" "${config}/"                                               && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}bottom${NC}"
ln -sf "${cheat}" "${config}/"                                                && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}cheat${NC}"

echo ''
if [[ ! -d "${config}/gh" ]]; then mkdir "${config}/gh"; fi                   && echo "Directory created ${BROWN}=>${NC} ${DARK_GREEN}gh${NC}"
ln -sf "${gh}/config.yml" "${config}/gh/"                                     && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}gh${NC}"
ln -sf "${khal}" "${config}/"                                                 && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}khal${NC}"
ln -sf "${karabiner}" "${config}/"                                            && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}karabiner${NC}"
ln -sf "${karabiner}/karabiner.edn" "${config}/"                              && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}karabiner${NC}"
echo "${DARK_RED}====================================================================================================${NC}"

# config dirs
echo ''
echo "${YELLOW}Linking config dirs @config${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
ln -sf "${gitui}" "${config}"                                                 && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}gitui${NC} directory"
ln -sf "${zed}" "${config}"                                                   && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}zed${NC} directory"
ln -sf "${zellij}" "${config}"                                                && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}zellij${NC} directory"
echo "${DARK_RED}====================================================================================================${NC}"

# distant
echo ''
echo "${YELLOW}Linking config @distant locations${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
ln -sf "${julia}/startup.jl" "${home}/.julia/config/"                         && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}julia${NC} startup"
ln -sf "${sshConfig}" "${home}/.ssh/"                                         && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}ssh${NC} config"
ln -sf "${lazycli}/config.yml" "${lazycliConf}/"                              && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}lazycli${NC} config"
ln -sf "${lazygit}/config.yml" "${lazygitConf}/"                              && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}lazygit${NC} config"
ln -sf "${lapce}/keymaps.toml" "${lapceConf}/"                                && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}lapce${NC} keymaps"
ln -sf "${lapce}/settings.toml" "${lapceConf}/"                               && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}lapce${NC} settings"
echo "${DARK_RED}====================================================================================================${NC}"

# broot
echo ''
echo "${YELLOW}Linking broot config${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
if [[ -f "${brootConf}/conf.hjson" ]]; then rm -f "${brootConf}/conf.hjson"; fi
if [[ ! -d "${brootConf}" ]]; then mkdir "${brootConf}"; fi                   && echo "Directory created ${BROWN}=>${NC} ${DARK_GREEN}broot${NC}"
ln -sf "${broot}/conf.toml" "${brootConf}/"                                   && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}broot${NC} config"
echo "${DARK_RED}====================================================================================================${NC}"

# espanso
echo ''
echo "${YELLOW}Linking espanso config${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
if [[ -f "${espansoConf}" ]]; then rm -f "${espansoConf}"; fi
ln -sf "${espansoConfig}/default.yml" "${espansoConf}/config"                 && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}espanso${NC} config default"
ln -sf "${espansoMatch}/base.yml" "${espansoConf}/match"                      && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}espanso${NC} config base"
echo "${DARK_RED}====================================================================================================${NC}"

# navi
echo ''
echo "${YELLOW}Linking navi config${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
if [[ -d "${naviConf}" ]]; then rm -rf "${naviConf}"; fi
ln -sf "${navi}" "${naviConf}"                                                && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}navi${NC} directory"
echo "${DARK_RED}====================================================================================================${NC}"

# ln -sf "${forked}/pier/target/release/pier" "${home}/bin/forkedPatch/"

####################################################################################################
# Completions

echo ''
echo "${YELLOW}Creating completion directory${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
if [[ ! -d "${zshcomp}" ]]; then mkdir "${zshcomp}"; fi && echo "Directory created ${BROWN}=>${NC} ${DARK_GREEN}zshcomp${NC}"
echo "${DARK_RED}====================================================================================================${NC}"

echo ''
echo "${YELLOW}Linking completions${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
ln -sf "${observatory}/cheat/scripts/cheat.zsh" "${zshcomp}/_cheat"           && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}cheat${NC}"
ln -sf "${observatory}/chezmoi/completions/chezmoi.zsh" "${zshcomp}/_chezmoi" && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}chezmoi${NC}"
ln -sf "${observatory}/fd/contrib/completion/_fd" "${zshcomp}/_fd"            && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}fd${NC}"
ln -sf "${observatory}/eza/completions/zsh/_eza" "${zshcomp}/_eza"            && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}eza${NC}"
cp "${zshcomp}/_eza" "${zshcomp}/_e" && sd eza e "${zshcomp}/_e"              && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}e${NC}"
ln -sf "${observatory}/just/completions/just.zsh" "${zshcomp}/_just"          && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}just${NC}"
ln -sf "${observatory}/watchexec/completions/zsh" "${zshcomp}/_watchexec"     && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}watchexec${NC}"
echo "${DARK_RED}====================================================================================================${NC}"

echo ''
echo "${YELLOW}Generate completions${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
zellij setup --generate-completion zsh > "${zshcomp}/_zellij"                 && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}zellij${NC}"
cp "${zshcomp}/_zellij" "${zshcomp}/_zj" && sd zellij zj "${zshcomp}/_zj"     && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}zj${NC}"
cobra-cli completion zsh > "${zshcomp}/_cobra-cli"                            && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}cobra-cli${NC}"
echo "${DARK_RED}====================================================================================================${NC}"

echo ''
echo "${YELLOW}Linking completions${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
ln -sf "${completionsDir}/_lsd" "${zshcomp}/_lsd"                             && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}lsd${NC}"
cp "${zshcomp}/_lsd" "${zshcomp}/_l" && sd lsd l "${zshcomp}/_l"              && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}l${NC}"
echo "${DARK_RED}====================================================================================================${NC}"

echo ''
echo "${YELLOW}Linking executables${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
ln -sf "${observatory}/yq/yq" "${home}/.go/bin"                               && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}yq${NC}"
ln -sf "${observatory}/todo_r/target/release/todor" "${home}/.cargo/bin"      && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}todor${NC}"
echo "${DARK_RED}====================================================================================================${NC}"

####################################################################################################
