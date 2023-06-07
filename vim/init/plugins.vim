" ~/.config/vim/init/plug.vim

" Plugins--------------------------------------------------------------------------------
call plug#begin('~/.config/vim/plugged')
    " Style
    " Color schemes
    Plug 'morhetz/gruvbox', {'commit': 'bf2885a95efdad7bd5e4794dd0213917770d79b7'}
    Plug 'vihu/melange', {'commit': 'c0b83c136246ab56b24414f8ee8a6e633c8b9a92'} "Warm colors brown theme.
    Plug 'dracula/vim', {'as': 'dracula', 'commit': 'eb577d47b0cfc9191bf04c414b4042d5f1a980f8'} "Dark theme
    Plug 'nordtheme/vim', {'as': 'nord', 'commit': '684c345b8a8bf5e37919c38be6edaaa9356dbf4b'} "Boreal theme
    Plug 'ghifarit53/tokyonight-vim', {'as': 'tokyonight', 'commit': '4e82e0f0452a6ce8f387828ec71013015515035a'} "Dark background and bright foreground
    Plug 'rose-pine/vim', {'as': 'rose-pine', 'commit': 'd149980cfa5cdec487df23b2e9963c3256f3a9f3:'} "Dark background and pastel rose
    Plug 'catppuccin/vim', { 'as': 'catppuccin', 'commit': 'cf186cffa9b3b896b03e94247ac4b56994a09e34' }

    "Status bar
    Plug 'vim-airline/vim-airline', {'commit': '038e3a6ca59f11b3bb6a94087c1792322d1a1d5c'}
    Plug 'vim-airline/vim-airline-themes', {'commit': 'dd81554c2231e438f6d0e8056ea38fd0e80ac02a'}
    " Git integration: Ugly duck.
    Plug 'tpope/vim-fugitive', {'commit': 'b411b753f805b969cca856e2ae51fdbab49880df'}   
    " Markdown preview on browser
    Plug 'iamcco/markdown-preview.nvim', {'commit': '02cc3874738bc0f86e4b91f09b8a0ac88aef8e96'}  
    Plug 'junegunn/fzf', {'commit': '54d42e3f403cc419b8f11c625354d9d38381ebc8'}
    " Fuzzy find for vim
    Plug 'junegunn/fzf.vim', {'commit': 'c491d702b76c6b4918abb80be3cfb57d1b618ffa'} 

    Plug 'vimwiki/vimwiki', {'commit': '63af6e72dd3fa840bffb3ebcb8c96970c02e0913'}  " Creation of a hyperlinks on markdown files
    Plug 'michal-h21/vim-zettel', {'commit': 'a1b1cbf49b2d1a183fa0e5ec46422865ec00c611'}
    Plug 'michal-h21/vimwiki-sync', {'commit': '0229847c0f6a66d00d7052492dd06375512e07cb'}
    " Persist notes on a repo.
    " Use citation.vim for handling citations.
    Plug 'Shougo/unite.vim' , {'commit': 'b08814362624ded3b462addba4711647879ca308'}
    Plug 'rafaqz/citation.vim', {'commit': '51ded63532956403c32dce8e854baf36ea907254'}
    "
    " Streamline pandoc compilation
    " Plug 'vim-pandoc/vim-pandoc', {'commit': '7dbda1c885c4c5dd3f865aa29e1b82167663aeec'}    " Make citations
    " Plug 'vim-pandoc/vim-pandoc-syntax', {'commit': '2baeabb9584bb948618806f22bc4cef5685535fc'}
call plug#end()

" Very minimal plugin-based configurations
set background=dark
set termguicolors
colorscheme catppuccin_macchiato
