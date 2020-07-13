" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

let $MYVIMRC='./.vimrc'

call plug#begin('/opt/vim/plugin')
    " for python folding
	Plug 'https://github.com/tmhedberg/SimpylFold.git'
    " color scheme
	Plug 'https://github.com/jnurmine/Zenburn.git'
    " python syntax
	Plug 'https://github.com/vim-python/python-syntax.git'
call plug#end()

"Leader and localleader
let mapleader = ","
let maplocalleader = "\\"

"Keybinding
inoremap <leader><c-u> <esc>bve<S-u>ea
nnoremap - ddkP
nnoremap _ ddp
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" ea"<esc>hbi"<esc>lel
nnoremap <leader>' ea'<esc>hbi'<esc>lel
inoremap jk <esc>
nnoremap <leader>h <C-w><C-h>
nnoremap <leader>l <C-w><C-l>
nnoremap <leader>j <C-w><C-j>
nnoremap <leader>k <C-w><C-k>
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>

"Autocommands
augroup filetype_python
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
    autocmd FileType python nnoremap <buffer> <localleader>u <S-6>x
    autocmd FileType python nnoremap <buffer> <localleader>s zc

augroup END

"Operator-pending
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap an( :<c-u>normal! f(va(<cr>
onoremap al( :<c-u>normal! F)va(<cr>
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il{ :<c-u>normal! F}vi{<cr>
onoremap an{ :<c-u>normal! f{va{<cr>
onoremap al{ :<c-u>normal! F}va{<cr>


"Indentation
set autoindent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

"Search Options
set hlsearch
set incsearch
set ignorecase
set smartcase "make search case sensitive if uppercase are involved in search query


"Text Rendering Options
syntax enable
set wrap
set textwidth=72
set colorcolumn=72


"Editor Options
set number
set relativenumber
set title
syntax enable 
let python_highlight_all=1

"Miscellaneous Options
set backup
set swapfile
set splitbelow
set splitright
set clipboard=unnamed
set backupdir=/opt/vim/backup//
set directory=/opt/vim/swap//
set undodir=/opt/vim/undo//
