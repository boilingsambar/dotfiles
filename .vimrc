set mouse=a
set ruler
set number
set hidden

set guioptions -=m
set guioptions -=T
set nocompatible
set backspace=indent,eol,start
set showcmd
set wildmenu
set hlsearch
set incsearch
set ignorecase
set smartcase
set nowrap
set history=1000
set undolevels=1000

set nostartofline
set confirm

set guifont=Liberation\ Mono\ Bold\ 9
syntax on
set background=light
colorscheme solarized

set colorcolumn=80
"highlight ColorColumn ctermbg=magenta
"call matchadd('ColorColumn', '\%79v', 100)

inoremap jj <Esc>
inoremap fj <Esc>
inoremap jf <Esc>

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

filetype plugin indent on
autocmd BufRead,BufNewFile *.html filetype indent off

setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2

set shiftround
set autoindent
set copyindent
set smarttab

set cmdheight=2
set pastetoggle=<F11>

"set laststatus=4
"let b:did_indent = 1 <-- Add to ~/.vim/indent/html.vim
"let loaded_matchparen = 1
