
" Choose a colour scheme.
colorscheme evening

" Window navigation.
map <c-j> <c-w>j
map <c-k> <c-w>k

" Don't use an additional line to show line number on non-active windows.
set wmh=0

" Put yanked (copied) text to system clipboard.
set clipboard=unnamed

" Non-compatible with original vi, including non-emulation of bugs.
set nocompatible

" Use Python PEP8 tabs.
set tabstop=4
set shiftwidth=4
set softtabstop=4

set smartindent
"set autoindent
set expandtab
"set smarttab

" See following url for details about config below:
"     http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide

" Call pathogen to install bundels before applying some settings.
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


" Code folding.
set foldmethod=indent
set foldlevel=99

" Task lists.
map <leader>td <Plug>TaskList

" Revision history.
map <leader>u :GundoToggle<CR>

" Syntax highlighting and validation.
syntax on
filetype on
filetype plugin indent on
let g:pyflakes_use_quickfix = 0

" Pep8 validation.
let g:pep8_map='<leader>8'

" Tab completion.
au FileType python set omnifunc=pythoncomplete#Complete
let g:superTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" File browsing using NERDTree.
map <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

" Refactoring and goto definition.
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

" Search using ack-grep for fuzziness.
nmap <leader>f <Esc>:Ack!

"Add the virtualenv's site-packages to vim path.
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
	project_base_dir = os.environ['VIRTUAL_ENV']
	sys.path.insert(0, project_base_dir)
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this))
EOF

