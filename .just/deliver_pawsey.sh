#!/bin/bash
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

# config
source "${IN_SILICO}/.config/config.sh"

####################################################################################################

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
