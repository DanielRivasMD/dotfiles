####################################################################################################

# base R
options(prompt = '> ')
options(stringsAsFactors = FALSE)
options(max.print = 999)
options(nwarnings = 99)
options(editor = 'subl')
options(scipen = 999)

# dplyr (tibble)
options(dplyr.width = Inf)      # Show all columns

####################################################################################################

# override q() to avoid save workspace prompt
utils::assignInNamespace(
  'q',
  function(save = 'no', status = 0, runLast = TRUE)
  {
    .Internal(quit(save, status, runLast))
  },
  'base'
)

# use quit() to save workspace
utils::assignInNamespace(
  'quit',
  function(save = 'yes', status = 0, runLast = TRUE)
  {
    .Internal(quit(save, status, runLast))
  },
  'base'
)

####################################################################################################

# default repo
local(
  {
    r <- getOption("repos")
    r["CRAN"] <- "http://cran.r-project.org"
    options(repos = r)
  }
)

####################################################################################################

# launch startup
tryCatch(
  suppressMessages(startup::startup()),
  error = function(ex) message('.Rprofile error: ', conditionMessage(ex))
)

####################################################################################################

# expand to match columns
tryCatch(
  suppressMessages(SW::wideScreen(Sys.getenv('RCOLUMNS'))),
  error = function(ex) message('.Rprofile error: ', conditionMessage(ex))
)

####################################################################################################
