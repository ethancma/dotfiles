syntax on
set relativenumber

set noerrorbells
set tabstop=4
set shiftwidth=4
set smartindent
set incsearch
set mouse=a
set wildignore+=.swp
colorscheme murphy

set autoindent
set confirm
set showcmd

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim'
Plug 'itchyny/lightline.vim'

call plug#end()

" lightline
set laststatus=2
set noshowmode
