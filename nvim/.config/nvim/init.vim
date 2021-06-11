set nocompatible

" source $XDG_CONFIG_HOME/nvim/vim-plug/plugins.vim
" source $XDG_CONFIG_HOME/nvim/vim-plug/notes.vim
source $XDG_DATA_HOME/nvim/myplugins/notes.vim
source $XDG_DATA_HOME/nvim/myplugins/plugins.vim

lua << EOF
	require'lspconfig'.pyright.setup{}
EOF
