" explicitly get out of vi-compatible mode
set nocompatible

" syntax highlighting on
syntax on

" When opening a new line and no filetype-specific indenting is enabled, keep
" " the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

set smartindent

" Plug and bundles configuration
"source bundles.vim
source /home/imargonis/.vim/plugged/plugs.vim

" load filetype plugins/indent settings
filetype on		" Enable filetype detection
filetype indent on	" Enable filetype-specific indenting
filetype plugin on	" Enable filetype-specific plugins

" make backspace a more flexible
set backspace=indent,eol,start

" highlight searched for phrases
set hlsearch

" highlight as you search
set incsearch

" Always show current positions along the bottom
set ruler

" show the command being typed
set showcmd

" show line numbers
" for relative use "set relativenumbers" or both for hybrid mode
" I have setup <F12> to toggle them on/off
set number

set wildmenu
"set wildmode=longest:full,full

map Q gq

set nocst

set report=0

set noshowmatch

set nocp

set mps+=<:>

let loaded_matchparen = 1

" INSERT (paste) mode
set pastetoggle=<F11>

"maps
map <F1>	O/*<ESC>
map <F2>	o*/<ESC>
map <F3>	0i/*<ESC>A*/<ESC>
map <F4>	^2xg_h2x
map <F5>	0i//<ESC>
map <F6>	02x
nmap <F12>	:set invnumber<CR>

" configure tags
" set tags+=~/.vim/tags/cpp_std_tags 
set tags+=~/.vim/tags/cpp_std_tags

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Utility functions
nmap <c-f> 0/(<CR>byt(j0%A /* <Esc>pA */<Esc>
