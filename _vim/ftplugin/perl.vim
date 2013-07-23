" Vim filetype plugin file
" Language:      Perl
" Maintainer:    Andy Lester <andy@petdance.com>
" Homepage:      http://github.com/petdance/vim-perl
" Bugs/requests: http://github.com/petdance/vim-perl/issues
" Last Change:   2009-08-14

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

" Make sure the continuation lines below do not cause problems in
" compatibility mode.
let s:save_cpo = &cpo
set cpo-=C

setlocal formatoptions+=crq
setlocal keywordprg=perldoc\ -f

setlocal comments=:#
setlocal commentstring=#%s

setlocal tabstop=4           " Indentation levels every four columns
setlocal softtabstop=4       " Edit as if tabs are 4 characters wide.

" Change the browse dialog on Win32 to show mainly Perl-related files
if has("gui_win32")
    let b:browsefilter = "Perl Source Files (*.pl)\t*.pl\n" .
		       \ "Perl Modules (*.pm)\t*.pm\n" .
		       \ "Perl Documentation Files (*.pod)\t*.pod\n" .
		       \ "All Files (*.*)\t*.*\n"
endif

" Provided by Ned Konz <ned at bike-nomad dot com>
"---------------------------------------------
setlocal include=\\<\\(use\\\|require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.pm','')
setlocal define=[^A-Za-z_]

" The following line changes a global variable but is necessary to make
" gf and similar commands work.  The change to iskeyword was incorrect.
" Thanks to Andrew Pimlott for pointing out the problem. If this causes a
" problem for you, add an after/ftplugin/perl.vim file that contains
"       set isfname-=:
set isfname+=:

" Set this once, globally.
if !exists("perlpath")
    if executable("perl")
      try
	if &shellxquote != '"'
	    let perlpath = system('perl -e "print join(q/,/,@INC)"')
	else
	    let perlpath = system("perl -e 'print join(q/,/,@INC)'")
	endif
	let perlpath = substitute(perlpath,',.$',',,','')
      catch /E145:/
	let perlpath = ".,,"
      endtry
    else
	" If we can't call perl to get its path, just default to using the
	" current directory and the directory of the current file.
	let perlpath = ".,,"
    endif
endif

let &l:path=perlpath
"---------------------------------------------
 
"--------------------------------------------------
" Perl Specific mappings 
    
    " Run Perl6
    " nnoremap <Leader>, <Esc>:! perl6 %<CR>

    "Abbreviations
    " iab pself      my $self = shift;

    "Run test. -j9 uses up to 9 threads to run tests in parallel. -l uses lib/ -v is verbose
    nnoremap <Leader>t <Esc>:!clear;prove -vl %<CR>
    
    "Execute contents of file using perl
    nnoremap <Leader>r <Esc>:!clear;perl %<CR>
    
    "Run all of the tests for the current distribution
    nnoremap <Leader>a <Esc>:!dzil test<CR>
    
    "Install the current distribution
    nnoremap <Leader>A <Esc>:!dzil install<CR>

    "Run Devel::Cover
    nnoremap <Leader>o <Esc>:!dzil cover -outputdir coverage<CR>
    
    "Submit current state of files to the default (probably local) git repository
    nnoremap <Leader>g <Esc>:!vim dist.ini; git commit -a; git push backup<CR>
    
    "Git diff 
    nnoremap <Leader>d <Esc>:!git diff<CR>

    "use PerlTidy as formatter for Perl
    autocmd Filetype perl :set equalprg=perltidy
    
    "Run Perl::Critic on current code
    nnoremap <Leader>c <Esc>:compiler perlcritic<CR>:make<CR>:cope<CR>
    xnoremap + :w ! ~/workspace/Perl5/GBrowseConfigStrict/lib/GBrowseConfigStrict.pm \| perl -c<CR>


    "Moose highlighting, thanks to Geoff Reedy
    let tlist_perl_settings='perl;c:constant;l:label;p:package;s:subroutine;a:attribute'

    "#?? run with ChartDirector
    "map <Leader>C <Esc>:!perl -I'~/workspace/Perl5/ChartDirector/lib' %<CR>

" Perl Specific 
"--------------------------------------------------


" Undo the stuff we changed.
let b:undo_ftplugin = "setlocal fo< com< cms< inc< inex< def< isf< kp<" .
	    \	      " | unlet! b:browsefilter"

" Restore the saved compatibility options.
let &cpo = s:save_cpo

function! RunFennecLine()
    let cur_line = line(".")
    exe "!FENNEC_TEST='" . cur_line . "' prove -v -I lib %"
endfunction
  
" Go to command mode, save the file, run the current test
:map <F8> <ESC>:w<cr>:call RunFennecLine()<cr>
:imap <F8> <ESC>:w<cr>:call RunFennecLine()<cr>
