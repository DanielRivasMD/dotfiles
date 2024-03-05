####################################################################################################

# check daemon status
if test ! -f "${pueuedTracker}" && test ! -f "${pueueSocket}"
then
  source ${PIER}/breakCross.sh $COLUMNS
  echo ''
  echo "${CYAN}pueue${YELLOW} daemon${NC} is not currently running${NC}"
  echo ''
  echo "start by calling ${CYAN}pueued${GREEN} --daemonize${NC}"
  echo ''
  source ${PIER}/breakCross.sh $COLUMNS

  exit 0
fi

# create group
pueue group add "${pueueUGroup}"

# parallel jobs
pueue parallel --group "${pueueUGroup}" 3

####################################################################################################
