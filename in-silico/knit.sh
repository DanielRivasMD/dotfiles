####################################################################################################

# TODO: add to Lou
# rmarkdown knit
knit() {
  R --slave -e "rmarkdown::render('$1')" > /dev/null
}

####################################################################################################
