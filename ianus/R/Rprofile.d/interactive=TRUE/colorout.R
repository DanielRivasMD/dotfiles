################################################################################

tryCatch(
  require(colorout, quietly = TRUE),
  error = function(ex) message('.Rprofile error: ', conditionMessage(ex))
)

################################################################################
