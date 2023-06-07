"
" ~/.config/vim/init/vimwiki.vim
"
" Plugins
" -------
" https://github.com/michal-h21/vimwiki-sync
"
" Uses default markdown instead of vimwiki markdown
let g:vimwiki_list = [ 
    \    {'path': '~/Library/notas/telos', 'syntax': 'markdown', 'ext': '.md'},
    \    {'path': '~/Library/notas/informatics', 'syntax': 'markdown', 'ext': '.md'},
    \    {'path': '~/Library/notas/projetos', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_use_mouse = 1
let g:vimwiki_folding = 'expr'
let g:vimwiki_auto_chdir = 1

" Syncronization
let g:vimwiki_sync_branch = "main"
let g:vimwiki_sync_commit_message = 'Auto commit + push. %c'

" https://github.com/vimwiki/vimwiki/issues/461
" au FileType vimwiki set syntax=markdown.pandoc
" let g:vimwiki_global_ext= 0

