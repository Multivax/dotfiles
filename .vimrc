"" Plugins
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()

filetype indent plugin on

" Indentation
set shiftwidth=4
set tabstop=4
set smartindent

"" Binds
" Ctrl-backspace in insert mode
set backspace=indent,eol,start
imap <C-BS> <C-W>
imap <C-H> <C-W>

" toggle fold under cursor
nmap <tab> za

" Search behaviour
set incsearch
set ignorecase
set smartcase
set hlsearch


set wildmenu

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



"" Keybinds

" FIXME: this doesn't work with meta on my setup for some reason.
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>

" Mouse
set mouse=a

" Markdown
let g:markdown_folding = 1
" Toggle folds with tab in markdown
