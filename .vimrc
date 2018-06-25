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

" ----------------------------
" Add more Vundle plugins here:
" ----------------------------

" youcompleteme was installed manually, not using Vundle:
" Plugin 'valloric/youcompleteme'

" theme/colours
" https://github.com/NLKNguyen/papercolor-theme
Plugin 'NLKNguyen/papercolor-theme'

" Proper tagbar:
" https://github.com/itchyny/lightline.vim
Plugin 'itchyny/lightline.vim'

" git integration for vim :Git
Plugin 'tpope/vim-fugitive'


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



" Theme ---------------------------------------------------------
" set term=screen-256color
" colorscheme github


if !has('gui_running')
				  set t_Co=256
	endif
set background=light
colorscheme PaperColor

" display the lightline tag bar
set laststatus=2
" stop showing the current mode (already in tagbar)
set noshowmode
" define lightline tagbar appearance (can be more sofisticated)
let g:lightline = {
      \ 'colorscheme': 'wombat',
			\ 'active': {
			\ 	'left':[
			\ 			['mode', 'paste'],
			\  			['gitbranch', 'readonly', 'filename','modified']
			\ 		]
			\  },
			\ 'component_function': {
			\ 		'gitbranch': 'fugitive#head'
			\ 	}
      \ }

" end of theme config ---------------------------------------------

" highlight text that goes beyong 80 columns
"augroup collumnLimit
"  autocmd!
"  autocmd BufEnter,WinEnter
"        \ highlight CollumnLimit ctermbg=DarkGrey guibg=DarkGrey
"  let collumnLimit = 10 " feel free to customize
"  let pattern =
"        \ '\%<' . (collumnLimit+1) . 'v.\%>' . collumnLimit . 'v'
"  autocmd BufEnter,WinEnter
"        \ let w:m1=matchadd('CollumnLimit', pattern, -1)
"augroup END
:match ErrorMsg '\%>80v.\+'

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
" Jump over blocks of text (does not work)
:nmap <A-j> <M-}> 
:nmap <A-k> <M-{> 

" remap ctrl+N (autocomplete) to ctrl+tab (does not work)
" :nmap <C-n> <C-Tab>

