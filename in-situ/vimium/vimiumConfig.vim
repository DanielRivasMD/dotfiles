""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" TODO: update f1 bindings
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
map H scrollLeft
map L scrollRight
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
map <c-space> enterInsertMode
map v enterVisualMode
map V enterVisualLineMode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" links
map <a-f1> focusInput
 
map <c-f1> LinkHints.activateModeToDownloadLink
map <m-f1> LinkHints.activateModeToCopyLinkUrl
 
map <c-m-f1> LinkHints.activateMode
 
map <a-c-f1> LinkHints.activateModeToOpenInNewTab
map <a-m-f1> LinkHints.activateModeToOpenInNewForegroundTab

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
map <m-space> Vomnibar.activateTabSelection

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" find
map / enterFindMode
map l performFind
map h performBackwardsFind

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" history
map u goBack
map U goForward

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" tab manipulation
map ; createTab
map , previousTab
map . nextTab
map ' visitPreviousTab
map d duplicateTab
map \ togglePinTab
map m toggleMuteTab
map x removeTab
map z restoreTab
map w moveTabToNewWindow
map [ moveTabLeft
map ] moveTabRight

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" help
map ? showHelp
map s toggleViewSource

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
