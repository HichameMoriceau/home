" Set tabulation size
:set tabstop=2

" Highlight search results
:set hlsearch

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>


" Jump over blocks of text (does not work)
:nmap <A-j> <M-}> 
:nmap <A-k> <M-{> 

" remap ctrl+N (autocomplete) to ctrl+tab (does not work)
" :nmap <C-n> <C-Tab>
