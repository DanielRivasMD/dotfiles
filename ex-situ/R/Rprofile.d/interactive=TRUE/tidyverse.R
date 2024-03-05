####################################################################################################

tryCatch(
  suppressMessages(require(tidyverse)),
  error = function(ex) message('.Rprofile error: ', conditionMessage(ex))
)

assign('filter', dplyr::filter)

####################################################################################################
