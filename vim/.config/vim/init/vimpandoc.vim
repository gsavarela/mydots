"
" ~/.config/vim/init/vimpandoc.vim
"
"Notes----------------------------------------------------------------------------------
" This adds the `.md` suffix before searching a file with `gf`
" Useful for searching zettel notes.
" autocmd BufRead,BufNewFile *.md set suffixesadd+=.md
" autocmd BufNewFile,BufRead *.md set filetype=pandoc

" Disable folding of vim-pandoc plugin
" let g:pandoc#modules#disabled = ["folding"]

" Search for any bibliography on the current dir.
" https://github.com/vimwiki/vimwiki/issues/461
" let g:pandoc#biblio#sources = "gbc"
" let g:pandoc#completion#bib#mode='fallback'
" let g:pandoc#completion#bib#mode='citeproc'
" let g:pandoc#biblio#bibs = ['~/Library/notas/informatics/default.bib', '~/Library/notas/informatics/info.bib']
" let g:pandoc#biblio#bib#use_bibtool=1
" let g:pandoc#filetypes#handled = ["pandoc", "markdown"]


" let g:pandoc#biblio#sources = ["bcgyG"]
