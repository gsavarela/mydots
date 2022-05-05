"
" ~/.config/vim/init/custom.vim
"
set background=dark
colo gruvbox

" Notes----------------------------------------------------------------------------------
" This adds the `.md` suffix before searching a file with `gf`
" Useful for searching zettel notes.
autocmd BufRead,BufNewFile *.md set suffixesadd+=.md
