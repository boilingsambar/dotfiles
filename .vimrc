set nocompatible

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
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

set guifont=Liberation\ Mono\ 9
"set guifont=Liberation\ Mono\ Bold\ 9
"set guifont=Inconsolata\ Medium\ 11
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

set pastetoggle=<F11>

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

"let g:syntastic_<filetype>_checkers=['<checker-name>']
"let g:syntastic_python_checkers=['pylint']

"Some filetypes, like PHP, have style checkers as well as syntax checkers. 
"These can be chained together like this:
"let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
"This is telling syntastic to run the php checker first, and if no errors are
"found, run phpcs, and then phpmd.

"set laststatus=4
"set cmdheight=2
"let b:did_indent = 1
"let loaded_matchparen = 1
