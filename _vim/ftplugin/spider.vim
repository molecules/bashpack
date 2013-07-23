" Vim filetype plugin file
" Language:      Spider
" Maintainer:    Christopher Bottoms <molecules@cpan.org>
" Homepage:      
" Bugs/requests: 
" Last Change:   2013-07-02

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

" Make sure the continuation lines below do not cause problems in
" compatibility mode.
let s:save_cpo = &cpo
set cpo-=C

setlocal formatoptions+=crq

setlocal tabstop=4           " Indentation levels every four columns
setlocal softtabstop=4       " Edit as if tabs are 4 characters wide.

setlocal textwidth=1000      " Set number of characters allowed before starting a new line

"---------------------------------------------

" Highlight numbers as numbers
hi link spiderNumber		Number
hi link spiderVariable		Identifier
hi link spiderCommand		Keyword
hi link spiderComment		Comment
hi link spiderFlow		PreProc

" Undo the stuff we changed.
let b:undo_ftplugin = "setlocal fo< com< cms< inc< inex< def< isf< kp<" .
	    \	      " | unlet! b:browsefilter"

" Restore the saved compatibility options.
let &cpo = s:save_cpo
