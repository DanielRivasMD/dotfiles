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


####################################################################################################

# link Cerberus archive
Cerberus:

####################################################################################################

# link Ianus archive
Ianus:

####################################################################################################

# deliver archives to Pawsey
Mercury-pawsey:
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

# deliver & link configuration Pawsey
Deploy-Pawsey: Mercury-pawsey && Vulcano-pawsey

####################################################################################################

# watch changes goku karabiner
goku-watch:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

  # watch source changes
  watchexec --watch "${karabiner}/karabiner.edn" -- 'goku' &

####################################################################################################

# format goku karabiner
goku-format:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

  # format with clojure format
  cljfmt fix "${karabiner}/karabiner.edn"

####################################################################################################

# format & watch goku
Goku:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

  # format & watch
  watchexec --watch "${karabiner}/karabiner.edn" -- 'cljfmt fix cerberus/karabiner/karabiner.edn && goku'

####################################################################################################

# record software
Mnemosyne:
  #!/bin/bash
  set -euo pipefail

  # declarations
  source .just.sh

  # collect brew
  brew list --formula > "${setupDir}/brew_formulae.txt"
  brew list --cask > "${setupDir}/brew_casks.txt"

  # collect cargo
  cargo-install-update install-update --list | awk '{if (NR > 3) print $1}' > "${setupDir}/cargo.txt"


####################################################################################################

# set up
setup:
  source setup/setup.sh

####################################################################################################
