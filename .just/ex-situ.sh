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
source "${HOME}/.archive/.just/config.sh"

####################################################################################################
# in effigie
####################################################################################################

# @HOME
echo ''
echo "${YELLOW}Linking config @HOME${NC}"
echo "${RED}====================================================================================================${NC}"
ln -sf "${mycli}/mycli.rc" "${home}/.myclirc"                                  && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}mycli${NC}"
ln -sf "${screen}/4.08.00.screenrc" "${home}/.screenrc"                        && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}screen${NC}"
echo "${RED}====================================================================================================${NC}"

# @config
echo ''
echo "${YELLOW}Linking config @config${NC}"
echo "${RED}====================================================================================================${NC}"
ln -sf "${bpython}" "${config}"                                                && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}bpython${NC} config"
ln -sf "${helix}" "${config}"                                                  && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}helix${NC} config"
ln -sf "${litecli}" "${config}"                                                && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}litecli${NC} directory"
ln -sf "${lsd}" "${config}"                                                    && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}lsd${NC} directory"
ln -sf "${micro}" "${config}"                                                  && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}micro${NC} directory"
ln -sf "${sheldon}" "${config}"                                                && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}sheldon${NC} directory"
ln -sf "${starship}" "${config}"                                               && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}starship${NC} directory"
echo "${RED}====================================================================================================${NC}"

# shell
echo ''
echo "${YELLOW}Linking term profile${NC}"
echo "${RED}====================================================================================================${NC}"
ln -sf "${term}/osx_profile.sh" "${home}/.profile"                             && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}term${NC} profile"
echo "${RED}====================================================================================================${NC}"

# bash
echo ''
echo "${YELLOW}Linking bash profile${NC}"
echo "${RED}====================================================================================================${NC}"
if [[ ! -d "${home}/.bash" ]]; then mkdir "${home}/.bash"; fi                  && echo "Directory created ${BIYELLOW}=>${NC} ${BGREEN}bash${NC}"
ln -sf "${bash}/osx_bashrc.sh" "${home}/.bashrc"                               && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}bashrc${NC}"
ln -sf "${bash}/bash_just.sh" "${home}/.bash"                                  && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}bash just${NC}"
ln -sf "${bash}/bash_navi.sh" "${home}/.bash"                                  && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}bash navi${NC}"
ln -sf "${bash}/fzf.bash" "${home}/.bash"                                      && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}fzf bash${NC}"
echo "${RED}====================================================================================================${NC}"

# zsh
echo ''
echo "${YELLOW}Linking zsh profile${NC}"
echo "${RED}====================================================================================================${NC}"
if [[ ! -d "${home}/.zsh" ]]; then mkdir "${home}/.zsh"; fi                    && echo "Directory created ${BIYELLOW}=>${NC} ${BGREEN}zsh${NC}"
ln -sf "${zsh}/osx_zshenv.sh" "${home}/.zshenv"                                && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}zshenv${NC}"
ln -sf "${zsh}/osx_zshrc.sh" "${home}/.zsh"                                    && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}zshrc${NC}"
ln -sf "${zsh}/zsh_just.sh" "${home}/.zsh"                                     && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}zsh just${NC}"
ln -sf "${zsh}/zsh_navi.sh" "${home}/.zsh"                                     && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}zsh navi${NC}"
ln -sf "${zsh}/zsh_zellij.sh" "${home}/.zsh"                                   && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}zsh zellij${NC}"
ln -sf "${zsh}/zsh_zoxide.sh" "${home}/.zsh"                                   && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}zsh zoxide${NC}"
ln -sf "${zsh}/fzf.zsh" "${home}/.zsh"                                         && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}fzf zsh${NC}"
echo "${RED}====================================================================================================${NC}"

# nushell
echo ''
echo "${YELLOW}Linking nushell profile${NC}"
echo "${RED}====================================================================================================${NC}"
ln -sf "${nushell}/env.nu" "${nushellConf}/"                                   && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}nushell${NC} env"
ln -sf "${nushell}/config.nu" "${nushellConf}/"                                && echo "Linked ${BIYELLOW}=>${NC} ${BBLUE}nushell${NC} config"
echo "${RED}====================================================================================================${NC}"

####################################################################################################
# ergo
####################################################################################################

echo ''
echo "${YELLOW}Creating completion directory${NC}"
echo "${RED}====================================================================================================${NC}"
if [[ ! -d "${zshcomp}" ]]; then mkdir "${zshcomp}"; fi                        && echo "Directory created ${BIYELLOW}=>${NC} ${BGREEN}zsh_completion${NC}"
echo "${RED}====================================================================================================${NC}"

echo ''
echo "${YELLOW}Generate completions${NC}"
echo "${RED}====================================================================================================${NC}"
juliaup completions zsh > "${zshcomp}/_juliaup"                                && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}juliaup${NC}"
pueue completions zsh "${zshcomp}"                                             && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}pueue${NC}"
sheldon completions --shell zsh > "${zshcomp}/_sheldon"                        && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}sheldon${NC}"
echo "${RED}====================================================================================================${NC}"

echo ''
echo "${RED}====================================================================================================${NC}"
babel completion zsh > "${zshcomp}/_babel"                                     && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}babel${NC}"
bender completion zsh > "${zshcomp}/_bender"                                   && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}bender${NC}"
chess completion zsh > "${zshcomp}/_chess"                                     && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}chess${NC}"
cerberus completion zsh > "${zshcomp}/_cerberus"                               && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}cerberus${NC}"
gorgon completion zsh > "${zshcomp}/_gorgon"                                   && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}gorgon${NC}"
lilith completion zsh > "${zshcomp}/_lilith"                                   && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}lilith${NC}"
lou completion zsh > "${zshcomp}/_lou"                                         && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}lou${NC}"
mbombo completion zsh > "${zshcomp}/_mbombo"                                   && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}mbombo${NC}"
minerva completion zsh > "${zshcomp}/_minerva"                                 && echo "Installed completions ${BIYELLOW}=>${NC} ${BCYAN}minerva${NC}"
echo "${RED}====================================================================================================${NC}"

####################################################################################################
