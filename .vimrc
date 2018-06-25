" VUNDLE config ------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'valloric/youcompleteme'

" sudo apt install vim-nox vim-gtk vim-gnome vim-athena # neocomplete dependencies


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" EndOf: VUNDLE config -----------------------------------------

autocmd FileType vim let b:vcm_tab_complete = 'vim'

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

