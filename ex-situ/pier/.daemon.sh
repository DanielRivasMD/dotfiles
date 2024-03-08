####################################################################################################

# check daemon status
function check_daemon() {
  if test ! -f "${pueuedTracker}" && test ! -f "${pueueSocket}"
  then
    source "${IN_SILICO}/breakCross.sh" $COLUMNS
    echo ''
    echo "${CYAN}pueue${YELLOW} daemon${NC} is not currently running${NC}"
    echo ''
    echo "start by calling ${CYAN}pueued${GREEN} --daemonize${NC}"
    echo ''
    source "${IN_SILICO}/breakCross.sh" $COLUMNS
    return 1
  else
    return 0
  fi
}

####################################################################################################