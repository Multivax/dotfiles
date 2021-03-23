"" Behaviour

set nocompatible

" Indentation
set shiftwidth=4
set tabstop=4
set smartindent
filetype indent plugin on

" Ctrl-backspace behaviour
set backspace=indent,eol,start
imap <C-BS> <C-W>
imap <C-H> <C-W>

" Search behaviour
set incsearch
set ignorecase
set smartcase
set hlsearch

" Exit instert mode more faster (probably bad)
set timeoutlen=0

"" Looks

" Wrap words properly
set linebreak
set wrap

" Show tabs and trailing spaces
set listchars=tab:»\ ,trail:·
set list

" Change cursor appearance based on mode
if exists('$TMUX')
	let &t_SI="\ePtmux;\e\e[6 q\e\\"
	let &t_EI="\ePtmux;\e\e[2 q\e\\"
	let &t_SR="\ePtmux;\e\e[4 q\e\\"
else
	let &t_SI="\e[6 q"
	let &t_EI="\e[2 q"
	let &t_SR="\e[4 q"
endif

" Colors and line numbers
syntax on
set background=dark

" Number and ruler
set number
set ruler

" Mouse
set mouse=a


"" Keybinds

" TODO that tmux vim compatibility thingy
" Switch windows with Alt+movement key
" map <A-h> <C-w>h
" map <A-j> <C-w>j
" map <A-k> <C-w>k
" map <A-l> <C-w>l
