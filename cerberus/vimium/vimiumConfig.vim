
" reset mappings
unmapAll

" navigation
map j scrollDown
map k scrollUp
map h scrollLeft
map l scrollRight
map gg scrollToTop
map G scrollToBottom
map d scrollPageDown
map u scrollPageUp
map r reload

" URL
map yy copyCurrentUrl
map p openCopiedURLInCurrentTab
map P openCopiedURLInNewTab
map gu goUp
map gU goToRoot

" modes
map i enterInsertMode
map v enterVisualMode
map V enterVisualLineMode

" links
map gi focusInput
map f LinkHints.activateMode
map F LinkHints.activateModeToOpenInNewTab
map yf LinkHints.activateModeToCopyLinkUrl

" marks
map m Marks.activateCreateMode
map ` Marks.activateGotoMode

" vomnibar
map o Vomnibar.activate
map O Vomnibar.activateInNewTab
map b Vomnibar.activateBookmarks
map B Vomnibar.activateBookmarksInNewTab
map T Vomnibar.activateTabSelection
map ge Vomnibar.activateEditUrl
map gE Vomnibar.activateEditUrlInNewTab

" find
map / enterFindMode
map n performFind
map N performBackwardsFind

" history
map J goBack
map K goForward

" tab manipulation
map t createTab
" map J previousTab
" map K nextTab
map ' visitPreviousTab
map H firstTab
map L lastTab
map yt duplicateTab
map x removeTab
map X restoreTab
map W moveTabToNewWindow
map <c-left> moveTabLeft
map <c-right> moveTabRight

" help
map  ? showHelp
map gs toogleViewSource
