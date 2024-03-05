#!/bin/bash
####################################################################################################
# Ianus
####################################################################################################
# In ancient Roman religion and myth, Janus (/ˈdʒeɪnəs/ JAY-nəs; Latin: Ianus [ˈi̯aːnʊs]) is the god of beginnings, gates, transitions, time, duality, doorways, passages, frames, and endings.
# He is usually depicted as having two faces.
# The month of January is named for Janus (Ianuarius).
# According to ancient Roman farmers' almanacs, Juno was mistaken as the tutelary deity of the month of January; but, Juno is the tutelary deity of the month of June.

# Janus presided over the beginning and ending of conflict, and hence war and peace.
# The gates of a building in Rome named after him (not a temple, as it is often called, but an open enclosure with gates at each end) were opened in time of war, and closed to mark the arrival of peace.
# As a god of transitions, he had functions pertaining to birth and to journeys and exchange, and in his association with Portunus, a similar harbor and gateway god, he was concerned with travelling, trading and shipping.

# Janus had no flamen or specialised priest (sacerdos) assigned to him, but the King of the Sacred Rites (rex sacrorum) himself carried out his ceremonies.
# Janus had a ubiquitous presence in religious ceremonies throughout the year.
# As such, Janus was ritually invoked at the beginning of each ceremony, regardless of the main deity honored on any particular occasion.

# The ancient Greeks had no equivalent to Janus, whom the Romans claimed as distinctively their own.
####################################################################################################

# config
source .just/.config.sh

####################################################################################################
# in effigie
####################################################################################################

# R
echo ''
echo "${YELLOW}Linking R config${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
if [[ -d "${home}/.Rprofile.d" ]]; then rm -rf "${home}/.Rprofile.d"; fi        && echo "Directory created ${BROWN}=>${NC} ${DARK_GREEN}Rprofile${NC}"
ln -sf "${ex_situ}/R/Rprofile.d" "${home}/.Rprofile.d"                          && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}Rprofile${NC} directory"
ln -sf "${ex_situ}/R/vernacular_Rprofile.R" "${home}/.Rprofile"                 && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}Rprofile${NC}"
echo "${DARK_RED}====================================================================================================${NC}"

# @HOME
echo ''
echo "${YELLOW}Linking config @HOME${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
ln -sf "${pier}/pier.toml" "${home}/.pier.toml"                                 && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}pier${NC}"
ln -sf "${screen}/4.08.00.screenrc" "${home}/.screenrc"                         && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}screen${NC}"
echo "${DARK_RED}====================================================================================================${NC}"

# @config
echo ''
echo "${YELLOW}Linking config @config${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
ln -sf "${micro}" "${config}"                                                   && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}micro${NC} directory"
ln -sf "${helix}" "${config}"                                                   && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}helix${NC} config"
ln -sf "${lsd}" "${config}"                                                     && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}lsd${NC} directory"
ln -sf "${sheldon}" "${config}"                                                 && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}sheldon${NC} directory"
ln -sf "${starship}" "${config}"                                                && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}starship${NC} directory"
echo "${DARK_RED}====================================================================================================${NC}"

# shell
echo ''
echo "${YELLOW}Linking terminal profile${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
ln -sf "${terminal}/vernacular_profile.sh" "${home}/.profile"                   && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}terminal${NC} profile"
echo "${DARK_RED}====================================================================================================${NC}"

# bash
echo ''
echo "${YELLOW}Linking bash profile${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
if [[ ! -d "${home}/.bash" ]]; then mkdir "${home}/.bash"; fi                   && echo "Directory created ${BROWN}=>${NC} ${DARK_GREEN}bash${NC}"
ln -sf "${bash}/vernacular_bashrc.sh" "${home}/.bashrc"                         && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}bashrc${NC}"
ln -sf "${bash}/vernacular_bash_aliases.sh" "${home}/.bash/bash_aliases.sh"     && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}bash aliases${NC}"
ln -sf "${bash}/fzf.bash" "${home}/.bash"                                       && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}fzf bash${NC}"
ln -sf "${bash}/bash_navi_patch.sh" "${home}/.bash"                             && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}bash navi${NC}"
echo "${DARK_RED}====================================================================================================${NC}"

# zsh
echo ''
echo "${YELLOW}Linking zsh profile${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
if [[ ! -d "${home}/.zsh" ]]; then mkdir "${home}/.zsh"; fi                     && echo "Directory created ${BROWN}=>${NC} ${DARK_GREEN}zsh${NC}"
ln -sf "${zsh}/vernacular_zshrc.sh" "${home}/.zshrc"                            && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}zshrc${NC}"
ln -sf "${zsh}/vernacular_zsh_aliases.sh" "${home}/.zsh/zsh_aliases.sh"         && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}zsh aliases${NC}"
ln -sf "${zsh}/fzf.zsh" "${home}/.zsh"                                          && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}fzf zsh${NC}"
ln -sf "${zsh}/zsh_just.sh" "${home}/.zsh"                                      && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}zsh just${NC}"
ln -sf "${zsh}/zsh_navi.sh" "${home}/.zsh"                                      && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}zsh navi${NC}"
ln -sf "${zsh}/zsh_zellij.sh" "${home}/.zsh"                                    && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}zsh zellij${NC}"
ln -sf "${zsh}/zsh_zoxide.sh" "${home}/.zsh"                                    && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}zsh zoxide${NC}"
echo "${DARK_RED}====================================================================================================${NC}"

# nushell
echo ''
echo "${YELLOW}Linking nushell profile${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
ln -sf "${nushell}/env.nu" "${nushellConf}/"                                    && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}nushell${NC} env"
ln -sf "${nushell}/config.nu" "${nushellConf}/"                                 && echo "Linked ${BROWN}=>${NC} ${DARK_BLUE}nushell${NC} config"
echo "${DARK_RED}====================================================================================================${NC}"

####################################################################################################
# ergo
####################################################################################################

echo ''
echo "${YELLOW}Creating completion directory${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
if [[ ! -d "${zshcomp}" ]]; then mkdir "${zshcomp}"; fi                         && echo "Directory created ${BROWN}=>${NC} ${DARK_GREEN}zsh_completion${NC}"
echo "${DARK_RED}====================================================================================================${NC}"

echo ''
echo "${YELLOW}Generate completions${NC}"
echo "${DARK_RED}====================================================================================================${NC}"
pueue completions zsh "${zshcomp}"                                              && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}pueue${NC}"
cp "${zshcomp}/_pueue" "${zshcomp}/_p" && sd pueue p "${zshcomp}/_p"            && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}p${NC}"
sheldon completions --shell zsh > "${zshcomp}/_sheldon"                         && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}sheldon${NC}"
echo "${DARK_RED}====================================================================================================${NC}"

echo ''
echo "${DARK_RED}====================================================================================================${NC}"
bender completion zsh > "${zshcomp}/_bender"                                    && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}bender${NC}"
cerberus completion zsh > "${zshcomp}/_cerberus"                                && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}cerberus${NC}"
gorgon completion zsh > "${zshcomp}/_gorgon"                                    && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}gorgon${NC}"
hercules completion zsh > "${zshcomp}/_hercules"                                && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}hercules${NC}"
lou completion zsh > "${zshcomp}/_lou"                                          && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}lou${NC}"
mbombo completion zsh > "${zshcomp}/_mbombo"                                    && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}mbombo${NC}"
minerva completion zsh > "${zshcomp}/_minerva"                                  && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}minerva${NC}"
tabularasa completion zsh > "${zshcomp}/_tabularasa"                            && echo "Installed completions ${BROWN}=>${NC} ${DARK_CYAN}tabularasa${NC}"
echo "${DARK_RED}====================================================================================================${NC}"

####################################################################################################
