################################################################################

tryCatch(
  suppressMessages(require(SystWrapper)),
  error = function(ex) message('.Rprofile error: ', conditionMessage(ex))
)

################################################################################
