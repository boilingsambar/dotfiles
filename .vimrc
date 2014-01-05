set guifont=Liberation_Mono:h9:b:cANSI
set guioptions -=m
set guioptions -=T
set nocompatible
set backspace=indent,eol,start
set history=50
set showcmd
set incsearch

if has('mouse')
  set mouse=a
endif

set number
set ruler

set hidden

syntax enable
set background=light
colorscheme solarized

set colorcolumn=80

inoremap jj <Esc>
inoremap fj <Esc>
inoremap jf <Esc>

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

filetype plugin indent on

setlocal tabstop=4
setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal shiftround
setlocal autoindent

"let loaded_matchparen = 1
"highlight ColorColumn ctermbg=magenta
"call matchadd('ColorColumn', '\%79v', 100)
