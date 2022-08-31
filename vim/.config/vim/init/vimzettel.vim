"
" ~/.config/vim/init/vimzettel.vim
"
" Docs:
" -----
"  :help vim-zettel
"
" References:
" ----------
" [1]
" https://www.reddit.com/r/Zettelkasten/comments/fidaum/vimzettel_an_addon_for_the_vimwiki_addon_for_vim/
" [2] https://github.com/michal-h21/vim-zettel
" Uses default markdown instead of vimwiki markdown
let g:nv_search_paths = ['~/Library/notas/catolicas', '~/Library/notas/informatics']
let g:zettel_format = '%Y%m%d%H%M%S'    " format of the zettel notes

"  Keymaps [1]:
"  " Create a new note
"  " You can create a new note with the selected text as the note title by typing `z` 
"  
"  " xnoremap z :call zettel#vimwiki#zettel_new_selected()<CR>
"  xmap z <Plug>ZettelNewSelectedMap
"  
"  " Linking to an existent note 
"  " This runs the silver searcher in a new window split and dynamically shows
"  " search results as you type. Hitting enter on one of its search result lines
"  " inserts a link to that file in your note.
"  
"  " inoremap [[ [[<esc>:ZettelSearch<CR>
"  imap <silent> [[ [[<esc><Plug>ZettelSearchMap
"  
"  " Create backlinks 
"  " Copy note title and place it on the buffer for backlinking
"  " If you want to insert a link to the current note in another note you can type `T` 
"  " in normal mode to copy a formatted wiki link with the current note title as the 
"  " link text that you can paste in other notes.
"  
"  nmap T <Plug>ZettelYankNameMap
"  
"  " Create a filename into a link. 
"  " And you can turn a file name under the cursor in your note into a link 
"  " to the file with `gZ`.
"  
"  nmap gZ <Plug>ZettelReplaceFileWithLink

