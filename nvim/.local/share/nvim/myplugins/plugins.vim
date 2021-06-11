" auto-install vim-plug
if empty(glob('$XDG_DATA_HOME/nvim/site/autoload'))
  silent !curl -fLo $XDG_DATA_HOME/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" call plug#begin('~/.config/nvim/autoload/plugged')
call plug#begin('$XDG_DATA_HOME/nvim/site/autoload/plugged')
	" Colorscheme
	Plug 'morhetz/gruvbox'
	
	"Derivative of powerline but lighter
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	
	" Integrates Git commands with vim functionalities
	Plug 'tpope/vim-fugitive'
	
	" Vim fuzzy finder	
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	
	" Allows markdown files preview
	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
	
	" Neovim language server
	Plug 'neovim/nvim-lspconfig'

call plug#end()
" Put your non-Plugin stuff after this line
" Colorscheme
set background=dark
colo gruvbox
let g:airline_theme='gruvbox'
