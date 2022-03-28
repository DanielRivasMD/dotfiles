"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" reset mappings
unmapAll

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
map gg scrollToTop
map <m-down> scrollToBottom
map <m-up> scrollToTop
map r reload

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" URL
map y copyCurrentUrl
map p openCopiedUrlInCurrentTab
map P openCopiedUrlInNewTab
map q goUp
map Q goToRoot

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" modes
map <a-i> enterInsertMode
map <c-i> enterInsertMode
map v enterVisualMode
map V enterVisualLineMode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" links
map <space> focusInput
map <enter> LinkHints.activateMode
map <a-enter> LinkHints.activateModeToOpenInNewTab
map <m-enter> LinkHints.activateModeToOpenInNewForegroundTab
map <a-m-enter> LinkHints.activateModeWithQueue
map <c-enter> LinkHints.activateModeToCopyLinkUrl
map <c-a-enter> LinkHints.activateModeToDownloadLink

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" marks
map <a-m> Marks.activateCreateMode
map <c-m> Marks.activateCreateMode
map ' Marks.activateGotoMode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vomnibar
map o Vomnibar.activate
map O Vomnibar.activateInNewTab
map b Vomnibar.activateBookmarks
map B Vomnibar.activateBookmarksInNewTab
map e Vomnibar.activateEditUrl
map E Vomnibar.activateEditUrlInNewTab
map s Vomnibar.activateTabSelection

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" find
map <a-r> enterFindMode
map <a-n> performFind
map <a-N> performBackwardsFind
map <a-m-r> enterFindMode
map <a-m-n> performFind
map <a-m-N> performBackwardsFind

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" history
map u goBack
map U goForward
map H goBack
map L goForward
map <a-left> goBack
map <a-right> goForward

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" tab manipulation
map T createTab
map <a-m-left> previousTab
map <a-m-right> nextTab
map <c-left> previousTab
map <c-right> nextTab
map <c-a-left> firstTab
map <c-a-right> lastTab
map <a-m-space> visitPreviousTab
map <c-space> visitPreviousTab
map <a-d> duplicateTab
map <a-p> togglePinTab
map <c-d> duplicateTab
map <c-p> togglePinTab
map m toggleMuteTab
map x removeTab
map <a-q> removeTab
map R restoreTab
map w moveTabToNewWindow
map <c-a-[> moveTabLeft
map <c-a-]> moveTabRight
map <a-m-[> moveTabLeft
map <a-m-]> moveTabRight

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" help
map ? showHelp
map S toggleViewSource

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
