################################################################################

_default:
  @just --list

#################################################################################

# print justfile
print:
  bat .justfile --language make

#################################################################################
# Cerberus
#################################################################################

# link Cerberus archive
Cerberus:
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

################################################################################
# Ianus
################################################################################

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
  ln -svf "${ianus}/tmux/3.1c.tmux.conf" "${home}/.tmux.conf"                   # tumx 3.1c
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
  ln -svf "${zsh}/zsh_just_patch.sh" "${home}/.zsh"                             # zsh just patch
  ln -svf "${zsh}/zsh_navi_patch.sh" "${home}/.zsh"                             # zsh navi patch

  # fish
  ln -svf "${fish}/vernacular_config.fish" "${home}/.config/fish/config.fish"   # fish config

  # nushell
  ln -svf "${nushell}/config.nu" "${nushellConf}/"                              # nushell config

  # amp
  ln -svf "${ianus}/amp" "${appSuport}"                                         # amp config

################################################################################
# Mercury
################################################################################

# deliver archives to Uppmax
MercuryUppmax:
  #!/bin/bash
  set -euo pipefail

  #declarations
  source .just.sh

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

  # TODO: define softwareUppmax
  # # remote bin

################################################################################

# deliver archives to Pawsey
MercuryPawsey:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

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

################################################################################
# Vulcano
################################################################################

# link archives Uppmax
VulcanoUppmax:
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
  ssh ${uppmaxID} ln -svf "${zshRemote}/uppmax_zsh_plugins.sh" "${homeRemote}/.zsh/zsh_plugins.sh"            # zsh plugins
  ssh ${uppmaxID} ln -svf "${zshRemote}/uppmax_zsh_plugins.txt" "${homeRemote}/.zsh/zsh_plugins.txt"          # zsh plugins
  ssh ${uppmaxID} ln -svf "${zshRemote}/zsh_pandoc_autocompletion.sh" "${homeRemote}/.zsh"                    # zsh completion
  ssh ${uppmaxID} ln -svf "${zshRemote}/completion" "${homeRemote}/.config/zsh_completion"                    # zsh completion

  # fish
  ssh ${uppmaxID} ln -svf "${fishRemote}/uppmax_config.fish" "${homeRemote}/.config/fish/config.fish"         # fish config

################################################################################

# link archives Pawsey
VulcanoPawsey:
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
  ssh ${pawseyID} ln -svf "${zshRemote}/pawsey_zsh_plugins.sh" "${homeRemote}/.zsh/zsh_plugins.sh"             # zsh plugins
  ssh ${pawseyID} ln -svf "${zshRemote}/pawsey_zsh_plugins.txt" "${homeRemote}/.zsh/zsh_plugins.txt"           # zsh plugins
  ssh ${pawseyID} ln -svf "${zshRemote}/zsh_pandoc_autocompletion.sh" "${homeRemote}/.zsh"                     # zsh completion
  ssh ${pawseyID} ln -svf "${zshRemote}/completion" "${homeRemote}/.config/zsh_completion"                     # zsh completion

  # link executables
  ssh ${pawseyID} "if [[ ! -d ${homeRemote}/bin ]]; then ssh ${pawseyID} rm -rf ${homeRemote}/bin; fi"         # purge before linking
  ssh ${pawseyID} ln -svf "${softwarePawsey}/bin" "${homeRemote}/bin"

################################################################################
# Hadur
################################################################################

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
  wget "https://github.com/sharkdp/bat/releases/download/v0.18.3/bat-v0.18.3-x86_64-unknown-linux-musl.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/bat-v0.18.3-x86_64-unknown-linux-musl.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/bat-v0.18.3-x86_64-unknown-linux-musl/bat" "${remoteBin}/bin/"
  mv "${remoteBin}/bat-v0.18.3-x86_64-unknown-linux-musl.tar.gz" "${remoteBin}/download/"
  rm -rf "${remoteBin}/bat-v0.18.3-x86_64-unknown-linux-musl"

  # diamond
  wget "https://github.com/bbuchfink/diamond/releases/download/v2.0.12/diamond-linux64.tar.gz" --directory-prefix "${remoteBin}/"
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
  wget "https://github.com/sharkdp/fd/releases/download/v8.2.1/fd-v8.2.1-x86_64-unknown-linux-musl.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/fd-v8.2.1-x86_64-unknown-linux-musl.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/fd-v8.2.1-x86_64-unknown-linux-musl/fd" "${remoteBin}/bin/"
  mv "${remoteBin}/fd-v8.2.1-x86_64-unknown-linux-musl.tar.gz" "${remoteBin}/download/"
  rm -rf "${remoteBin}/fd-v8.2.1-x86_64-unknown-linux-musl"

  # just
  wget "https://github.com/casey/just/releases/download/0.10.2/just-0.10.2-x86_64-unknown-linux-musl.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/just-0.10.2-x86_64-unknown-linux-musl.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/just" "${remoteBin}/bin/"
  mv "${remoteBin}/just-0.10.2-x86_64-unknown-linux-musl.tar.gz" "${remoteBin}/download/"
  rm -rf "${remoteBin}/Cargo"*
  rm -rf "${remoteBin}/GRAMMAR.md"
  rm -rf "${remoteBin}/just.1"
  rm -rf "${remoteBin}/LICENSE"
  rm -rf "${remoteBin}/README.adoc"

  # lsd
  wget "https://github.com/Peltoche/lsd/releases/download/0.20.1/lsd-0.20.1-x86_64-unknown-linux-musl.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/lsd-0.20.1-x86_64-unknown-linux-musl.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/lsd-0.20.1-x86_64-unknown-linux-musl/lsd" "${remoteBin}/bin/"
  mv "${remoteBin}/lsd-0.20.1-x86_64-unknown-linux-musl.tar.gz" "${remoteBin}/download/"
  rm -rf "${remoteBin}/lsd-0.20.1-x86_64-unknown-linux-musl"

  # micro
  wget "https://github.com/zyedidia/micro/releases/download/v2.0.10/micro-2.0.10-linux64.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/micro-2.0.10-linux64.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/micro-2.0.10/micro" "${remoteBin}/bin/"
  mv "${remoteBin}/micro-2.0.10-linux64.tar.gz" "${remoteBin}/download/"
  rm -rf "${remoteBin}/micro-2.0.10"

  #   # nushell
  #   wget "https://github.com/nushell/nushell/releases/download/0.38.0/nu_0_38_0_linux.tar.gz" --directory-prefix "${remoteBin}/"
  #   tar -xvf "${remoteBin}/nu_0_38_0_linux.tar.gz" --directory "${remoteBin}/"
  #   mv -v "${remoteBin}/nu_0_38_0_linux/nushell-0.38.0/"nu* "${remoteBin}/bin/"
  #   mv -v "${remoteBin}/nu_0_38_0_linux/nushell-0.38.0/libssl.so.1.1" "${remoteBin}/bin/"
  #   mv "${remoteBin}/nu_0_38_0_linux.tar.gz" "${remoteBin}/download/"
  #   rm -rf "${remoteBin}/nu_0_38_0_linux"

  # ripgrep
  wget "https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/ripgrep-13.0.0-x86_64-unknown-linux-musl/rg" "${remoteBin}/bin/"
  mv "${remoteBin}/ripgrep-13.0.0-x86_64-unknown-linux-musl.tar.gz" "${remoteBin}/download/"
  rm -rf "${remoteBin}/ripgrep-13.0.0-x86_64-unknown-linux-musl"

  # starship
  wget "https://github.com/starship/starship/releases/download/v0.58.0/starship-x86_64-unknown-linux-musl.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/starship-x86_64-unknown-linux-musl.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/starship" "${remoteBin}/bin/"
  mv "${remoteBin}/starship-x86_64-unknown-linux-musl.tar.gz" "${remoteBin}/download/"

  # xcp
  # "wget https://github.com/tarka/xcp/archive/refs/tags/v0.9.0.tar.gz" --directory-prefix "${remoteBin}/"

  # xsv
  wget "https://github.com/BurntSushi/xsv/releases/download/0.13.0/xsv-0.13.0-x86_64-unknown-linux-musl.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/xsv-0.13.0-x86_64-unknown-linux-musl.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/xsv" "${remoteBin}/bin/"
  mv "${remoteBin}/xsv-0.13.0-x86_64-unknown-linux-musl.tar.gz" "${remoteBin}/download/"

  # zoxide
  wget "https://github.com/ajeetdsouza/zoxide/releases/download/v0.7.6/zoxide-v0.7.6-x86_64-unknown-linux-musl.tar.gz" --directory-prefix "${remoteBin}/"
  tar -xvf "${remoteBin}/zoxide-v0.7.6-x86_64-unknown-linux-musl.tar.gz" --directory "${remoteBin}/"
  mv "${remoteBin}/zoxide-x86_64-unknown-linux-musl/zoxide" "${remoteBin}/bin/"
  mv "${remoteBin}/zoxide-v0.7.6-x86_64-unknown-linux-musl.tar.gz" "${remoteBin}/download/"
  rm -rf "${remoteBin}/zoxide-x86_64-unknown-linux-musl"

################################################################################
# compose protocols
################################################################################

# transfer & link configuration Uppmax
Uppmax: MercuryUppmax && VulcanoUppmax

# transfer & link configuration Pawsey
Pawsey: MercuryPawsey && VulcanoPawsey

#################################################################################

