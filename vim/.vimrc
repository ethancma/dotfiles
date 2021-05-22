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

" Spacing
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set autoindent
set backspace=indent,eol,start

" Split Screens
set splitright
set splitbelow

" Searching
set incsearch
set ignorecase

" Miscellaneous
syntax on
set confirm             " Confirm before closing file
set showcmd
set showmatch           " Matching brackets/quotes/parenthesis
set laststatus=2
set noshowmode          " Disable default statusbar
set relativenumber
set noerrorbells        " Disable annoying sounds 
set mouse=a             " Enable mouse use
set wildignore+=.swp    

" Colors
set background=dark
colorscheme murphy

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'townk/vim-autoclose'

call plug#end()
