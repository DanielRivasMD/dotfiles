""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" reset mappings
unmapAll

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" URL
map y copyCurrentUrl
map p openCopiedUrlInCurrentTab
map P openCopiedUrlInNewTab
map q goUp
map Q goToRoot

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" modes
map I enterInsertMode
map v enterVisualMode
map V enterVisualLineMode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" links
map <space> focusInput
map <enter> LinkHints.activateMode
map <m-enter> LinkHints.activateModeToOpenInNewTab
map <a-enter> LinkHints.activateModeToOpenInNewForegroundTab
map <c-a-m-enter> LinkHints.activateModeWithQueue
map <c-enter> LinkHints.activateModeToCopyLinkUrl
map <c-m-enter> LinkHints.activateModeToDownloadLink

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" marks
map | Marks.activateCreateMode
map " Marks.activateGotoMode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" find
map / enterFindMode
map n performFind
map N performBackwardsFind

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" history
map u goBack
map U goForward
map H goBack
map L goForward

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" help
map ? showHelp
map S toggleViewSource

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
