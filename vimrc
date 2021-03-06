" Useful resources:
"     http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide

" Call pathogen to install bundels before applying some settings.
call pathogen#infect()

" Use Unicode.
set encoding=utf-8

" Choose a colour scheme.
set t_Co=256
colorscheme paul-elflord

" Disable Ex mode to avoid unnecessary pain when hitting Q by mistake.
:map Q <Nop>

" Map leader to more accessible ,
:let mapleader = ","

" Map unused key sequence to escape.
inoremap jj <Esc>
inoremap JJ <Esc>

" Scrolling.
set sidescroll=1

" Window navigation shortcuts.
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>
" Buffer navigation shortcuts.
nmap <C-m> :bnext<CR>
nmap <C-n> :bprev<CR>

" Toggle tagbar.
nmap <F9> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1

" Toggle search highlighting.
"\set hlsearch <BAR> s/=expand("<cword>")/<cr> <BAR>
nmap <F3> :if &hlsearch <BAR>
        \set nohlsearch <BAR>
    \else <BAR>
        \set hlsearch <BAR>
    \endif <CR>

" Delete a buffer without closing its window.
nmap <Leader>bd :bn <Bar> :bd#<CR>

" Toggle line numbering and default to on.
nmap <F2> :set number! number?<CR>
set number

" Don't use an additional line to show line number on non-active windows.
set wmh=0

" Default preference is to not wrap text, but if we do, then don't break
" words.
set nowrap
set lbr

" Ignore case, but only if the search term doesn't contain capitals.
set ignorecase
set smartcase

" Put yanked (copied) text to system clipboard.
set clipboard+=unnamedplus

" Non-compatible with original vi, including non-emulation of bugs.
set nocompatible

" Use Python PEP8 tabs.
set tabstop=4
set shiftwidth=4
set softtabstop=4

set expandtab
"set smartindent
"set autoindent
"set smarttab

" Show a margin at column 80 on Python files.
au FileType python set colorcolumn=80

" Code folding.
set foldmethod=indent
set foldlevel=99

" Always display the airline status line.
set laststatus=2

" Task lists.
map <Leader>td <Plug>TaskList

" Revision history.
"map <Leader>u :GundoToggle<CR>

" Syntax highlighting and validation.
filetype on
filetype plugin indent on
syntax on

" Pep8 validation.
let g:pep8_map='<Leader>8'

" Tab completion.
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:superTabDefaultCompletionType="context"
"set completeopt=menuone,longest,preview

" File browsing using NERDTree.
map <F4> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '__pycache']
let g:NERDTreeWinSize=36

" Buffer viewing.
map <F5> :MBEToggle<CR>

" Refactoring and goto definition.
"map <Leader>j :RopeGotoDefinition<CR>
"map <Leader>r :RopeRename<CR>

" Locate the ack-grep command and use it to do fuzzy searches.
"let g:ackprg="ack-grep -H --nocolor --nogroup --column"
"nmap <Leader>f <Esc>:Ack!

" Partially hide the Windows line termination char (\\r).  
match Ignore /\r$/

" Python navigation stuff.
"python << EOF
"import os
"import sys
"import vim
" Add virtualenv's site-packages to vim path.
"if 'VIRTUAL_ENV' in os.environ:
"	project_base_dir = os.environ['VIRTUAL_ENV']
"	sys.path.insert(0, project_base_dir)
"	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"	execfile(activate_this, dict(__file__=activate_this))

" Jump to filename using 'gf'
"for p in sys.path:
"    if os.path.isdir(p):
"        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
"EOF

" Strip trailing white space.
fun! TrimWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfun

command! TrimWhitespace call TrimWhitespace()
:noremap <Leader>w :call TrimWhitespace()<CR>

" Disabled automatic whitespace trimming for now while working with files that
" contain lots of tailing white space - causes lots of changes when committing
" to source control.
"autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call TrimWhitespace()

" Persistent undo - an undo directory MUST exist for undo to work.
call system('mkdir ' . '~/.vim-undo')
set undodir=~/.vim-undo
set undofile
set undolevels=1000
set undoreload=10000

