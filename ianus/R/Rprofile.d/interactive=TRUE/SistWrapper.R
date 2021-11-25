################################################################################

tryCatch(
  suppressMessages(require(SistWrapper)),
  error = function(ex) message('.Rprofile error: ', conditionMessage(ex))
)

################################################################################
