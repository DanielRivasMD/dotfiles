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

#!/bin/bash
set -euo pipefail

####################################################################################################

# declarations
source .just/.config.sh

####################################################################################################

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
