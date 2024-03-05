####################################################################################################

# check daemon status
function check_daemon() {
  if test ! -f "${pueuedTracker}" && test ! -f "${pueueSocket}"
  then
    source ${ARCHIVE}/.config/breakCross.sh $COLUMNS
    echo ''
    echo "${CYAN}pueue${YELLOW} daemon${NC} is not currently running${NC}"
    echo ''
    echo "start by calling ${CYAN}pueued${GREEN} --daemonize${NC}"
    echo ''
    source ${ARCHIVE}/.config/breakCross.sh $COLUMNS
    return 1
  else
    return 0
  fi
}

####################################################################################################
