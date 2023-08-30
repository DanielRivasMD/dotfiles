####################################################################################################

# base R
options(prompt = '> ')
# options(stringsAsFactors = FALSE)
options(max.print = 999)
options(nwarnings = 99)
options(editor = 'subl')

# dplyr (tibble)
options(dplyr.width = Inf)      # Show all columns

####################################################################################################

# open help in Opera
options(help_type = 'html')
options(browser = '/usr/bin/open -a "/Applications/Firefox.app"')

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

# expand to match columns
SW::wideScreen(Sys.getenv('RCOLUMNS'))

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
  startup::startup(),
  error = function(ex) message('.Rprofile error: ', conditionMessage(ex))
)

####################################################################################################
