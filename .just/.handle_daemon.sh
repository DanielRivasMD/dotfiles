####################################################################################################

# check daemon status
if test ! -f "${pueuedTracker}"
then
  # start daemon
  pueued --daemonize

  # wait for daemon
  sleep 3
fi

####################################################################################################
