" explicitly get out of vi-compatible mode
set nocompatible

" Plug and bundles configuration
"source bundles.vim
source /home/imargonis/.vim/plugged/plugs.vim

" syntax highlighting on
syntax on

" When opening a new line and no filetype-specific indenting is enabled, keep
" " the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

set smartindent

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

" configure tags
" set tags+=~/.vim/tags/cpp_std_tags 
set tags+=~/.vim/tags/cpp_std_tags

" omnicomplete
"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"let OmniCpp_MayCompleteDot = 1 " autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Utility functions
nmap <c-f> 0/(<CR>byt(j0%A /* <Esc>pA */<Esc>
