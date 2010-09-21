set nocompatible

"Perl Best Practices settings
set autoindent                      "Preserve current indent on new lines
"set textwidth=78                    "Wrap at this column
set wrap linebreak textwidth=0
set backspace=indent,eol,start      "Make backspaces delete sensibly
set matchpairs+=<:>                 "Allow % to bounce between angles too

"Thanks to Bill Odom for the following
set incsearch
set hlsearch
set ignorecase
set smartcase
set tabstop=4                       "Indentation levels every four columns
set softtabstop=4
set expandtab                       "Convert all tabs typed to spaces
set smarttab
set shiftwidth=4                    "Indent/outdent by four columns
set shiftround                      "Indent/outdent to nearest tabstop
set vb
set t_vb=
set whichwrap+=<,>,[,]
set backupdir-=.
set backupdir^=~/tmp,/tmp
set directory=~/tmp//,.
set selection=exclusive
set selectmode=mouse,key
set mousemodel=popup
set keymodel=startsel,stopsel
filetype plugin indent on

vmap <Tab> >gv
vmap <S-Tab> <gv
nnoremap <F7> gqap
nnoremap <S-F7> vipJ
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
inoremap <C-U>= <Esc>kyyp^v$r=ja

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

"Perl Hacks
"#10 Run tests from vim
map ,t <Esc>:!prove -vl %<CR>
"map ,t <Esc>:!prove --exec '~/perl5/perlbrew/bin/perl -vl' %<CR>
"#?? run file from vim
"map ,r <Esc>:!perl %<CR>
"#?? use Smart::Comments
map ,c <Esc>:!perl -MSmart::Comments %<CR>
"#?? single command rebuilds 
map ,r <Esc>:!perl %<CR>
"#?? run with ChartDirector
map ,C <Esc>:!perl -I'~/workspace/Perl5/ChartDirector/lib' %<CR>

"MY settings, some of them inspired by others' .vimrc files
syntax enable                       "Syntax highlighting
colorscheme evening                 "Color scheme
set number                          "Show line numbers
set noerrorbells

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
map ,v :tabnew ~/.vimrc<CR><C-W>_
map <silent> ,V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" single character insert: Hit space bar followed by replacement character
nmap <Space> i_<Esc>r
"Add empty line above with ALT-K, below with ALT-J.
"  from http://objectmix.com/editors/149867-vim-insert-blank-line-without-stay-normal-mode.html


"nnoremap - maO<Esc>`a 
"nnoremap + mao<Esc>`a

" Start scrolling the screen to keep cursor at least 5 lines from top/bottom
set scrolloff=5

"From http://newsgroups.derkeiler.com/Archive/Comp/comp.editors/2006-04/msg00097.html
"Movement keys in insert mode are the same, except for needing to hold down Ctrl
imap <C-h> <C-o>h
imap <C-j> <C-o>j
imap <C-k> <C-o>k
imap <C-l> <C-o>l

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
