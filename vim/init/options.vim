" BASIC CONFIG---------------------------------------------------
"
" ~/.config/vim/init/options.vim
"
" References: 
" ----------
"
" [1] https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/
"
"-----------------------------------------------------------------

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible              " be iMproved, required
filetype off                  " required

" Enable plugins and load plugin for the detected file type.
filetype plugin on  " Required by vimwiki

" Load an indent file for the detected file type.
filetype indent on 

" Turn syntax highlighting on.
syntax on " Required by vimwiki

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set autocomplete for commands
set wildmenu

" Set the commands to save in history default number is 20.
set history=1000

" Enter Portuguese accents
set encoding=utf-8

" Switch cursor
" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"Turn on spell checking by default.
set spelllang=en_us,pt_br
set spell
