#!/bin/bash
####################################################################################################
# Cerberus
####################################################################################################
# In Greek mythology, Cerberus (/ˈsɜːrbərəs/; Greek: Κέρβερος Kérberos [ˈkerberos]), often referred to as the hound of Hades, is a multi-headed dog that guards the gates of the Underworld to prevent the dead from leaving.
# He was the offspring of the monsters Echidna and Typhon, and was usually described as having three heads, a serpent for a tail, and snakes protruding from multiple parts of his body.
# Cerberus is primarily known for his capture by Heracles, the last of Heracles' twelve labours.
####################################################################################################

# config
source "${HOME}/.archive/in-silico/.config/config.sh"

####################################################################################################
# in effigie
####################################################################################################

# git files
echo ''
echo "${YELLOW}Linking git config files${NC}"
echo "${RED}====================================================================================================${NC}"
ln -sf "${gitconfig}" "${home}/.gitconfig"                                   && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}gitconfig${NC}"
ln -sf "${gitignore}" "${home}/.gitignore_global"                            && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}gitignore_global${NC}"
echo "${RED}====================================================================================================${NC}"

# rc files
echo ''
echo "${YELLOW}Linking rc config${NC}"
echo "${RED}====================================================================================================${NC}"
ln -sf "${mplayer}" "${home}/.mplayer"                                       && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}mplayer${NC}"
echo "${RED}====================================================================================================${NC}"

# toml files
echo ''
echo "${YELLOW}Linking toml config${NC}"
echo "${RED}====================================================================================================${NC}"
ln -sf "${procs}" "${home}/.procs.toml"                                       && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}procs${NC}"
echo "${RED}====================================================================================================${NC}"

# config files
echo ''
echo "${YELLOW}Linking config @config${NC}"
echo "${RED}====================================================================================================${NC}"
rm -rf "${config}/atuin" && ln -s "${atuin}" "${config}/"                     && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}atuin${NC}"
ln -sf "${alacritty}" "${config}/"                                            && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}alacritty${NC}"
ln -sf "${bottom}" "${config}/"                                               && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}bottom${NC}"
ln -sf "${cheat}" "${config}/"                                                && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}cheat${NC}"

echo ''
if [[ ! -d "${config}/gh" ]]; then mkdir "${config}/gh"; fi                   && echo "Directory created ${BIYELLOW}=>${NC} ${BGREEN}gh${NC}"
ln -sf "${gh}/config.yml" "${config}/gh/"                                     && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}gh${NC}"
ln -sf "${spotify}/client.yml" "${config}/spotify-tui/"                       && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}spotify${NC}"
ln -sf "${spotify}/config.yml" "${config}/spotify-tui/"                       && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}spotify${NC}"
ln -sf "${khal}" "${config}/"                                                 && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}khal${NC}"
ln -sf "${karabiner}" "${config}/"                                            && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}karabiner${NC}"
ln -sf "${karabiner}/karabiner.edn" "${config}/"                              && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}karabiner${NC}"
echo "${RED}====================================================================================================${NC}"

# config dirs
echo ''
echo "${YELLOW}Linking config dirs @config${NC}"
echo "${RED}====================================================================================================${NC}"
ln -sf "${gitui}" "${config}"                                                 && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}gitui${NC} directory"
ln -sf "${zed}" "${config}"                                                   && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}zed${NC} directory"
ln -sf "${zellij}" "${config}"                                                && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}zellij${NC} directory"
echo "${RED}====================================================================================================${NC}"

# distant
echo ''
echo "${YELLOW}Linking config @distant locations${NC}"
echo "${RED}====================================================================================================${NC}"
ln -sf "${julia}/startup.jl" "${home}/.julia/config/"                         && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}julia${NC} startup"
ln -sf "${sshConfig}" "${home}/.ssh/"                                         && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}ssh${NC} config"
ln -sf "${lazycli}/config.yml" "${lazycliConf}/"                              && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}lazycli${NC} config"
ln -sf "${lazygit}/config.yml" "${lazygitConf}/"                              && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}lazygit${NC} config"
ln -sf "${lapce}/keymaps.toml" "${lapceConf}/"                                && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}lapce${NC} keymaps"
ln -sf "${lapce}/settings.toml" "${lapceConf}/"                               && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}lapce${NC} settings"
echo "${RED}====================================================================================================${NC}"

# broot
echo ''
echo "${YELLOW}Linking broot config${NC}"
echo "${RED}====================================================================================================${NC}"
if [[ -f "${brootConf}/conf.hjson" ]]; then rm -f "${brootConf}/conf.hjson"; fi
if [[ ! -d "${brootConf}" ]]; then mkdir "${brootConf}"; fi                   && echo "Directory created ${BIYELLOW}=>${NC} ${BGREEN}broot${NC}"
ln -sf "${broot}/conf.toml" "${brootConf}/"                                   && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}broot${NC} config"
echo "${RED}====================================================================================================${NC}"

# espanso
echo ''
echo "${YELLOW}Linking espanso config${NC}"
echo "${RED}====================================================================================================${NC}"
if [[ -f "${espansoConf}" ]]; then rm -f "${espansoConf}"; fi
ln -sf "${espansoConfig}/default.yml" "${espansoConf}/config"                 && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}espanso${NC} config default"
ln -sf "${espansoMatch}/base.yml" "${espansoConf}/match"                      && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}espanso${NC} config base"
echo "${RED}====================================================================================================${NC}"

# navi
echo ''
echo "${YELLOW}Linking navi config${NC}"
echo "${RED}====================================================================================================${NC}"
if [[ -d "${naviConf}" ]]; then rm -rf "${naviConf}"; fi
mkdir "${naviConf}"
ln -sf "${navi}/config.yml" "${naviConf}"                                      && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}navi${NC} config"
ln -sf "${navi}/cheats" "${naviConf}/cheats"                                   && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}navi${NC} directory"
echo "${RED}====================================================================================================${NC}"

# ln -sf "${forked}/pier/target/release/pier" "${home}/bin/forkedPatch/"

####################################################################################################
# Completions
####################################################################################################

echo ''
echo "${YELLOW}Creating completion directory${NC}"
echo "${RED}====================================================================================================${NC}"
if [[ ! -d "${zshcomp}" ]]; then mkdir "${zshcomp}"; fi && echo "Directory created ${BIYELLOW}=>${NC} ${BGREEN}zshcomp${NC}"
echo "${RED}====================================================================================================${NC}"

echo ''
echo "${YELLOW}Linking completions${NC}"
echo "${RED}====================================================================================================${NC}"
ln -sf "${observatory}/cheat/scripts/cheat.zsh" "${zshcomp}/_cheat"           && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}cheat${NC}"
ln -sf "${observatory}/chezmoi/completions/chezmoi.zsh" "${zshcomp}/_chezmoi" && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}chezmoi${NC}"
ln -sf "${observatory}/fd/contrib/completion/_fd" "${zshcomp}/_fd"            && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}fd${NC}"
ln -sf "${observatory}/eza/completions/zsh/_eza" "${zshcomp}/_eza"            && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}eza${NC}"
ln -sf "${observatory}/just/completions/just.zsh" "${zshcomp}/_just"          && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}just${NC}"
ln -sf "${observatory}/watchexec/completions/zsh" "${zshcomp}/_watchexec"     && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}watchexec${NC}"
cp "${zshcomp}/_eza" "${zshcomp}/_e" && sd eza e "${zshcomp}/_e"              && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}e${NC}"
echo "${RED}====================================================================================================${NC}"

echo ''
echo "${YELLOW}Generate completions${NC}"
echo "${RED}====================================================================================================${NC}"
atuin gen-completions --shell zsh > "${zshcomp}/_atuin"                       && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}atuin${NC}"
cobra-cli completion zsh > "${zshcomp}/_cobra-cli"                            && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}cobra-cli${NC}"
zellij setup --generate-completion zsh > "${zshcomp}/_zellij"                 && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}zellij${NC}"
cp "${zshcomp}/_zellij" "${zshcomp}/_zj" && sd zellij zj "${zshcomp}/_zj"     && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}zj${NC}"
echo "${RED}====================================================================================================${NC}"

echo ''
echo "${YELLOW}Linking completions${NC}"
echo "${RED}====================================================================================================${NC}"
ln -sf "${completionsDir}/_khal" "${zshcomp}/_khal"                           && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}khal${NC}"
ln -sf "${completionsDir}/_lsd" "${zshcomp}/_lsd"                             && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}lsd${NC}"
ln -sf "${completionsDir}/_tldr" "${zshcomp}/_tldr"                           && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}tldr${NC}"
cp "${zshcomp}/_lsd" "${zshcomp}/_l" && sd lsd l "${zshcomp}/_l"              && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}l${NC}"
echo "${RED}====================================================================================================${NC}"

echo ''
echo "${YELLOW}Linking executables${NC}"
echo "${RED}====================================================================================================${NC}"
ln -sf "${observatory}/yq/yq" "${home}/.go/bin"                               && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}yq${NC}"
ln -sf "${observatory}/todo_r/target/release/todor" "${home}/.cargo/bin"      && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}todor${NC}"
echo "${RED}====================================================================================================${NC}"

####################################################################################################
