"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" disable default mappings
let g:EasyMotion_do_mapping = 0

" jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap <CR> <Plug>(easymotion-overwin-f)

" turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

let g:EasyMotion_keys = get(g:,
  \ 'EasyMotion_keys', 'asdghklqwertyuiopzxcvbnmfj')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
