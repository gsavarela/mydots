" ~/.config/vim/init/plug.vim

" Plugins--------------------------------------------------------------------------------
call plug#begin('~/.config/vim/plugged')
    " Style
    Plug 'morhetz/gruvbox', {'commit': 'bf2885a95efdad7bd5e4794dd0213917770d79b7'}
    " Git integration
    Plug 'tpope/vim-fugitive', {'commit': 'b411b753f805b969cca856e2ae51fdbab49880df'}   
    " Markdown preview on browser
    Plug 'iamcco/markdown-preview.nvim', {'commit': '02cc3874738bc0f86e4b91f09b8a0ac88aef8e96'}  
    Plug 'junegunn/fzf', {'commit': '54d42e3f403cc419b8f11c625354d9d38381ebc8'}
    " Fuzzy find for vim
    Plug 'junegunn/fzf.vim', {'commit': 'c491d702b76c6b4918abb80be3cfb57d1b618ffa'} 

    Plug 'vimwiki/vimwiki', {'commit': '63af6e72dd3fa840bffb3ebcb8c96970c02e0913'}  " Creation of a hyperlinks on markdown files
    Plug 'michal-h21/vim-zettel', {'commit': 'a1b1cbf49b2d1a183fa0e5ec46422865ec00c611'}

    " Plug 'vim-pandoc/vim-pandoc', {'commit': '7dbda1c885c4c5dd3f865aa29e1b82167663aeec'}    " Make citations
    " Plug 'vim-pandoc/vim-pandoc-syntax', {'commit': '2baeabb9584bb948618806f22bc4cef5685535fc'}

call plug#end()

