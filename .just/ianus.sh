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

# declarations
source .just/.config.sh

####################################################################################################

# R
echo ''
echo 'Linking R config'
echo '===================================================================================================='
if [[ -d "${home}/.Renviron.d" ]]; then rm -rf "${home}/.Renviron.d"; fi      # purge before linking
ln -svf "${ianus}/R/Renviron.d" "${home}/.Renviron.d"                         # renviron directory
if [[ -d "${home}/.Rprofile.d" ]]; then rm -rf "${home}/.Rprofile.d"; fi      # purge before linking
ln -svf "${ianus}/R/Rprofile.d" "${home}/.Rprofile.d"                         # rprofile directory
ln -svf "${ianus}/R/vernacular_Rprofile.R" "${home}/.Rprofile"                # rprofile
echo '===================================================================================================='

# @HOME
echo ''
echo 'Linking config @HOME'
echo '===================================================================================================='
ln -svf "${pier}/pier.toml" "${home}/.pier.toml"                              # pier
ln -svf "${tmux}/3.2a.tmux.conf" "${home}/.tmux.conf"                         # tumx 3.2a
ln -svf "${screen}/4.08.00.screenrc" "${home}/.screenrc"                      # screen
echo '===================================================================================================='

# @config
echo ''
echo 'Linking config @config'
echo '===================================================================================================='
ln -svf "${micro}" "${config}"                                                # micro directory
ln -svf "${helix}" "${config}"                                                # helix config
ln -svf "${lsd}" "${config}"                                                  # lsd directory
ln -svf "${starship}" "${config}"                                             # starship directory
echo '===================================================================================================='

# shell
echo ''
echo 'Linking terminal profile'
echo '===================================================================================================='
ln -svf "${terminal}/vernacular_profile.sh" "${home}/.profile"                # terminal profile
echo '===================================================================================================='

# bash
echo ''
echo 'Linking bash profile'
echo '===================================================================================================='
if [[ ! -d "${home}/.bash" ]]; then mkdir "${home}/.bash"; fi                 # purge before linking
ln -svf "${bash}/vernacular_bashrc.sh" "${home}/.bashrc"                      # bashrc
ln -svf "${bash}/vernacular_bash_aliases.sh" "${home}/.bash/bash_aliases.sh"  # bash aliases
ln -svf "${bash}/fzf.bash" "${home}/.bash"                                    # fzf bash
ln -svf "${bash}/bash_navi_patch.sh" "${home}/.bash"                          # bash navi
echo '===================================================================================================='

# zsh
echo ''
echo 'Linking zsh profile'
echo '===================================================================================================='
if [[ ! -d "${home}/.zsh" ]]; then mkdir "${home}/.zsh"; fi                   # purge before linking
ln -svf "${zsh}/vernacular_zshrc.sh" "${home}/.zshrc"                         # zshrc
ln -svf "${zsh}/vernacular_zsh_aliases.sh" "${home}/.zsh/zsh_aliases.sh"      # zsh aliases
ln -svf "${zsh}/fzf.zsh" "${home}/.zsh"                                       # fzf zsh
ln -svf "${zsh}/zsh_just.sh" "${home}/.zsh"                                   # zsh just
ln -svf "${zsh}/zsh_navi.sh" "${home}/.zsh"                                   # zsh navi
ln -svf "${zsh}/zsh_zellij.sh" "${home}/.zsh"                                 # zsh zellij
ln -svf "${zsh}/zsh_zoxide.sh" "${home}/.zsh"                                 # zsh zoxide
echo '===================================================================================================='

# fish
echo ''
echo 'Linking fish profile'
echo '===================================================================================================='
if [[ ! -d "${config}/fish" ]]; then mkdir "${config}/fish"; fi               # create directory
ln -svf "${fish}/vernacular_config.fish" "${config}/fish/config.fish"         # fish config
echo '===================================================================================================='

# nushell
echo ''
echo 'Linking nushell profile'
echo '===================================================================================================='
ln -svf "${nushell}/env.nu" "${nushellConf}/"                                 # nushell env
ln -svf "${nushell}/config.nu" "${nushellConf}/"                              # nushell config
echo '===================================================================================================='

####################################################################################################
