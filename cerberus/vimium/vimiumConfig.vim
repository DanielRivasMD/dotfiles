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
map <c-i> enterInsertMode
map v enterVisualMode
map V enterVisualLineMode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" links
map <space> focusInput
map <enter> LinkHints.activateMode
map <a-enter> LinkHints.activateModeToOpenInNewTab
map <m-enter> LinkHints.activateModeToOpenInNewForegroundTab
map <a-m-enter> LinkHints.activateModeWithQueue
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
map T createTab
map ; createTab
map <a-m-left> previousTab
map <a-m-right> nextTab
map , previousTab
map . nextTab
map <c-left> firstTab
map <c-right> lastTab
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
