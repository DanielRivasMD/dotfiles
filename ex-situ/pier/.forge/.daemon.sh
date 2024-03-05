####################################################################################################

# check daemon status
if test ! -f "${pueuedTracker}"
then
  # start daemon
  pueued --daemonize

  # wait for daemon
  sleep 1
fi

# create group
pueue group add "${pueueWGroup}"

# parallel jobs
pueue parallel --group "${pueueWGroup}" 3

####################################################################################################
