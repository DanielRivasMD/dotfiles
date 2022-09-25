####################################################################################################

_default:
  @just --list

####################################################################################################

# print justfile
@show:
  bat .justfile --language make

####################################################################################################

# edit justfile
@edit:
  micro .justfile

####################################################################################################
# Cerberus
####################################################################################################

# In Greek mythology, Cerberus (/ˈsɜːrbərəs/; Greek: Κέρβερος Kérberos [ˈkerberos]), often referred to as the hound of Hades, is a multi-headed dog that guards the gates of the Underworld to prevent the dead from leaving.
# He was the offspring of the monsters Echidna and Typhon, and was usually described as having three heads, a serpent for a tail, and snakes protruding from multiple parts of his body.
# Cerberus is primarily known for his capture by Heracles, the last of Heracles' twelve labours.

####################################################################################################

# link Cerberus archive
Kerberus:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

  if [[ -d "${home}/.atom" ]]; then rm -rf "${home}/.atom"; fi                        # purge before linking
  ln -svf "${cerberus}/atom" "${home}/.atom"                                          # atom

  if [[ -d "${home}/.gitconfig.d" ]]; then rm "${home}/.gitconfig.d"; fi              # purge before linking
  ln -svf "${cerberus}/gitconfig.d" "${home}/.gitconfig.d"                            # gitconfig directory

  # rc files
  ln -svf "${cerberus}/gem/gemrc" "${home}/.gemrc"                                    # gemrc
  ln -svf "${cerberus}/mplayer/mplayer" "${home}/.mplayer"                            # mplayer
  ln -svf "${cerberus}/nano/nanorc" "${home}/.nanorc"                                 # nanorc

  # git files
  ln -svf "${cerberus}/git/gitconfig" "${home}/.gitconfig"                            # gitconfig
  ln -svf "${cerberus}/git/gitignore_global" "${home}/.gitignore_global"              # gitignore_global

  # toml files
  ln -svf "${cerberus}/procs/procs.toml" "${home}/.procs.toml"                        # procs

  # config files
  ln -svf "${cerberus}/alacritty" "${home}/.config/"                                  # alacritty
  ln -svf "${cerberus}/bottom" "${home}/.config/"                                     # bottom
  ln -svf "${cerberus}/cheat" "${home}/.config/"                                      # cheat
  ln -svf "${cerberus}/karabiner" "${home}/.config/"                                  # karabiner
  ln -svf "${cerberus}/khal" "${home}/.config/"                                       # khal
  ln -svf "${cerberus}/gh/config.yml" "${home}/.config/gh/"                           # gh
  ln -svf "${cerberus}/rstudio" "${home}/.config/"                                    # rstudio
  ln -svf "${cerberus}/rstudio/keybindings" "${home}/.R/rstudio/"                     # rstudio keybindings
  ln -svf "${cerberus}/rustfmt" "${home}/.config/"                                    # rustfmt

  # config directories
  ln -svf "${cerberus}/nvim" "${home}/.config"                                        # nvim directory
  ln -svf "${cerberus}/ranger" "${home}/.config"                                      # ranger directory
  ln -svf "${cerberus}/gitui" "${home}/.config"                                       # gitui directory
  ln -svf "${cerberus}/zellij" "${home}/.config"                                      # zellij directory

  # local
  ln -svf "${cerberus}/rstudio/rstudio-desktop.json" "${home}/.local/share/rstudio/"  # rstudio

  # code
  ln -svf "${cerberus}/code/keybindings.json" "${codeConf}/"                          # code keybindings
  ln -svf "${cerberus}/code/settings.json" "${codeConf}/"                             # code settings

  # distant
  ln -svf "${cerberus}/julia/startup.jl" "${home}/.julia/config/"                     # julia startup
  ln -svf "${cerberus}/ssh/config" "${home}/.ssh/"                                    # ssh config
  ln -svf "${cerberus}/lazycli/config.yml" "${lazycliConf}/"                          # lazycli config
  ln -svf "${cerberus}/lazygit/config.yml" "${lazygitConf}/"                          # lazygit config

  # force use toml config
  if [[ -f "${brootConf}/conf.hjson" ]]; then rm -f "${brootConf}/conf.hjson"; fi
  ln -svf "${cerberus}/broot/conf.toml" "${brootConf}/"                               # broot config

  # purge before linking
  if [[ -d "${naviConf}" ]]; then rm -rf "${naviConf}"; fi
  ln -svf "${cerberus}/navi" "${naviConf}"                                            # navi cheats directory

  # sublime
  ln -svf "${sublKeymapTarget}" "${sublKeymapOrigin}"
  ln -svf "${sublPackageTarget}" "${sublPackageOrigin}"
  ln -svf "${sublSettingTarget}" "${sublSettingOrigin}"
  ln -svf "${sublTrailTarget}" "${sublTrailOrigin}"
  ln -svf "${sublRustTarget}" "${sublRustOrigin}"
  ln -svf "${sublRfmtTarget}" "${sublRfmtOrigin}"
  ln -svf "${sublGitTarget}" "${sublGitOrigin}"

  # # @forked
  # ln -svf "${forked}/preview-vim/preview-vim.json" "${cerberus}/karabiner/assets/complex_modifications"

  # # @forked
  # ln -svf "${forked}/amber/target/release/ambr" "${home}/bin/cargoTools/"
  # ln -svf "${forked}/amber/target/release/ambs" "${home}/bin/cargoTools/"
  # ln -svf "${forked}/cb/target/release/cli" "${home}/bin/cargoTools/cb"

  # ln -svf "${forked}/pier/target/release/pier" "${home}/bin/forkedPatch/"
  # ln -svf "${forked}/rip/target/release/rip" "${home}/bin/forkedPatch/"

  # # @observatory
  # ln -svf "${observatory}/toggit/target/release/toggit" "${home}/bin/cargoTools/"
  # ln -svf "${observatory}/nushell/target/release/nu" "${home}/bin/cargoTools/"

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

# link Ianus archive
Ianus:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

  # R
  if [[ -d "${home}/.Renviron.d" ]]; then rm -rf "${home}/.Renviron.d"; fi      # purge before linking
  ln -svf "${ianus}/R/Renviron.d" "${home}/.Renviron.d"                         # renviron directory
  if [[ -d "${home}/.Rprofile.d" ]]; then rm -rf "${home}/.Rprofile.d"; fi      # purge before linking
  ln -svf "${ianus}/R/Rprofile.d" "${home}/.Rprofile.d"                         # rprofile directory
  ln -svf "${ianus}/R/vernacular_Rprofile.R" "${home}/.Rprofile"                # rprofile

  # @HOME
  ln -svf "${ianus}/pier/pier.toml" "${home}/.pier.toml"                        # pier
  ln -svf "${ianus}/tmux/3.2a.tmux.conf" "${home}/.tmux.conf"                   # tumx 3.2a
  ln -svf "${ianus}/screen/4.08.00.screenrc" "${home}/.screenrc"                # screen

  # @config
  ln -svf "${ianus}/micro" "${home}/.config"                                    # micro directory
  ln -svf "${ianus}/starship" "${home}/.config"                                 # starship directory
  ln -svf "${ianus}/lsd" "${home}/.config"                                      # lsd directory

  # shell
  ln -svf "${terminal}/vernacular_profile.sh" "${home}/.profile"                # terminal profile

  # bash
  if [[ ! -d "${home}/.bash" ]]; then mkdir "${home}/.bash"; fi                 # purge before linking
  ln -svf "${bash}/vernacular_bashrc.sh" "${home}/.bashrc"                      # bashrc
  ln -svf "${bash}/vernacular_bash_aliases.sh" "${home}/.bash/bash_aliases.sh"  # bash aliases
  ln -svf "${bash}/fzf.bash" "${home}/.bash"                                    # fzf bash
  ln -svf "${bash}/bash_navi_patch.sh" "${home}/.bash"                          # bash navi patch

  # zsh
  if [[ ! -d "${home}/.zsh" ]]; then mkdir "${home}/.zsh"; fi                   # purge before linking
  ln -svf "${zsh}/vernacular_zshrc.sh" "${home}/.zshrc"                         # zshrc
  ln -svf "${zsh}/vernacular_zsh_aliases.sh" "${home}/.zsh/zsh_aliases.sh"      # zsh aliases
  ln -svf "${zsh}/fzf.zsh" "${home}/.zsh"                                       # fzf zsh
  ln -svf "${zsh}/vernacular_zsh_plugins.sh" "${home}/.zsh/zsh_plugins.sh"      # zsh plugins
  ln -svf "${zsh}/vernacular_zsh_plugins.txt" "${home}/.zsh/zsh_plugins.txt"    # zsh plugins
  ln -svf "${zsh}/zsh_pandoc_autocompletion.sh" "${home}/.zsh"                  # zsh completion
  ln -svf "${zsh}/zsh_broot_patch.sh" "${home}/.zsh"                            # zsh broot patch
  ln -svf "${zsh}/zsh_just_patch.sh" "${home}/.zsh"                             # zsh just patch
  ln -svf "${zsh}/zsh_navi_patch.sh" "${home}/.zsh"                             # zsh navi patch

  # fish
  ln -svf "${fish}/vernacular_config.fish" "${home}/.config/fish/config.fish"   # fish config

  # nushell
  ln -svf "${nushell}/env.nu" "${nushellConf}/"                                 # nushell env
  ln -svf "${nushell}/config.nu" "${nushellConf}/"                              # nushell config

  # amp
  ln -svf "${ianus}/amp" "${appSuport}"                                         # amp config

####################################################################################################
# Mercury
####################################################################################################

# Mercury (/ˈmɜːrkjʊri/; Latin: Mercurius [mɛrˈkʊrijʊs]) is a major god in Roman religion and mythology, being one of the 12 Dii Consentes within the ancient Roman pantheon.
# He is the god of financial gain, commerce, eloquence, messages, communication (including divination), travelers, boundaries, luck, trickery, and thieves; he also serves as the guide of souls to the underworld.

# In Roman mythology, he was considered to be either the son of Maia, one of the seven daughters of the Titan Atlas, and Jupiter, or of Caelus and Dies.
# In his earliest forms, he appears to have been related to the Etruscan deity Turms; both gods share characteristics with the Greek god Hermes.
# He is often depicted holding the caduceus in his left hand.
# Similar to his Greek equivalent Hermes, he was awarded a magic wand by Apollo, which later turned into the caduceus, the staff with intertwined snakes.

####################################################################################################

# deliver archives to Uppmax
Mercury-uppmax:
  #!/bin/bash
  set -euo pipefail

  #declarations
  source .just.sh

  # create directories
  ssh ${uppmaxID} "if [[ ! -d ${ianusRemote} ]]; then mkdir -p ${ianusRemote}; fi"
  ssh ${uppmaxID} "if [[ ! -d ${homeRemote}/bin ]]; then mkdir -p ${homeRemote}/bin; fi"

  # directory
  rsync -azvhP "${ianus}/pier" "${uppmaxID}:${ianusRemote}/"                      # pier
  rsync -azvhP "${ianus}/R" "${uppmaxID}:${ianusRemote}/"                         # r
  rsync -azvhP "${ianus}/screen" "${uppmaxID}:${ianusRemote}/"                    # screen
  rsync -azvhP "${ianus}/shell" "${uppmaxID}:${ianusRemote}/"                     # shell
  rsync -azvhP "${ianus}/starship" "${uppmaxID}:${ianusRemote}/"                  # starship
  rsync -azvhP "${ianus}/tmux" "${uppmaxID}:${ianusRemote}/"                      # tmux
  rsync -azvhP "${ianus}/micro/plug" "${uppmaxID}:${ianusRemote}/micro/"          # micro plugins
  rsync -azvhP "${ianus}/micro/bindings.json" "${uppmaxID}:${ianusRemote}/micro/" # micro bindings
  rsync -azvhP "${ianus}/micro/settings.json" "${uppmaxID}:${ianusRemote}/micro/" # micro settings

  # remote bin
  rsync -azvhPX "${remoteBin}/bin/"* "${uppmaxID}:${homeRemote}/bin/"

####################################################################################################

# deliver archives to Pawsey
Mercury-pawsey:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

  # create directories
  ssh ${pawseyID} "if [[ ! -d ${ianusRemote} ]]; then mkdir -p ${ianusRemote}; fi"

  # directory
  rsync -azvhP "${ianus}/pier" "${pawseyID}:${ianusRemote}/"                      # pier
  rsync -azvhP "${ianus}/R" "${pawseyID}:${ianusRemote}/"                         # r
  rsync -azvhP "${ianus}/screen" "${pawseyID}:${ianusRemote}/"                    # screen
  rsync -azvhP "${ianus}/shell" "${pawseyID}:${ianusRemote}/"                     # shell
  rsync -azvhP "${ianus}/starship" "${pawseyID}:${ianusRemote}/"                  # starship
  rsync -azvhP "${ianus}/micro/plug" "${pawseyID}:${ianusRemote}/micro/"          # micro plugins
  rsync -azvhP "${ianus}/micro/bindings.json" "${pawseyID}:${ianusRemote}/micro/" # micro bindings
  rsync -azvhP "${ianus}/micro/settings.json" "${pawseyID}:${ianusRemote}/micro/" # micro settings

  # remote bin
  rsync -azvhPX "${remoteBin}/bin/"* "${pawseyID}:${softwarePawsey}/bin/"

####################################################################################################

# deliver archives to Ulam
Mercury-icm_ulam:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

  # create directories
  ssh ${ulamID} "if [[ ! -d ${ianusRemote} ]]; then mkdir -p ${ianusRemote}; fi"
  ssh ${ulamID} "if [[ ! -d ${homeRemote}/bin ]]; then mkdir -p ${homeRemote}/bin; fi"

  # directory
  rsync -azvhP "${ianus}/pier" "${ulamID}:${ianusRemote}/"                      # pier
  rsync -azvhP "${ianus}/R" "${ulamID}:${ianusRemote}/"                         # r
  rsync -azvhP "${ianus}/screen" "${ulamID}:${ianusRemote}/"                    # screen
  rsync -azvhP "${ianus}/shell" "${ulamID}:${ianusRemote}/"                     # shell
  rsync -azvhP "${ianus}/starship" "${ulamID}:${ianusRemote}/"                  # starship
  rsync -azvhP "${ianus}/micro/plug" "${ulamID}:${ianusRemote}/micro/"          # micro plugins
  rsync -azvhP "${ianus}/micro/bindings.json" "${ulamID}:${ianusRemote}/micro/" # micro bindings
  rsync -azvhP "${ianus}/micro/settings.json" "${ulamID}:${ianusRemote}/micro/" # micro settings

  # remote bin
  rsync -azvhPX "${remoteBin}/bin/"* "${ulamID}:${homeRemote}/bin/"

####################################################################################################
# Vulcano
####################################################################################################

# The Ancient Greeks named this island Therasía (Θηρασία) and Thérmessa (Θέρμεσσα, source of heat).
# The island appeared in their myths as the private foundry of the Olympian god Hephaestus, the patron of blacksmiths.
# Their myths noted two more of his foundries, at Etna and Olympus.
# Strabo also mentions Thermessa as sacred place of Hephaestus (ἱερὰ Ἡφαίστου), but it is not certain whether this was a third name for the island, or merely an adjective.

# Similarly, the Romans believed that Vulcano was the chimney of their god Vulcan's workshop and, therefore, named the island after him.
# According to the Roman myths, the island had grown due to his periodic clearing of cinders and ashes from his forge.
# They also explained earthquakes that either preceded or accompanied the explosions of ash as being due to Vulcan making weapons for their god Mars for his armies to wage war.[8]

# Hephaestus (/hɪˈfiːstəs, hɪˈfɛstəs/; eight spellings; Greek: Ἥφαιστος, translit.
# Hḗphaistos) is the Greek god of blacksmiths, metalworking, carpenters, craftsmen, artisans, sculptors, metallurgy, fire (compare, however, with Hestia), and volcanoes.
# Hephaestus's Roman counterpart is Vulcan.
# In Greek mythology, Hephaestus was either the son of Zeus and Hera or he was Hera's parthenogenous child.
# He was cast off Mount Olympus by his mother Hera because of his lameness, the result of a congenital impairment; or in another account, by Zeus for protecting Hera from his advances (in which case his lameness would have been the result of his fall rather than the reason for it).

# As a smithing god, Hephaestus made all the weapons of the gods in Olympus.
# He served as the blacksmith of the gods, and was worshipped in the manufacturing and industrial centres of Greece, particularly Athens.
# The cult of Hephaestus was based in Lemnos.
# Hephaestus's symbols are a smith's hammer, anvil, and a pair of tongs.

####################################################################################################

# link archives Uppmax
Vulcano-uppmax:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

  # @HOME
  ssh ${uppmaxID} ln -svf "${ianusRemote}/R/Rprofile.d" "${homeRemote}/.Rprofile.d"                           # rprofile directory
  ssh ${uppmaxID} ln -svf "${ianusRemote}/R/uppmax_Rprofile.R" "${homeRemote}/.Rprofile"                      # rprofile
  ssh ${uppmaxID} ln -svf "${ianusRemote}/pier/pier.toml" "${homeRemote}/.pier.toml"                          # pier
  ssh ${uppmaxID} ln -svf "${ianusRemote}/tmux/2.5.tmux.conf" "${homeRemote}/.tmux.conf"                      # tmux 2.5
  ssh ${uppmaxID} ln -svf "${ianusRemote}/screen/4.01.00.screenrc" "${homeRemote}/.screenrc"                  # screen

  # @config
  ssh ${uppmaxID} ln -svf "${ianusRemote}/micro" "${homeRemote}/.config"                                      # micro directory
  ssh ${uppmaxID} ln -svf "${ianusRemote}/starship" "${homeRemote}/.config"                                   # starship directory

  # shell
  ssh ${uppmaxID} ln -svf "${terminalRemote}/uppmax_profile.sh" "${homeRemote}/.profile"                      # terminal profile

  # bash
  ssh ${uppmaxID} "if [[ ! -d ${homeRemote}/.bash ]]; then ssh ${uppmaxID} mkdir ${homeRemote}/.bash; fi"     # purge before linking
  ssh ${uppmaxID} ln -svf "${bashRemote}/uppmax_bashrc.sh" "${homeRemote}/.bashrc"                            # bashrc
  ssh ${uppmaxID} ln -svf "${bashRemote}/uppmax_bash_profile.sh" "${homeRemote}/.bash_profile"                # bash profile
  ssh ${uppmaxID} ln -svf "${bashRemote}/uppmax_bash_aliases.sh" "${homeRemote}/.bash/bash_aliases.sh"        # bash aliases
  ssh ${uppmaxID} ln -svf "${bashRemote}/fzf.bash" "${homeRemote}/.bash"                                      # fzf bash

  # zsh
  ssh ${uppmaxID} "if [[ ! -d ${homeRemote}/.zsh ]]; then ssh ${uppmaxID} mkdir ${homeRemote}/.zsh; fi"       # purge before linking
  ssh ${uppmaxID} ln -svf "${zshRemote}/uppmax_zshrc.sh" "${homeRemote}/.zshrc"                               # zshrc
  ssh ${uppmaxID} ln -svf "${zshRemote}/uppmax_zsh_aliases.sh" "${homeRemote}/.zsh/zsh_aliases.sh"            # zsh aliases
  ssh ${uppmaxID} ln -svf "${zshRemote}/fzf.zsh" "${homeRemote}/.zsh"                                         # fzf zsh
  ssh ${uppmaxID} ln -svf "${zshRemote}/uppmax_zsh_plugins.txt" "${homeRemote}/.zsh/zsh_plugins.txt"          # zsh plugins
  ssh ${uppmaxID} ln -svf "${zshRemote}/zsh_pandoc_autocompletion.sh" "${homeRemote}/.zsh"                    # zsh completion
  ssh ${uppmaxID} ln -svf "${zshRemote}/completion" "${homeRemote}/.config/zsh_completion"                    # zsh completion

  # fish
  ssh ${uppmaxID} ln -svf "${fishRemote}/uppmax_config.fish" "${homeRemote}/.config/fish/config.fish"         # fish config

####################################################################################################

# link archives Pawsey
Vulcano-pawsey:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

  # @HOME
  ssh ${pawseyID} ln -svf "${ianusRemote}/R/Rprofile.d" "${homeRemote}/.Rprofile.d"                            # rprofile directory
  ssh ${pawseyID} ln -svf "${ianusRemote}/R/pawsey_Rprofile.R" "${homeRemote}/.Rprofile"                       # rprofile
  ssh ${pawseyID} ln -svf "${ianusRemote}/screen/4.01.00.screenrc" "${homeRemote}/.screenrc"                   # screen

  # @config
  ssh ${pawseyID} ln -svf "${ianusRemote}/micro" "${homeRemote}/.config"                                       # micro directory
  ssh ${pawseyID} ln -svf "${ianusRemote}/starship" "${homeRemote}/.config"                                    # starship directory

  # shell
  ssh ${pawseyID} ln -svf "${terminalRemote}/pawsey_profile.sh" "${homeRemote}/.profile"                       # terminal profile

  # bash
  ssh ${pawseyID} "if [[ ! -d ${homeRemote}/.bash ]]; then ssh ${pawseyID} mkdir ${homeRemote}/.bash; fi"      # purge before linking
  ssh ${pawseyID} ln -svf "${bashRemote}/pawsey_bashrc.sh" "${homeRemote}/.bashrc"                             # bashrc
  ssh ${pawseyID} ln -svf "${bashRemote}/pawsey_bash_profile.sh" "${homeRemote}/.bash_profile"                 # bash profile
  ssh ${pawseyID} ln -svf "${bashRemote}/pawsey_bash_aliases.sh" "${homeRemote}/.bash/bash_aliases.sh"         # bash aliases
  ssh ${pawseyID} ln -svf "${bashRemote}/fzf.bash" "${homeRemote}/.bash"                                       # fzf bash

  # zsh
  ssh ${pawseyID} "if [[ ! -d ${homeRemote}/.zsh ]]; then ssh ${pawseyID} mkdir ${homeRemote}/.zsh; fi"        # purge before linking
  ssh ${pawseyID} ln -svf "${zshRemote}/pawsey_zshrc.sh" "${homeRemote}/.zshrc"                                # zshrc
  ssh ${pawseyID} ln -svf "${zshRemote}/pawsey_zsh_aliases.sh" "${homeRemote}/.zsh/zsh_aliases.sh"             # zsh aliases
  ssh ${pawseyID} ln -svf "${zshRemote}/fzf.zsh" "${homeRemote}/.zsh"                                          # fzf zsh
  ssh ${pawseyID} ln -svf "${zshRemote}/pawsey_zsh_plugins.txt" "${homeRemote}/.zsh/zsh_plugins.txt"           # zsh plugins
  ssh ${pawseyID} ln -svf "${zshRemote}/zsh_pandoc_autocompletion.sh" "${homeRemote}/.zsh"                     # zsh completion
  ssh ${pawseyID} ln -svf "${zshRemote}/completion" "${homeRemote}/.config/zsh_completion"                     # zsh completion

  # link executables
  ssh ${pawseyID} "if [[ ! -d ${homeRemote}/bin ]]; then ssh ${pawseyID} rm -rf ${homeRemote}/bin; fi"         # purge before linking
  ssh ${pawseyID} ln -svf "${softwarePawsey}/bin" "${homeRemote}/bin"

####################################################################################################

# link archives Ulam
Vulcano-icm_ulam:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

  # @HOME
  ssh ${ulamID} ln -svf "${ianusRemote}/R/Rprofile.d" "${homeRemote}/.Rprofile.d"                          # rprofile directory
  ssh ${ulamID} ln -svf "${ianusRemote}/R/ulam_Rprofile.R" "${homeRemote}/.Rprofile"                       # rprofile
  ssh ${ulamID} ln -svf "${ianusRemote}/screen/4.01.00.screenrc" "${homeRemote}/.screenrc"                 # screen

  # @config
  ssh ${ulamID} ln -svf "${ianusRemote}/micro" "${homeRemote}/.config"                                     # micro directory
  ssh ${ulamID} ln -svf "${ianusRemote}/starship" "${homeRemote}/.config"                                  # starship directory

  # shell
  ssh ${ulamID} ln -svf "${terminalRemote}/ulam_profile.sh" "${homeRemote}/.profile"                       # terminal profile

  # bash
  ssh ${ulamID} "if [[ ! -d ${homeRemote}/.bash ]]; then mkdir ${homeRemote}/.bash; fi"                    # purge before linking
  ssh ${ulamID} ln -svf "${bashRemote}/ulam_bashrc.sh" "${homeRemote}/.bashrc"                             # bashrc
  ssh ${ulamID} ln -svf "${bashRemote}/ulam_bash_profile.sh" "${homeRemote}/.bash_profile"                 # bash profile
  ssh ${ulamID} ln -svf "${bashRemote}/ulam_bash_aliases.sh" "${homeRemote}/.bash/bash_aliases.sh"         # bash aliases
  ssh ${ulamID} ln -svf "${bashRemote}/fzf.bash" "${homeRemote}/.bash"                                     # fzf bash

  # zsh
  ssh ${ulamID} "if [[ ! -d ${homeRemote}/.zsh ]]; then mkdir ${homeRemote}/.zsh; fi"                      # purge before linking
  ssh ${ulamID} ln -svf "${zshRemote}/ulam_zshrc.sh" "${homeRemote}/.zshrc"                                # zshrc
  ssh ${ulamID} ln -svf "${zshRemote}/ulam_zsh_aliases.sh" "${homeRemote}/.zsh/zsh_aliases.sh"             # zsh aliases
  ssh ${ulamID} ln -svf "${zshRemote}/fzf.zsh" "${homeRemote}/.zsh"                                        # fzf zsh
  ssh ${ulamID} ln -svf "${zshRemote}/ulam_zsh_plugins.txt" "${homeRemote}/.zsh/zsh_plugins.txt"           # zsh plugins
  ssh ${ulamID} ln -svf "${zshRemote}/zsh_pandoc_autocompletion.sh" "${homeRemote}/.zsh"                   # zsh completion
  ssh ${ulamID} ln -svf "${zshRemote}/completion" "${homeRemote}/.config/zsh_completion"                   # zsh completion

####################################################################################################
# Hadur
####################################################################################################

# Hadúr, or Hodúr in old Hungarian, short for Hadak Ura, meaning "warlord" or "lord of the armies" in Hungarian, was the god of fire, later became a war god in the religion of the early Hungarians (Magyars).
# In Hungarian mythology, he was the third son of Arany Atyácska (Golden Father) and Hajnal Anyácska (Dawn Mother), the main god and goddess.
# He had many siblings, including his two brothers: Napkirály (King Sun) and Szélkirály (King Wind).
# In Heaven, on the top of the World Tree on the first level there was the castle of Arany Atyácska, and Napkirály's Golden Forest below it, and Szélkirály's Silver Forest below it, and Hadúr's Copper Forest was the third.
# There he lived as a blacksmith of the gods.
# He is thought to be a great man with long hair and with armour and weapons made of pure copper, since copper was his sacred metal.
# He supposedly made the legendary sword, Sword of God (Isten kardja) which was discovered by Attila the Hun and secured his rule.
# It was customary for the Magyars to sacrifice white stallions to him before a battle.

####################################################################################################

# download cluster executables
Hadur:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

  # create directories
  if [[ ! -d "${remoteBin}" ]]; then mkdir -p "${remoteBin}"; fi
  if [[ ! -d "${remoteBin}/bin" ]]; then mkdir -p "${remoteBin}/bin"; fi
  if [[ ! -d "${remoteBin}/download" ]]; then mkdir -p "${remoteBin}/download"; fi

  # bat
  wget "https://github.com/sharkdp/bat/releases/download/v0.22.1/bat-v0.22.1-x86_64-unknown-linux-musl.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/bat-v0.22.1-x86_64-unknown-linux-musl.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/bat-v0.22.1-x86_64-unknown-linux-musl/bat" "${remoteBin}/bin/"
  mv "${remoteBin}/bat-v0.22.1-x86_64-unknown-linux-musl.tar.gz" "${remoteBin}/download/"
  rm -rf "${remoteBin}/bat-v0.22.1-x86_64-unknown-linux-musl"

  # diamond
  wget "https://github.com/bbuchfink/diamond/releases/download/v2.0.15/diamond-linux64.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/diamond-linux64.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/diamond" "${remoteBin}/bin/"
  mv "${remoteBin}/diamond-linux64.tar.gz" "${remoteBin}/download/"

  # exa
  wget "https://github.com/ogham/exa/releases/download/v0.10.1/exa-linux-x86_64-musl-v0.10.1.zip" --directory-prefix "${remoteBin}/"
  unzip -o "${remoteBin}/exa-linux-x86_64-musl-v0.10.1.zip" -d "${remoteBin}/"
  mv "${remoteBin}/exa-linux-x86_64-musl-v0.10.1.zip" "${remoteBin}/download/"
  rm -rf "${remoteBin}/completions"
  rm -rf "${remoteBin}/man"

  # fd
  wget "https://github.com/sharkdp/fd/releases/download/v8.4.0/fd-v8.4.0-x86_64-unknown-linux-musl.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/fd-v8.4.0-x86_64-unknown-linux-musl.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/fd-v8.4.0-x86_64-unknown-linux-musl/fd" "${remoteBin}/bin/"
  mv "${remoteBin}/fd-v8.4.0-x86_64-unknown-linux-musl.tar.gz" "${remoteBin}/download/"
  rm -rf "${remoteBin}/fd-v8.4.0-x86_64-unknown-linux-musl"

  # just
  wget "https://github.com/casey/just/releases/download/1.5.0/just-1.5.0-x86_64-unknown-linux-musl.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/just-1.5.0-x86_64-unknown-linux-musl.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/just" "${remoteBin}/bin/"
  mv "${remoteBin}/just-1.5.0-x86_64-unknown-linux-musl.tar.gz" "${remoteBin}/download/"
  rm -rf "${remoteBin}/Cargo"*
  rm -rf "${remoteBin}/GRAMMAR.md"
  rm -rf "${remoteBin}/just.1"
  rm -rf "${remoteBin}/LICENSE"
  rm -rf "${remoteBin}/README.adoc"

  # lsd
  wget "https://github.com/Peltoche/lsd/releases/download/0.23.1/lsd-0.23.1-x86_64-unknown-linux-musl.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/lsd-0.23.1-x86_64-unknown-linux-musl.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/lsd-0.23.1-x86_64-unknown-linux-musl/lsd" "${remoteBin}/bin/"
  mv "${remoteBin}/lsd-0.23.1-x86_64-unknown-linux-musl.tar.gz" "${remoteBin}/download/"
  rm -rf "${remoteBin}/lsd-0.23.1-x86_64-unknown-linux-musl"

  # micro
  wget "https://github.com/zyedidia/micro/releases/download/v2.0.11/micro-2.0.11-linux64.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/micro-2.0.11-linux64.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/micro-2.0.11/micro" "${remoteBin}/bin/"
  mv "${remoteBin}/micro-2.0.11-linux64.tar.gz" "${remoteBin}/download/"
  rm -rf "${remoteBin}/micro-2.0.11"

  # ripgrep
  wget "https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/ripgrep-13.0.0-x86_64-unknown-linux-musl/rg" "${remoteBin}/bin/"
  mv "${remoteBin}/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz" "${remoteBin}/download/"
  rm -rf "${remoteBin}/ripgrep-13.0.0-x86_64-unknown-linux-musl"

  # starship
  wget "https://github.com/starship/starship/releases/download/v1.10.3/starship-x86_64-unknown-linux-musl.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/starship-x86_64-unknown-linux-musl.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/starship" "${remoteBin}/bin/"
  mv "${remoteBin}/starship-x86_64-unknown-linux-musl.tar.gz" "${remoteBin}/download/"

  # xsv
  wget "https://github.com/BurntSushi/xsv/releases/download/0.13.0/xsv-0.13.0-x86_64-unknown-linux-musl.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/xsv-0.13.0-x86_64-unknown-linux-musl.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/xsv" "${remoteBin}/bin/"
  mv "${remoteBin}/xsv-0.13.0-x86_64-unknown-linux-musl.tar.gz" "${remoteBin}/download/"

  # zoxide
  wget "https://github.com/ajeetdsouza/zoxide/releases/download/v0.8.3/zoxide-0.8.3-x86_64-unknown-linux-musl.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/zoxide-0.8.3-x86_64-unknown-linux-musl.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/zoxide" "${remoteBin}/bin/"
  mv "${remoteBin}/zoxide-0.8.3-x86_64-unknown-linux-musl.tar.gz" "${remoteBin}/download/"
  rm -rf "${remoteBin}/zoxide-x86_64-unknown-linux-musl"
  rm -rf "${remoteBin}/CHANGELOG.md"
  rm -rf "${remoteBin}/LICENSE"
  rm -rf "${remoteBin}/README.md"

####################################################################################################
# compose protocols
####################################################################################################

# transfer & link configuration Uppmax
Deploy-Uppmax: Mercury-uppmax && Vulcano-uppmax

# transfer & link configuration Pawsey
Deploy-Pawsey: Mercury-pawsey && Vulcano-pawsey

# transfer & link configuration Ulam
Deploy-ICM_Ulam: Mercury-icm_ulam && Vulcano-icm_ulam

####################################################################################################
