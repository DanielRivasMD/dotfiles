""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" reset mappings
unmapAll

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" navigation
map j scrollDown
map k scrollUp
map J scrollFullPageDown
map K scrollFullPageUp
map <a-down> scrollFullPageDown
map <a-up> scrollFullPageUp
map h scrollLeft
map l scrollRight
map H scrollToLeft
map L scrollToRight
map G scrollToBottom
map g scrollToTop
map <m-down> scrollToBottom
map <m-up> scrollToTop
map r reload

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" URL
map y copyCurrentUrl
map p openCopiedUrlInCurrentTab
map P openCopiedUrlInNewTab
map q goUp
map Q goToRoot

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" modes
map ` enterInsertMode
map v enterVisualMode
map V enterVisualLineMode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" links
map <m-space> focusInput

map <a-space> LinkHints.activateModeToDownloadLink
map <c-space> LinkHints.activateModeToCopyLinkUrl
map <c-a-m-space> LinkHints.activateModeWithQueue

map <m-enter> LinkHints.activateMode
map <c-m-enter> LinkHints.activateMode

map <a-enter> LinkHints.activateModeToOpenInNewTab
map <c-a-m-enter> LinkHints.activateModeToOpenInNewForegroundTab

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" marks
map | Marks.activateCreateMode
map " Marks.activateGotoMode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vomnibar
map o Vomnibar.activate
map O Vomnibar.activateInNewTab
map b Vomnibar.activateBookmarks
map B Vomnibar.activateBookmarksInNewTab
map e Vomnibar.activateEditUrl
map E Vomnibar.activateEditUrlInNewTab
map s Vomnibar.activateTabSelection

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" find
map / enterFindMode
map n performFind
map N performBackwardsFind

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" history
map u goBack
map U goForward
map H goBack
map L goForward

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" tab manipulation
map ; createTab
map , previousTab
map . nextTab
map { firstTab
map } lastTab
map <a-m-space> visitPreviousTab
map ' visitPreviousTab
map d duplicateTab
map \ togglePinTab
map m toggleMuteTab
map x removeTab
map <a-q> removeTab
map z restoreTab
map w moveTabToNewWindow
map [ moveTabLeft
map ] moveTabRight

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" help
map ? showHelp
map S toggleViewSource

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
