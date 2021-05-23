################################################################################

tryCatch(
  require(SistWrapper, quietly = T),
  error = function(ex) message('.Rprofile error: ', conditionMessage(ex))
)

################################################################################
