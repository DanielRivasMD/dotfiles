################################################################################

tryCatch(
  require(colorout, quietly = T),
  error = function(ex) message('.Rprofile error: ', conditionMessage(ex))
)

################################################################################
