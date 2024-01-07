set nocompatible               " be iMproved

" ATTENTION!!
" I am not using Vundle anymore => switched to Plug

" Install vim-plug if we don't already have it
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

" SnipMate aims to provide support for textual snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
let g:snipMate = { 'snippet_version' : 1 }
" various snippets for various languages for SnipMate
Plug 'honza/vim-snippets'

" Command-T is a Vim plug-in that provides an extremely fast "fuzzy" mechanism for:
" - Opening files and buffers
" - Jumping to tags and help
" - Running commands, or previous searches and commands
" ATTENTION: needs vim compiled with ruby support AND compilation after installation
" please see https://github.com/wincent/command-t/blob/master/doc/command-t.txt
Plug 'wincent/command-t', {
    \   'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
    \ }

" vim-ruby
Plug 'vim-ruby/vim-ruby'

" vim-rails Ruby on Rails power tools
Plug 'tpope/vim-rails'

" The NERDTree is a file system explorer for the Vim editor
Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
let NERDTreeDirArrows=0

" File Manager for Neovim, Better than NERDTree.
"Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

" wisely add 'end in ruby, endfunction/endif/more in vim script,  There's also
" Bourne shell, VB (don't ask), C/C++ preprocessor, and Lua support
Plug 'tpope/vim-endwise'

" ghetto HTML/XML mappings
Plug 'tpope/vim-ragtag'

" Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML
" tags, and more
Plug 'tpope/vim-surround'

" Ctags generator for Vim 
Plug 'szw/vim-tags'

" WordPress.vim: Vim Plugin for WordPress Development
Plug 'dsawardekar/wordpress.vim'

" HTML5 + inline SVG omnicomplete function, indent and syntax for Vim. Based
" on the default htmlcomplete.vim.
Plug 'othree/html5.vim'

" This project is a fork of php.vim--Garvin which in turn is an update of the
" php.vim script which in turn is an updated version of the php.vim syntax
" file distributed with Vim. Whew!
Plug 'StanAngeloff/php.vim'

" Improved PHP omni-completion. Based on the default phpcomplete.vim.
Plug 'shawncplus/phpcomplete.vim'

" YouCompleteMe: a code-completion engine for Vim
" ATTENTION: needs compilation after installation
" please see https://github.com/ycm-core/YouCompleteMe
" or https://github.com/ycm-core/YouCompleteMe#full-installation-guide
" alternatively install package from AUR (on Arch)
" there is a compile step
" I had some problems with it
"Plug 'Valloric/YouCompleteMe'

" Elixir support for vim
Plug 'elixir-editors/vim-elixir'

" ALE (Asynchronous Lint Engine) is a plugin providing linting (syntax checking and semantic errors
Plug 'dense-analysis/ale'
let g:ale_fixers = { 'elixir': ['mix_format'] }

" Language Server
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" We have to remap <cr> to make it confirm completion.
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Elixir language server extension based on elixir-ls for coc.nvim
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}

" This plugin uses ElixirSense to give inside information about your elixir project in vim
Plug 'slashmili/alchemist.vim'

" Javascript support for vim
Plug 'pangloss/vim-javascript'

" All of your Plugins must be added before the following line
"call vundle#end()
call plug#end()

"
" Brief help
"
" Commands
" :PlugInstall [name ...] [#threads]	- installs plugins
" :PlugUpdate [name ...] [#threads]	- Install or update plugins
" :PlugClean[!]				- Remove unlisted plugins (bang version will clean without prompt)
" :PlugUpgrade				- Upgrade vim-plug itself
" :PlugStatus				- Check the status of plugins
" :PlugDiff				- Examine changes from the previous update and the pending changes
" :PlugSnapshot[!] [output path]	- Generate script for restoring the current snapshot of the plugins
"
" Plug options
" Option 		| Description
" branch/tag/commit 	| Branch/tag/commit of the repository to use
" rtp			| Subdirectory that contains Vim plugin
" dir			| Custom directory for the plugin
" as			| Use different name for the plugin
" do			| Post-update hook (string or funcref)
" on			| On-demand loading: Commands or <Plug>-mappings
" for			| On-demand loading: File types
" frozen		| Do not update unless explicitly specified
"
"
" Global options
" Flag 			| Default		| Description
" g:plug_threads	| 16			| Default number of threads to use
" g:plug_timeout	| 60			| Time limit of each task in seconds (Ruby & Python)
" g:plug_retries	| 2			| Number of retries in case of timeout (Ruby & Python)
" g:plug_shallow	| 1			| Use shallow clone
" g:plug_window		| vertical topleft new	| Command to open plug window
" g:plug_pwindow	| above 12new		| Command to open preview window in PlugDiff
" g:plug_url_format	| https://git::@github.com/%s.git	| printf format to build repo URL (Only applies to the subsequent Plug commands)
"
"
" Keybindings
"     D - PlugDiff
"     S - PlugStatus
"     R - Retry failed update or installation tasks
"     U - Update plugins in the selected range
"     q - Close the window
"     :PlugStatus
"         L - Load plugin
"     :PlugDiff
"         X - Revert the update
" 
