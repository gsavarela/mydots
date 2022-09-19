"
" ~/.config/vim/init/custom.vim
"
set background=dark
colo gruvbox

" Citation----------------------------------------------------------------------------------

let g:citation_vim_bibtex_file='~/Library/notas/informatics/info.bib'
let g:citation_vim_mode='bibtex' 
let g:citation_vim_cache_path='~/.cache/vim/bibtex'
let g:citation_vim_outer_prefix='['
let g:citation_vim_inner_prefix='@'
let g:citation_vim_suffix=']'

" Unite leader
nmap <leader>u [unite]
nnoremap [unite] <nop>
" Insert citation
nnoremap <silent>[unite]c       :<C-u>Unite -buffer-name=citation-start-insert -default-action=append      citation/key<cr>
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
