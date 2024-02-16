####################################################################################################
# Cerberus
####################################################################################################
# In Greek mythology, Cerberus (/ˈsɜːrbərəs/; Greek: Κέρβερος Kérberos [ˈkerberos]), often referred to as the hound of Hades, is a multi-headed dog that guards the gates of the Underworld to prevent the dead from leaving.
# He was the offspring of the monsters Echidna and Typhon, and was usually described as having three heads, a serpent for a tail, and snakes protruding from multiple parts of his body.
# Cerberus is primarily known for his capture by Heracles, the last of Heracles' twelve labours.
####################################################################################################

#!/bin/bash

####################################################################################################

# declarations
source .just/.config.sh

####################################################################################################

# gitconfig
echo ''
echo 'Linking git config directory'
echo '===================================================================================================='
if [[ -d "${home}/.gitconfig.d" ]]; then rm "${home}/.gitconfig.d"; fi        # purge before linking
ln -svf "${gitconfigDir}" "${home}/.gitconfig.d"                              # gitconfig directory
echo '===================================================================================================='

# git files
echo ''
echo 'Linking git config files'
echo '===================================================================================================='
ln -svf "${gitconfig}" "${home}/.gitconfig"                                   # gitconfig
ln -svf "${gitignore}" "${home}/.gitignore_global"                            # gitignore_global
echo '===================================================================================================='

# rc files
echo ''
echo 'Linking rc config'
echo '===================================================================================================='
ln -svf "${gemrc}" "${home}/.gemrc"                                           # gemrc
ln -svf "${mplayer}" "${home}/.mplayer"                                       # mplayer
ln -svf "${nanorc}" "${home}/.nanorc"                                         # nanorc
echo '===================================================================================================='

# toml files
echo ''
echo 'Linking toml config'
echo '===================================================================================================='
ln -svf "${procs}" "${home}/.procs.toml"                                      # procs
echo '===================================================================================================='

# config files
echo ''
echo 'Linking config @config'
echo '===================================================================================================='
rm -rf "${config}/atuin" && ln -sv "${atuin}" "${config}/"                    # atuin
ln -svf "${alacritty}" "${config}/"                                           # alacritty
ln -svf "${bottom}" "${config}/"                                              # bottom
ln -svf "${cheat}" "${config}/"                                               # cheat

if [[ ! -d "${config}/gh" ]]; then mkdir "${config}/gh"; fi                   # create directory
ln -svf "${gh}/config.yml" "${config}/gh/"                                    # gh
ln -svf "${karabiner}" "${config}/"                                           # karabiner
ln -svf "${karabiner}/karabiner.edn" "${config}/"                             # karabiner
ln -svf "${khal}" "${config}/"                                                # khal
echo '===================================================================================================='

# config directories
echo ''
echo 'Linking config dirs @config'
echo '===================================================================================================='
ln -svf "${gitui}" "${config}"                                                # gitui directory
ln -svf "${zed}" "${config}"                                                  # zed directory
ln -svf "${zellij}" "${config}"                                               # zellij directory
echo '===================================================================================================='

# distant
echo ''
echo 'Linking config @distant locations'
echo '===================================================================================================='
ln -svf "${julia}/startup.jl" "${home}/.julia/config/"                        # julia startup
ln -svf "${sshConfig}" "${home}/.ssh/"                                        # ssh config
ln -svf "${lazycli}/config.yml" "${lazycliConf}/"                             # lazycli config
ln -svf "${lazygit}/config.yml" "${lazygitConf}/"                             # lazygit config
ln -svf "${lapce}/keymaps.toml" "${lapceConf}/"                               # lapce config
ln -svf "${lapce}/settings.toml" "${lapceConf}/"                              # lapce config
echo '===================================================================================================='

# purge before linking
echo ''
echo 'Linking broot config'
echo '===================================================================================================='
if [[ -f "${brootConf}/conf.hjson" ]]; then rm -f "${brootConf}/conf.hjson"; fi
if [[ ! -d "${brootConf}" ]]; then mkdir "${brootConf}"; fi                   # create directory
ln -svf "${broot}/conf.toml" "${brootConf}/"                                  # broot config
echo '===================================================================================================='

# purge before linking
echo ''
echo 'Linking espanso config'
echo '===================================================================================================='
if [[ -f "${espansoConf}" ]]; then rm -f "${espansoConf}"; fi                 # purge before linking
ln -svf "${espansoConfig}/default.yml" "${espansoConf}/config"                # espanso config default
ln -svf "${espansoMatch}/base.yml" "${espansoConf}/match"                     # espanso config base
echo '===================================================================================================='

# purge before linking
echo ''
echo 'Linking navi config'
echo '===================================================================================================='
if [[ -d "${naviConf}" ]]; then rm -rf "${naviConf}"; fi                      # purge before linking
ln -svf "${navi}" "${naviConf}"                                               # navi cheats directory
echo '===================================================================================================='

# ln -svf "${forked}/pier/target/release/pier" "${home}/bin/forkedPatch/"
# ln -svf "${forked}/rip/target/release/rip" "${home}/bin/forkedPatch/"

####################################################################################################
# Completions

echo ''
echo 'Creating completion directory'
echo '===================================================================================================='
if [[ ! -d "${zshcomp}" ]]; then mkdir "${zshcomp}"; fi && echo 'Directory ready'
echo '===================================================================================================='

echo ''
echo 'Linking completions'
echo '===================================================================================================='
ln -svf "${observatory}/cheat/scripts/cheat.zsh" "${zshcomp}/_cheat"
ln -svf "${observatory}/chezmoi/completions/chezmoi.zsh" "${zshcomp}/_chezmoi"
ln -svf "${observatory}/fd/contrib/completion/_fd" "${zshcomp}/_fd"
ln -svf "${observatory}/eza/completions/zsh/_eza" "${zshcomp}/_eza"
ln -svf "${observatory}/just/completions/just.zsh" "${zshcomp}/_just"
ln -svf "${observatory}/watchexec/completions/zsh" "${zshcomp}/_watchexec"
echo '===================================================================================================='

echo ''
echo 'Generate completions'
echo '===================================================================================================='
zellij setup --generate-completion zsh > "${zshcomp}/_zellij" && echo 'Setup zellij'
echo '===================================================================================================='

####################################################################################################
