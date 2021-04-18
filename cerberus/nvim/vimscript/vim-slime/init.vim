
let g:slime_target = "tmux"                                                       " use vim slime with tmux
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}  " send to last pane
let g:slime_dont_ask_default = 1                                                  " do not prompt config

let g:slime_no_mappings = 1                                                       " do not use default mappings

xmap <C-h> <Plug>SlimeRegionSend
nmap <C-h> <Plug>SlimeParagraphSend

