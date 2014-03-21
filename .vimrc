set nocompatible

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

if has('mouse')
  set mouse=a
endif

set ruler
set number
set hidden
set guioptions-=m
set guioptions-=T
set backspace=indent,eol,start
set nojoinspaces
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
set shell=bash
set autochdir
let mapleader=","

set guifont=Inconsolata\ Medium\ 11
"set guifont=Liberation\ Mono\ 9
"set guifont=Liberation\ Mono\ Bold\ 9
"let g:solarized_bold=0
syntax on
set background=light
colorscheme solarized

set encoding=utf-8
"set list
"set listchars=tab:▸\ ,eol:◂

set colorcolumn=80
"highlight ColorColumn ctermbg=magenta
"call matchadd('ColorColumn', '\%79v', 100)

inoremap jj <Esc>
inoremap fj <Esc>
inoremap jf <Esc>

nnoremap j gj
nnoremap k gk

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal g`\"" |
    \ endif

autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4
" autocmd BufRead,BufNewFile *.html filetype indent off

set shiftround
set autoindent
set copyindent
set smarttab
set expandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4

set pastetoggle=<F11>
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Toggle spell checking on and off with `,s`
let mapleader = ","
nmap <silent> <leader>s :set spell!<CR>

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

"pressing ,(leader)+v opens .vimrc 
"nmap <leader>v :e $MYVIMRC<CR>

"let g:syntastic_<filetype>_checkers=['<checker-name>']
"let g:syntastic_python_checkers=['pylint']

"Some filetypes, like PHP, have style checkers as well as syntax checkers. 
"These can be chained together like this:
"let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
"This is telling syntastic to run the php checker first, and if no errors are
"found, run phpcs, and then phpmd.

let g:syntastic_javascript_checkers=['jshint', 'jslint']





"cd /
"set wildignore+=
"set laststatus=4
"set cmdheight=2
"let b:did_indent = 1
"let loaded_matchparen = 1
