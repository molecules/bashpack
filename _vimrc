"Thanks to Bill Odom for introducing me to vim as well as most of the following settings
set nocompatible        " Use modern vim settings instead of maintaining backwards compatibility with vi. Set this early, since it affects so many other settings.
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]

"-----------------------------------------------------
" Global options

    colorscheme evening     " Color scheme
    syntax enable           " Syntax highlighting
    set number              " Show line numbers
    set shortmess=atI       " Reduce messages like "Press ENTER or type command to continue"
    set vb t_vb=            " no beeps or flashes
    set backupdir-=.
    set backupdir^=~/tmp,/tmp
    set directory=~/tmp//,.
    set selection=exclusive
    set selectmode=mouse,key
    set mousemodel=popup
    set keymodel=startsel,stopsel
    filetype plugin indent on
    
    let mapleader =","      "This sets what <Leader> represents

    "from http://www.oreillynet.com/onlamp/blog/2006/08/make_your_vimrc_trivial_to_upd_1.html
    ",v brings up my .vimrc
    ",V reloads it -- making all changes active (have to save first)
    nnoremap <Leader>v :tabnew ~/.vimrc<CR><C-W>_
    nnoremap <silent> <Leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

    "Open filename in a new tab
    nnoremap gf <C-w>gf

" Global options
"-----------------------------------------------------

"-----------------------------------------------------
" Indention/Tabs
"
    set backspace=indent,eol,start      "Make backspaces delete sensibly
    set autoindent          " Preserve current indent on new lines
    set tabstop=4           " Indentation levels every four columns
    set softtabstop=4       " Edit as if tabs are 4 characters wide.
    set expandtab           " Use spaces for tabs and indention.
    set smarttab            " Tab responds to: shiftwidth tabstop softtabstop
    set shiftwidth=4        " Indent/outdent by four columns
    set shiftround          " Indent/outdent to nearest tabstop
    set paste               " Don't indent when pasting (removes "stair step" effect when pasting)
    
    " Indent/unindent paragraphs using tab while still highlighted
    vnoremap <Tab> >gv
    vnoremap <S-Tab> <gv

" Indention/Tabs
"-----------------------------------------------------

"-----------------------------------------------------
" Wrapping

    set nowrap               " Don't wrap on long lines
    set textwidth=78         " Set line width to be 78 characters
    set linebreak            " Wrap at 'breakat' char vs display edge if 'wrap' is on.
    set display=lastline     " Display partial last line if it is too big to fit in the window.
    set whichwrap+=<,>,[,]   " ????
    
    " Toggle wrapping with <Leader>w and display whether set to 'wrap' or 'nowrap'
    nnoremap <Leader>w <Esc>:set invwrap<Bar>set wrap?<CR>

" Wrapping
"-----------------------------------------------------


"-----------------------------------------------------
" Search

    set incsearch           " Incremental searching (i.e. start searching while typing a search term)
    set ignorecase          " Ignore case of search term
    set smartcase           " Cease to ignore case when a capital is used
    set hlsearch            " highlight the last search pattern
    set matchpairs+=<:>     " Allow % to bounce between angles too

    " Clear search highlighting
    nnoremap <C-L> :nohlsearch<CR><C-L>

" Search
"-----------------------------------------------------

"-----------------------------------------------------
" Formatting/Reformatting

    " F7 reformats paragraph
    " Shift-F7 reduces paragraph to a single line
    nnoremap <F7>   gqap
    nnoremap <S-F7> vipJ

    "Remove all trailing whitespace by pressing F5 (http://vim.wikia.com/wiki/Remove_unwanted_spaces#Automatically_removing_all_trailing_whitespace)
    nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

    "Underline
    "inoremap <C-U>= <Esc>kyyp^v$r=ja

" Formatting/Reformatting
"-----------------------------------------------------

"-----------------------------------------------
" MOVEMENT

    set virtualedit=block   "Allow moving beyond the end of a line
    set scrolloff=5         "Scroll to keep cursor at least 5 lines from top/bottom
    
    "zz makes the screen center where the cursor is
    nnoremap n nzz
    nnoremap N Nzz
    nnoremap * *zz
    nnoremap # #zz
    nnoremap g* g*zz
    nnoremap g# g#zz
    
    
    " Up/down arrows move by display lines instead of physical lines
    " (great for soft-wrapped text)
    nnoremap <Up>   gk
    nnoremap <Down> gj
    
    " Control+Up/Down move lines & selections up and down.
    " (Based on http://vim.wikia.com/wiki/VimTip646)
    " 
    " Define maps for Normal and Visual modes, then re-use
    " them for Insert and Select modes. (note lack of 'nore')
    " 
    nnoremap <silent> <C-J>  :move -2<CR>
    nnoremap <silent> <C-K>  :move +<CR>
    xnoremap <silent> <C-J>  :move '<-2<CR>gv
    xnoremap <silent> <C-K>  :move '>+<CR>gv
    imap     <silent> <C-J>  <C-O><C-J>
    imap     <silent> <C-K>  <C-O><C-K>
    smap     <silent> <C-J>  <C-G><C-J><C-G>
    smap     <silent> <C-K>  <C-G><C-K><C-G>

"
" Movement
"--------------------------------------------------

"--------------------------------------------------
" Perl Specific 

    "Run test
    nnoremap <Leader>t <Esc>:!prove -vl %<CR>
    
    "Run using Smart::Comments
    nnoremap <Leader>c <Esc>:!perl -MSmart::Comments %<CR>
    
    "Execute contents of file using perl
    nnoremap <Leader>r <Esc>:!perl %<CR>
    
    "Run all of the tests for the current distribution
    nnoremap <Leader>a <Esc>:!dzil test<CR>
    
    "Submit current state of files to the default (probably local) git repository
    nnoremap <Leader>g <Esc>:!git commit -a<CR>
    
    "Enter insert mode, insert a semicolon, and place the cursor before it
    nnoremap ; <Esc>a;<Left>
    
    "Use PerlTidy by highlight text and then hit the equals key
    autocmd Filetype perl :set equalprg=perltidy
    
    "Templates to use
    au BufNewFile *.pm 0r ~/bashpack/templates/module.pm
    au BufNewFile *.pl 0r ~/bashpack/templates/application.pl
    au BufNewFile *.t  0r ~/bashpack/templates/test.t

    au BufNewFile,BufRead *.psgi setf perl
    au BufNewFile,BufRead *.tt2 setf tt2

    "Moose highlighting, thanks to Geoff Reedy
    let tlist_perl_settings='perl;c:constant;l:label;p:package;s:subroutine;a:attribute'

    "#?? run with ChartDirector
    "map <Leader>C <Esc>:!perl -I'~/workspace/Perl5/ChartDirector/lib' %<CR>

" Perl Specific 
"--------------------------------------------------

"NOTES:
" :TOhtml will export the current file as an html file.
" Ctrl-o lets you do a "normal mode" command
" >aB will indent the current block
" Ctrl-x Ctrl-f (in insert mode) will insert filename matching characters before the cursor
