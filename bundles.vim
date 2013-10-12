set nocompatible               " be iMproved
filetype on
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle the plugin manager
Bundle 'gmarik/vundle'

Bundle 'snipMate'
Bundle 'OmniCppComplete'

" vim-rails Ruby on Rails power tools
Bundle 'tpope/vim-rails'

" NERD tree allows you to explore your filesystem and to open files and directories
Bundle 'scrooloose/nerdtree.git'
let NERDTreeDirArrows=0

" wisely add 'end in ruby, endfunction/endif/more in vim script,  There's also
" Bourne shell, VB (don't ask), C/C++ preprocessor, and Lua support
Bundle 'tpope/vim-endwise'

" ghetto HTML/XML mappings
Bundle 'tpope/vim-ragtag'

" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML
" tags, and more
Bundle 'tpope/vim-surround'

filetype plugin indent on     " required!
