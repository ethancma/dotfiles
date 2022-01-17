"""""""
" VIM "
"""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SETUP

filetype plugin on

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

source $HOME/dotfiles/vim/mappings.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings

" Spacing
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set so=3
set cmdheight=2
set expandtab
set smartindent
set autoindent
set backspace=indent,eol,start
set signcolumn=yes

" Linebreak / Wrapping
set wrap
set lbr
set tw=500

" Split Screens
set splitright
set splitbelow

" Searching
set incsearch
set smartcase
set ignorecase
set hlsearch

" Miscellaneous
syntax on
set confirm             " Confirm before closing file
set showcmd
set showmatch           " Matching brackets/quotes/parenthesis
set laststatus=2
set noshowmode          " Disable default statusbar
set number
set relativenumber
set mouse=a             " Enable mouse use
set wildignore+=.swp
set lazyredraw
set encoding=utf8
set title
set hidden
set updatetime=300

" Disable annoying sounds
set noerrorbells        " Disable annoying sounds 
set novisualbell
set t_vb=
set tm=500

" Backups / Files
set nobackup
set nowb
set noswapfile

" Colors
colorscheme monokai
hi CocErrorFloat ctermfg=124 ctermbg=245 guifg=#FF0000 guibg=#FF0000

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configurations

" Markdown
" let g:instant_markdown_slow = 1
let g:instant_markdown_mathjax = 1

" let g:vimsence_ignored_directories = 'ethanma'

" NERDTree
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', 'node_modules']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

" Coc Config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-python',
  \ 'coc-eslint', 
  \ 'coc-json', 
  \ ]

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'townk/vim-autoclose'
Plug 'crusoexia/vim-monokai'
Plug 'suan/vim-instant-markdown'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
" Plug 'vimsence/vimsence'
Plug 'airblade/vim-gitgutter'

call plug#end()
