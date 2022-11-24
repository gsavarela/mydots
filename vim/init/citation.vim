" Citation lets us cite from .bib and zotero dabases.
" It plays nice with vimwiki.
"
" References: 
" ----------
"
" [1] https://github.com/rafaqz/citation.vim
"
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
" Open citation under cursor
" nnoremap <silent>[unite]co :<C-u>Unite -input=<C-R><C-W> -default-action=start -force-immediately citation/file<cr>
" To view all citation information from a citation under the cursor:
nnoremap <silent>[unite]ci :<C-u>Unite -input=<C-R><C-W> -default-action=preview -force-immediately citation/combined<cr>
