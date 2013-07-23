"Thanks to Bill Odom for introducing me to vim as well as most of the following settings

"-----------------------------------------------------
" Use modern vim settings, which requires ignoring backwards compatibility with vi. "   Set this early, since it affects so many other settings.
    set nocompatible        
"-----------------------------------------------------

"-----------------------------------------------------
"Set what <Leader> represents
    let mapleader =","      
"-----------------------------------------------------

"-----------------------------------------------------
" Status Bar 
    set statusline=%F%m%r%h%w\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
    set laststatus=2        " on by default
    " Turn status bar on/off
    "nnoremap <silent> <Leader>s <Esc>:set laststatus=2<CR>
    "nnoremap <silent> <Leader>S <Esc>:set laststatus=0<CR>
"-----------------------------------------------------


"-----------------------------------------------------
" Global options

    colorscheme evening     " Color scheme
    syntax enable           " Syntax highlighting

    set shortmess=atI       " Reduce messages like "Press ENTER to continue"
    set vb t_vb=            " no beeps or flashes

    set backupdir-=.
    set backupdir^=~/tmp,/tmp
    set directory=~/tmp//,.

    " Set up persistent undo
    set undofile                " Save undo's after file closes
    set undodir=/home/bottomsc/.vim/undo " where to save undo histories
    set undolevels=1000         " How many undos
    set undoreload=10000        " number of lines to save for undo


    set selection=exclusive
    set selectmode=mouse,key
    set mousemodel=popup
    set keymodel=startsel,stopsel
    set clipboard=unnamed



"-----------------------------------------------------


"-----------------------------------------------------
" Line numbers
"
    " Show line numbers by default
    set number              

    " mute their color
    hi LineNr ctermfg=darkgrey ctermbg=black   

    " Toggle line numbers
    nnoremap <Leader>n <Esc>:set invnumber<CR>
"-----------------------------------------------------


    "from http://www.oreillynet.com/onlamp/blog/2006/08/make_your_vimrc_trivial_to_upd_1.html
    ",v brings up my .vimrc
    ",V reloads it -- making all changes active (have to save first)
    nnoremap <Leader>v :tabnew ~/.vim/ftplugin/perl.vim<CR>:tabnew ~/.vim/ftplugin/c.vim<CR>:tabnew ~/.vimrc<CR>
    nnoremap <silent> <Leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

    "start tk timer
    nnoremap <Leader>k <Esc>:! clear; tk start 

    "stop  tk timer
    nnoremap <Leader>K <Esc>:! clear; tk stop<CR>

    "Open filename in a new tab
    nnoremap gf <C-w>gf

    " Print current file
    nnoremap <Leader>p <Esc>:! lpr %<CR>
  
" Incrementing/decrementing numbers (and letters)
    " Use + - to increment/decrement
    nnoremap - <C-X>
    nnoremap + <C-A>

    " Allow alphabetical increment/decrement with <C-A> or <C-X>
    set nrformats+=alpha
    
    " Toggle on/off set list
    nnoremap <Leader>l <Esc>:set invlist<CR>

    " Toggle on/off spell checking
    nnoremap <Leader>s <Esc>:setlocal spell spelllang=en_us<CR>
    nnoremap <Leader>S <Esc>:setlocal nospell<CR>

    highlight clear SpellBad
    highlight SpellBad term=standout ctermfg=1 term=bold cterm=underline

" Global options
"-----------------------------------------------------

"-----------------------------------------------------
" Indention/Tabs
"

    filetype plugin indent on

    set backspace=indent,eol,start      "Make backspaces delete sensibly
    set autoindent          " Preserve current indent on new lines
    set expandtab           " Use spaces for tabs and indention.
    set smarttab            " Tab responds to: shiftwidth tabstop softtabstop
    set shiftwidth=4        " Indent/outdent by X columns
    set shiftround          " Indent/outdent to nearest tabstop
    set tabstop=10
    
    " Indent/unindent paragraphs using tab while still highlighted
    vnoremap <Tab> >gv
    vnoremap <S-Tab> <gv

    " Toggle on/off indent when pasting (nopaste prevents "stair step" effect)
    nnoremap <Leader>P <Esc>:set invpaste<CR>
    

" Indention/Tabs
"-----------------------------------------------------

"-----------------------------------------------------
" Wrapping

    set textwidth=20000000   " Set line width (in characters)
    set cpoptions+=n         " Wrapped text uses line number columns
    nnoremap <Leader>2 <Esc>:set textwidth=2000<CR>
    nnoremap <Leader>7 <Esc>:set textwidth=78<CR>
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

    " Hit <Ctrl-L> to temporarily clear search highlighting
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
    inoremap <C-U>= <Esc>kyyp^v$r=ja
    nnoremap <Leader>u <Esc>kyyp^v$r=j

    "Underline
    inoremap <C-U>- <Esc>kyyp^v$r-ja

" Formatting/Reformatting
"-----------------------------------------------------

"-----------------------------------------------
" MOVEMENT

    set virtualedit=block   "Allow moving beyond the end of a line
    set scrolloff=5        "Scroll to keep cursor at least 5 lines from top/bottom
    
    "zz makes the screen center where the cursor is
    " n/N = next/previous match
    " */# = next/previous word like that under the cursor
    " g*/g#  = ???
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

    " Move page up/down, but staying at the end of the line
    nnoremap <Leader>f <C-f>$
    nnoremap <Leader>b <C-b>$

"
" Movement
"--------------------------------------------------

"--------------------------------------------------
" Templates
"
    "Perl
    au BufNewFile *.pm 0r ~/bashpack/templates/Module.pm
    au BufNewFile *.pl 0r ~/bashpack/templates/application.pl
    au BufNewFile *.t  0r ~/bashpack/templates/test.t

    au BufNewFile,BufRead *.t setf perl
    au BufNewFile,BufRead *.psgi setf perl
    au BufNewFile,BufRead *.tt2 setf tt2

    " C
    au BufNewFile *.c 0r ~/bashpack/templates/program.c
    au BufNewFile,BufRead *.c setf c

    " BSUB
    au BufNewFile *.bsub 0r ~/bashpack/templates/bsub
"
" Templates
"--------------------------------------------------

"hi Comment ctermfg=grey ctermbg=black
hi Comment ctermfg=grey ctermbg=black

" Export as HTML
" Type :TOhtml
let html_use_css = 1        " Use CSS for HTML file (makes it smaller)


"--------------------------------------------------
" Filetypes
"

nnoremap <Leader>fs :set filetype=spider<CR>
nnoremap <Leader>fp :set filetype=perl<CR>

"
"
"--------------------------------------------------

"NOTES:
"Create  by typing Ctrl-V Ctrl-M
" :TOhtml will export the current file as an html file.
" Ctrl-o lets you do a "normal mode" command
" >aB will indent the current block
" Ctrl-x Ctrl-f (in insert mode) will insert filename matching characters before the cursor
" :tabm n   moves the current tabbed window to position 'n', where 0 is leftmost.
" Register notes: system clipboards: "*
"                                    "+
"                 current filename:  "%
"               alternate filename:  "#  (the previous filename????)
"               last "small" delete: "-
"               last inserted text:  ".
"               last search:         "/
"               last Ex command:     ":
"               expression:          "=
"               black hole           "_
"               view registers       :reg
"       copy to OS clipboard         "*yy
"       paste from the OS clipboard  "*p
"
"       link unnamed register and OS clipboard      :set clipboard=unnamed
"
" :split to create horizontal split
" CTRL-w 20- will reduce the size of the current split window by 20 lines
" To turn on horizontal scrolling
"   set scrollopt=hor
"   set scrollbind (in each window)
" To turn off vertical scrolling
"   set nodiff
"From http://www.moolenaar.net/habits.html
"   Use [{ to jump back to the "{" at the start of the current code block.
"   Use gd to jump from the use of a variable to its local declaration.
"
"Fancy status line:
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]

" Ctrl-L will redraw the current buffer
