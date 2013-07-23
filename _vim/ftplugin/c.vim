"Compile a C file to a.out, run a.out to see the output, and then delete it
nnoremap <Leader>r <Esc>:!cc %; ./a.out; rm a.out<CR>

" Just compile a C file to check for syntax errors
nnoremap <Leader>c <Esc>:!cc -fsyntax-only %;<CR>

setlocal tabstop=4           " Indentation levels every four columns
setlocal softtabstop=4       " Edit as if tabs are 4 characters wide.

