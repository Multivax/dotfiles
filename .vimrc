"" Plugins
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf

call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'christoomey/vim-tmux-navigator'
	Plugin 'junegunn/goyo.vim'
	Plugin 'junegunn/fzf'
	Plugin 'junegunn/fzf.vim'
	Plugin 'haishanh/night-owl.vim'
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
" TODO: Add more tab bindings
nmap <tab> za

" Goyo mode
nnoremap go :Goyo<cr>

" Fzf buffers
nnoremap gb :Buffers<cr>
set hidden

" FIXME: this doesn't work with meta on my setup for some reason.
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>

" Search behaviour
set incsearch
set ignorecase
set smartcase
set hlsearch

set wildmenu
set showcmd

" Exit instert mode more faster (I KNEW IT WAS BAD)
set timeoutlen=1000
set ttimeoutlen=0

"" Looks
if (has("termguicolors"))
 set termguicolors
endif
colorscheme night-owl

" Wrap words properly
set linebreak
set wrap
set breakindent

" Show tabs and trailing spaces
set listchars=tab:»\ ,trail:·
set list

let &t_SI="\e[6 q"
let &t_EI="\e[2 q"
let &t_SR="\e[4 q"

" Colors and line numbers
syntax on
set background=dark

" Number and ruler
set number
set ruler

" Mouse
set mouse=a

" Markdown
let g:markdown_folding = 1
" Toggle folds with tab in markdown
