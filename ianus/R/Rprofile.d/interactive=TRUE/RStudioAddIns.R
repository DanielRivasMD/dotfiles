################################################################################

if ( .Platform$GUI == 'RStudio' ) {
  tryCatch(
    require(RStudioAddIns, quietly = T),
    error = function(ex) message('.Rprofile error: ', conditionMessage(ex))
  )
}

################################################################################
