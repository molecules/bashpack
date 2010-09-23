"Thanks to Bill Odom for introducing me to vim as well as many of the following settings
set nocompatible        " Use modern vim settings instead of vi. Set this early, since it affects so many other settings.
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]

"Global view options
colorscheme evening     " Color scheme
syntax enable           " Syntax highlighting
set number              " Show line numbers

set shortmess=atI       " Reduce messages like "Press ENTER or type command to continue"

"Indention/Tabs
set backspace=indent,eol,start      "Make backspaces delete sensibly
set autoindent          " Preserve current indent on new lines
set tabstop=4           " Indentation levels every four columns
set softtabstop=4       " Edit as if tabs are 4 characters wide.
set expandtab           " Use spaces for tabs and indention.
set smarttab            " Tab responds to qw( shiftwidth tabstop softtabstop )
set shiftwidth=4        " Indent/outdent by four columns
set shiftround          " Indent/outdent to nearest tabstop

"Wrapping
set nowrap                          " Don't wrap on long lines
set linebreak                       " Wrap at 'breakat' char vs display edge if 'wrap' is on.
set display=lastline                " Display partial last line if it is too big to fit in the window.
set whichwrap+=<,>,[,]

set matchpairs+=<:>     " Allow % to bounce between angles too

"Search settings
set incsearch           " Incremental searching (i.e. start searching while typing a search term)
set ignorecase          " Ignore case of search term
set smartcase           " Cease to ignore case when a capital is used
"set hlsearch           " highlight the last search pattern
"
set vb t_vb=            " no beeps or flashes
set backupdir-=.
set backupdir^=~/tmp,/tmp
set directory=~/tmp//,.
set selection=exclusive
set selectmode=mouse,key
set mousemodel=popup
set keymodel=startsel,stopsel
filetype plugin indent on

let mapleader =","

vmap <Tab> >gv
vmap <S-Tab> <gv
nnoremap <F7> gqap
nnoremap <S-F7> vipJ

"zz makes the screen center where the cursor is
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

"Underline
inoremap <C-U>= <Esc>kyyp^v$r=ja

"Open filename in a new tab
nnoremap gf <C-w>gf

"Perl Best Practice abbreviations (modified and added to)
"Inserting these abbreviations inserts the corresponding Perl statement. . .
iab phbp  #!/usr/bin/perl5.10.1use strict;use warnings;
iab pbmk  use Benchmark qw( cmpthese );cmpthese -10, {};^[O
iab pusc  use Smart::Comments '###';
iab putm  use Test::More qw( no_plan );
iab papp  ^[:r ~/workspace/Perl5/code_templates/application.pl
iab pmod  ^[:r ~/workspace/Perl5/code_templates/module.pm
iab ptest ^[:r ~/workspace/Perl5/code_templates/test.t
iab pself my $self = get_self(shift);
iab pscal = get_scalar(shift);
iab pdbg  $self->log->debug(

"Run test
map <Leader>t <Esc>:!prove -vl %<CR>
"#?? use Smart::Comments
map <Leader>c <Esc>:!perl -MSmart::Comments %<CR>

"Execute contents of file using perl
map <Leader>r <Esc>:!perl %<CR> 

"#?? run with ChartDirector
map <Leader>C <Esc>:!perl -I'~/workspace/Perl5/ChartDirector/lib' %<CR>


"Use PerlTidy by highlight text and then hit the equals key
autocmd Filetype perl :set equalprg=perltidy

"Templates to use
au bufnewfile *.pm 0r ~/workspace/Perl5/code_templates/module.pm
au bufnewfile *.pl 0r ~/workspace/Perl5/code_templates/application.pl
au bufnewfile *.t  0r ~/workspace/Perl5/code_templates/test.t

au BufNewFile,BufRead *.tt2 setf tt2
au BufNewFile,BufRead *.psgi setf perl

"from http://www.oreillynet.com/onlamp/blog/2006/08/make_your_vimrc_trivial_to_upd_1.html
",v brings up my .vimrc
",V reloads it -- making all changes active (have to save first)
map <Leader>v :tabnew ~/.vimrc<CR><C-W>_
map <silent> <Leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

set scrolloff=5 "Scroll to keep cursor at least 5 lines from top/bottom

"Moose highlighting, thanks to Geoff Reedy
let tlist_perl_settings='perl;c:constant;l:label;p:package;s:subroutine;a:attribute'

"Turn on filetype plugins (e.g. perl_synwrite)
filetype plugin on

"Remove all trailing whitespace by pressing F5
"http://vim.wikia.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"NOTES:
" Ctrl-o lets you do a "normal mode" command
" >aB will indent the current block
" Ctrl-x Ctrl-f (in insert mode) will insert filename matching characters before the cursor
"
"TODO: Write key binding for incrementing version.
"TODO: Write key binding for incrementing test number.
