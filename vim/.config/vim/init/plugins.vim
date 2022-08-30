" ~/.config/vim/init/plug.vim

" Plugins--------------------------------------------------------------------------------
call plug#begin('~/.config/vim/plugged')

    Plug 'morhetz/gruvbox'      " Style
    Plug 'tpope/vim-fugitive'   " Git integration
    Plug 'iamcco/markdown-preview.nvim' " Markdown preview on browser
    Plug 'junegunn/fzf',
    Plug 'junegunn/fzf.vim' " Fuzzy find for vim

    Plug 'vimwiki/vimwiki'  " Creation of a hyperlinks on markdown files
    " Plug 'michal-h21/vim-zettel'

    Plug 'vim-pandoc/vim-pandoc'    " Make citations
    Plug 'vim-pandoc/vim-pandoc-syntax'

call plug#end()

