set nocompatible

source $HOME/.config/nvim/vim-plug/plugins.vim

lua << EOF
require'lspconfig'.pyright.setup{}
EOF
