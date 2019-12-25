set nocompatible               " be iMproved
filetype on
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YouCompleteMe: a code-completion engine for Vim
" ATTENTION: needs compilation after installation
" please see https://github.com/ycm-core/YouCompleteMe
" or https://github.com/ycm-core/YouCompleteMe#full-installation-guide
" alternatively install package from AUR (on Arch)
Plugin 'Valloric/YouCompleteMe'

" SnipMate aims to provide support for textual snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" various snippets for various languages for SnipMate
Plugin 'honza/vim-snippets'

" Command-T is a Vim plug-in that provides an extremely fast "fuzzy" mechanism for:
" - Opening files and buffers
" - Jumping to tags and help
" - Running commands, or previous searches and commands
" ATTENTION: needs vim compiled with ruby support AND compilation after installation
" please see https://github.com/wincent/command-t/blob/master/doc/command-t.txt
Plugin 'wincent/command-t'


" vim-ruby
Plugin 'vim-ruby/vim-ruby'

" vim-rails Ruby on Rails power tools
Plugin 'tpope/vim-rails'

" NERD tree allows you to explore your filesystem and to open files and directories
Plugin 'scrooloose/nerdtree.git'
let NERDTreeDirArrows=0

" wisely add 'end in ruby, endfunction/endif/more in vim script,  There's also
" Bourne shell, VB (don't ask), C/C++ preprocessor, and Lua support
Plugin 'tpope/vim-endwise'

" ghetto HTML/XML mappings
Plugin 'tpope/vim-ragtag'

" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML
" tags, and more
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required!
