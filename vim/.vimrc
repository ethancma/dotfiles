""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SETUP

let vim_plug_just_installed = 0
let vim_plug_path = expand('~/.vim/autoload/plug.vim')
if !filereadable(vim_plug_path)
    echo "Installing Vim-Plug"
    echo ""
    silent !mkdir -p ~/.vim/autoload
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let vim_plug_just_installed = 1
endif

if vim_plug_just_installed
    :execute 'source '.fnameescape(vim_plug_path)
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
Plug 'vim-python/python-syntax'
Plug 'junegunn/goyo.vim'

call plug#end()

" lightline
set laststatus=2
set noshowmode
