####################################################################################################

if ( .Platform$GUI == 'RStudio' ) {
  tryCatch(
    require(RStudioAddIns, quietly = TRUE),
    error = function(ex) message('.Rprofile error: ', conditionMessage(ex))
  )
}

####################################################################################################
