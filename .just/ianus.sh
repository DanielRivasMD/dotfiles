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
# link
####################################################################################################

# R
echo ''
echo "${YELLOW}Linking R config${NC}"
echo "${RED}====================================================================================================${NC}"
if [[ -d "${home}/.Rprofile.d" ]]; then rm -rf "${home}/.Rprofile.d"; fi        && echo "Directory created ${BROWN}=>${NC} ${GREEN}Rprofile${NC}"
ln -sf "${ianus}/R/Rprofile.d" "${home}/.Rprofile.d"                            && echo "Linked ${BROWN}=>${NC} ${BLUE}Rprofile${NC} directory"
ln -sf "${ianus}/R/vernacular_Rprofile.R" "${home}/.Rprofile"                   && echo "Linked ${BROWN}=>${NC} ${BLUE}Rprofile${NC}"
echo "${RED}====================================================================================================${NC}"

# @HOME
echo ''
echo "${YELLOW}Linking config @HOME${NC}"
echo "${RED}====================================================================================================${NC}"
ln -sf "${pier}/pier.toml" "${home}/.pier.toml"                                 && echo "Linked ${BROWN}=>${NC} ${BLUE}pier${NC}"
ln -sf "${screen}/4.08.00.screenrc" "${home}/.screenrc"                         && echo "Linked ${BROWN}=>${NC} ${BLUE}screen${NC}"
echo "${RED}====================================================================================================${NC}"

# @config
echo ''
echo "${YELLOW}Linking config @config${NC}"
echo "${RED}====================================================================================================${NC}"
ln -sf "${micro}" "${config}"                                                   && echo "Linked ${BROWN}=>${NC} ${BLUE}micro${NC} directory"
ln -sf "${helix}" "${config}"                                                   && echo "Linked ${BROWN}=>${NC} ${BLUE}helix${NC} config"
ln -sf "${lsd}" "${config}"                                                     && echo "Linked ${BROWN}=>${NC} ${BLUE}lsd${NC} directory"
ln -sf "${sheldon}" "${config}"                                                 && echo "Linked ${BROWN}=>${NC} ${BLUE}sheldon${NC} directory"
ln -sf "${starship}" "${config}"                                                && echo "Linked ${BROWN}=>${NC} ${BLUE}starship${NC} directory"
echo "${RED}====================================================================================================${NC}"

# shell
echo ''
echo "${YELLOW}Linking terminal profile${NC}"
echo "${RED}====================================================================================================${NC}"
ln -sf "${terminal}/vernacular_profile.sh" "${home}/.profile"                   && echo "Linked ${BROWN}=>${NC} ${BLUE}terminal${NC} profile"
echo "${RED}====================================================================================================${NC}"

# bash
echo ''
echo "${YELLOW}Linking bash profile${NC}"
echo "${RED}====================================================================================================${NC}"
if [[ ! -d "${home}/.bash" ]]; then mkdir "${home}/.bash"; fi                   && echo "Directory created ${BROWN}=>${NC} ${GREEN}bash${NC}"
ln -sf "${bash}/vernacular_bashrc.sh" "${home}/.bashrc"                         && echo "Linked ${BROWN}=>${NC} ${BLUE}bashrc${NC}"
ln -sf "${bash}/vernacular_bash_aliases.sh" "${home}/.bash/bash_aliases.sh"     && echo "Linked ${BROWN}=>${NC} ${BLUE}bash aliases${NC}"
ln -sf "${bash}/fzf.bash" "${home}/.bash"                                       && echo "Linked ${BROWN}=>${NC} ${BLUE}fzf bash${NC}"
ln -sf "${bash}/bash_navi_patch.sh" "${home}/.bash"                             && echo "Linked ${BROWN}=>${NC} ${BLUE}bash navi${NC}"
echo "${RED}====================================================================================================${NC}"

# zsh
echo ''
echo "${YELLOW}Linking zsh profile${NC}"
echo "${RED}====================================================================================================${NC}"
if [[ ! -d "${home}/.zsh" ]]; then mkdir "${home}/.zsh"; fi                     && echo "Directory created ${BROWN}=>${NC} ${GREEN}zsh${NC}"
ln -sf "${zsh}/vernacular_zshrc.sh" "${home}/.zshrc"                            && echo "Linked ${BROWN}=>${NC} ${BLUE}zshrc${NC}"
ln -sf "${zsh}/vernacular_zsh_aliases.sh" "${home}/.zsh/zsh_aliases.sh"         && echo "Linked ${BROWN}=>${NC} ${BLUE}zsh aliases${NC}"
ln -sf "${zsh}/fzf.zsh" "${home}/.zsh"                                          && echo "Linked ${BROWN}=>${NC} ${BLUE}fzf zsh${NC}"
ln -sf "${zsh}/zsh_just.sh" "${home}/.zsh"                                      && echo "Linked ${BROWN}=>${NC} ${BLUE}zsh just${NC}"
ln -sf "${zsh}/zsh_navi.sh" "${home}/.zsh"                                      && echo "Linked ${BROWN}=>${NC} ${BLUE}zsh navi${NC}"
ln -sf "${zsh}/zsh_zellij.sh" "${home}/.zsh"                                    && echo "Linked ${BROWN}=>${NC} ${BLUE}zsh zellij${NC}"
ln -sf "${zsh}/zsh_zoxide.sh" "${home}/.zsh"                                    && echo "Linked ${BROWN}=>${NC} ${BLUE}zsh zoxide${NC}"
echo "${RED}====================================================================================================${NC}"

# nushell
echo ''
echo "${YELLOW}Linking nushell profile${NC}"
echo "${RED}====================================================================================================${NC}"
ln -sf "${nushell}/env.nu" "${nushellConf}/"                                    && echo "Linked ${BROWN}=>${NC} ${BLUE}nushell env${NC}"
ln -sf "${nushell}/config.nu" "${nushellConf}/"                                 && echo "Linked ${BROWN}=>${NC} ${BLUE}nushell config${NC}"
echo "${RED}====================================================================================================${NC}"

####################################################################################################
# completions
####################################################################################################

echo ''
echo "${YELLOW}Creating completion directory${NC}"
echo "${RED}====================================================================================================${NC}"
if [[ ! -d "${zshcomp}" ]]; then mkdir "${zshcomp}"; fi                         && echo "Directory created ${BROWN}=>${NC} ${GREEN}zsh_completion${NC}"
echo "${RED}====================================================================================================${NC}"

echo ''
echo "${YELLOW}Generate completions${NC}"
echo "${RED}====================================================================================================${NC}"
pueue completions zsh "${zshcomp}"                                              && echo "Installed completions ${BROWN}=>${NC} ${CYAN}pueue${NC}"
cp "${zshcomp}/_pueue" "${zshcomp}/_p" && sd pueue p "${zshcomp}/_p"            && echo "Installed completions ${BROWN}=>${NC} ${CYAN}p${NC}"
sheldon completions --shell zsh > "${zshcomp}/_sheldon"                         && echo "Installed completions ${BROWN}=>${NC} ${CYAN}sheldon${NC}"
echo "${RED}====================================================================================================${NC}"

echo ''
echo "${RED}====================================================================================================${NC}"
bender completion zsh > "${zshcomp}/_bender"                                    && echo "Installed completions ${BROWN}=>${NC} ${CYAN}bender${NC}"
hercules completion zsh > "${zshcomp}/_hercules"                                && echo "Installed completions ${BROWN}=>${NC} ${CYAN}hercules${NC}"
janus completion zsh > "${zshcomp}/_janus"                                      && echo "Installed completions ${BROWN}=>${NC} ${CYAN}janus${NC}"
kali completion zsh > "${zshcomp}/_kali"                                        && echo "Installed completions ${BROWN}=>${NC} ${CYAN}kali${NC}"
lou completion zsh > "${zshcomp}/_lou"                                          && echo "Installed completions ${BROWN}=>${NC} ${CYAN}lou${NC}"
mbombo completion zsh > "${zshcomp}/_mbombo"                                    && echo "Installed completions ${BROWN}=>${NC} ${CYAN}mbombo${NC}"
minerva completion zsh > "${zshcomp}/_minerva"                                  && echo "Installed completions ${BROWN}=>${NC} ${CYAN}minerva${NC}"
tabularasa completion zsh > "${zshcomp}/_tabularasa"                            && echo "Installed completions ${BROWN}=>${NC} ${CYAN}tabularasa${NC}"
echo "${RED}====================================================================================================${NC}"

####################################################################################################
