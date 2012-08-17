
" Window navigation.
map <c-j> <c-w>j
map <c-k> <c-w>k

" Don't show current line number on non-active windows
set wmh=0


" Call pathogen to install bundels before applying some settings.
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


" Code folding
set foldmethod=indent
set foldlevel=99

" Task lists
map <leader>td <Plug>TaskList

" Revision history
map <leader>u :GundoToggle<CR>

" Syntax highlighting and validation
syntax on
filetype on
filetype plugin indent on
let g:pyflakes_use_quickfix = 0

" Pep8 validation.
let g:pep8_map='<leader>8'

" Tab completion
au FileType python set omnifunc=pythoncomplete#Complete
let g:superTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" File browser
map <leader>n :NERDTreeToggle<CR>

" Refactoring and goto definition
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

