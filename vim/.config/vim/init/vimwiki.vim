"
" ~/.config/vim/init/vimwiki.vim
"
" Uses default markdown instead of vimwiki markdown
let g:vimwiki_list = [ 
    \    {'path': '~/Library/notas/catolicas', 'syntax': 'markdown', 'ext': '.md'},
    \    {'path': '~/Library/notas/informatics', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_use_mouse = 1
let g:vimwiki_folding = 'expr'
let g:vimwiki_auto_chdir = 1
